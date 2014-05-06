Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AF5BD8AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 22:06:31 +0000 (UTC)
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09D0620341
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 22:06:31 +0000 (UTC)
Received: by mail-pd0-f170.google.com with SMTP id v10so107640pde.15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 May 2014 15:06:30 -0700 (PDT)
Message-ID: <53695CE3.5090005@linaro.org>
Date: Tue, 06 May 2014 15:06:27 -0700
From: John Stultz <john.stultz@linaro.org>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>, josh@joshtriplett.org
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org>
In-Reply-To: <20140506205052.GF5012@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 01:50 PM, Theodore Ts'o wrote:
> On Tue, May 06, 2014 at 01:33:37PM -0700, josh@joshtriplett.org wrote:
>> I don't think it's entirely trivial to make the kernel fine.  Two topics
>> that *do* make sense for Kernel Summit:
>>
>> - How do we fix existing ABIs while making it minimally painful to
>>   transition existing userspace to the new ABI?  Should we just
>>   introduce a replacement for every system call that includes a time_t
>>   and deprecate the old ones, or should we introduce some more
>>   systematic migration mechanism?
> It might be useful if someone were to do a bit of homework first.  How
> many system calls (and there will be some ioctl's too, but system
> calls will probably be the hard part) that are using a 32-bit time_t
> (including struct timeval and struct timespec) or clock_t?  Can
> someone produce a list so we know how many interfaces we're talking
> about here?

Sure. If its preferred I can try to get some mail on the list outlining
my and Thomas' proposals w/ various pros and cons to the list prior to
the discussion. And I can make a point to provide specific data on the #
of syscall and ioctl structures that embed time_t (or embed structures
which contain time_t), etc.


Briefly, my proposal (and forgive me for maybe letting my bias creep in
here a bit. I was hoping to work with Thomas to have a more neutral
presentation by Kernel Summit, so this summary is a little rough and
probably not completely fair to all sides) is to introduce a new ABI for
32bit architectures where time_t is defined as a long long. We could
continue supporting the existing ABI via a personality/compat interface.

Pros:
* This would allow applications to be updated by being recompiled,
letting the compiler provide warnings where time_ts are cast down to a
long, etc.
* This follows in the path that the BSDs have gone, which allows us to
leverage their work, where they have already ensured applications they
package are fixed.

Cons:
* Having yet another new compat layer, and all the various compat
structs just for the new time_t size.
* Distros wanting to support existing ABI would need to have compat
libraries as well (much as they do for i386 or x32 on x86_64) - Although
this extra cost helps motivate folks to migrate away from the "old" ABI,
so might not completely be negative.
* Of course, if we do introduce a new ABI w/ my proposal, there may be
other non-time_t related ABI changes folks would like to make on 32bit
systems. So there could be lots of "riders" to the change which could
make the transition more complex.


Thomas (at least as far as my understanding last we spoke) would prefer
not to introduce a whole new ABI, but to introduce new syscalls in
addition existing syscalls which would provide something like ktime_t
(u64 nanosecond value) as main time type. Eventually deprecating all the
syscalls that use time_t.

Pros:
* Various folks have wanted a u64 nanosecond interface as converting
back and forth from timespecs has overhead in userspace, so this solves
that issue as well.
* Avoids hard ABI break for slow transition.

Cons:
* There are lots of syscalls and ioctls that use time_t (sometimes
deeply embedded in structures) for things like timeouts, etc,  so
creating new syscalls for all of those will be substantial effort.
* We'd also have to generate the same syscalls on 64bit systems, where
it would be of minimal benefit.
* All applications would have to be manually converted from time_t
interfaces to the new u64 interfaces (not just a recompile)
* Auditing that all the interfaces have been replaced and getting
applications to move away from them would be more difficult.


And of course, there is the variant of my proposal which Peter already
raised, which is to preserve time_t as 32bits, but define it as a
unsigned long. Basically doing a "quiet" ABI break.

Pros:
* No size changes, no need for compat interfaces
* Kernel already considers time values prior to 1970 invalid, so we
could easily reuse them from the kernel side.

Cons:
* I worry this would lead to lots of subtle breakage in applications.
Its less easy to audit to see if things are fixed or not.
* Applications would still need to make changes if they want to continue
to support time values prior to 1970 (likely using 64bit values
internally anyway).
* Have to decide if actually change the ABI to an unsigned long or not
for newly compiled applications.



>
>> - Can the kernel do anything to make the transition easier for libc or
>>   other userspace programs?
> My experience is that mailing list discussions (like this one) are
> better at this kind of brain-storming than the actual face-to-face
> summit meeting.  Summit meetings are good for weighing tradeoffs
> between different possible solutions, but in general, things go much
> more smoothly if someone has done some homework and outlined a few
> possible proposals (even if they are strawman proposals) to prime the
> discussion.
>
> So I'm not just picking on this topic, but in general --- if we have
> topics of the form, "we should bell the cat", the program committee
> will be more likely to consider it a good use of everyone's time if
> there is evidence that some potential technologies for applying the
> bell to the cat (and how to handle minor problems like the cat's teeth
> and claws) have been considered raised ahead of time.  (And of course,
> if someone sends a patch making the whole discussion moot, that's even
> better.  :-)

Right. So clearly I don't have all the details ready right this moment,
but I hope providing more detail above gives you a better sense of the
current proposals and some confidence that I'll try to do my homework
and have some discussions on lkml before the Kernel Summit discussion.

thanks
-john
