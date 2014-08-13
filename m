Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 599D98A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 01:37:35 +0000 (UTC)
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 394FC201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 01:37:34 +0000 (UTC)
Received: by mail-lb0-f174.google.com with SMTP id c11so7661093lbj.19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 18:37:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140813013342.GB6783@cloud>
References: <53EAAC95.7080301@linaro.org> <20140813013342.GB6783@cloud>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 12 Aug 2014 18:37:11 -0700
Message-ID: <CALCETrVP64FSJWyHHbm0R-2qTzN1Q5PwXh4k9+qjg1Q8bSud2w@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"Joseph S. Myers" <joseph@codesourcery.com>,
	lkml <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] (Resend) 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 12, 2014 at 6:33 PM,  <josh@joshtriplett.org> wrote:
> On Tue, Aug 12, 2014 at 05:08:53PM -0700, John Stultz wrote:
>> Also, just to clarify, as time related discussions can bring out a laund=
ry
>> list of issues, I would like to focus this discussion on providing a 203=
8
>> solution for existing interfaces and applications in a way that ideally
>> doesn't require modifying application source code.  While there will be
>> plenty of places where applications have cast or stored time_t values
>> explicitly as longs, and for those applications, deep modifications will=
 be
>> necessary. But I=E2=80=99d like to avoid getting into new-interface disc=
ussions,
>> like exporting ktime_t like nanosecond interfaces instead of timepsecs,
>> unifying time-stamping formats, or methods for avoiding leapseconds. Tho=
se
>> are all interesting issues, and I=E2=80=99d be up for discussing them se=
parately,
>> but those issue apply equally to 32bit and 64bit systems, and really are=
n't
>> 2038 specific, so I think its best to separate them out.
>
> That's understandable.  However, I wonder to what extent we could
> support unmodified source code via libc wrappers (since code calling
> syscalls directly can't work completely unmodified), while using better
> interfaces for new syscalls.  Given syscalls written in terms of (for
> instance) nanoseconds rather than timespec values, it seems
> straightforward enough for libc to provide compatibility interfaces.
>
>> From discussions so far, it seems the preferred change to the userspace
>> interface is what I=E2=80=99ll call the =E2=80=9CLarge File=E2=80=9D met=
hod, as it follows the
>> approach used for large file support:
>>
>> Create new 64bit time_t/timespec/timeval/etc variants for syscalls, whil=
e
>> preserving existing interfaces. This has some complexity around IOCTLs, =
but
>> that can mostly be handled by creating new ioctl numbers while preservin=
g
>> the old ones. Since we=E2=80=99re only modifying time types, we=E2=80=99=
ll also need to add
>> compat versions for many of these syscalls for 64bit native systems.
>>
>> Libc then introduces versioned symbols, and a new compile options to all=
ow
>> applications to be built for =E2=80=9Clarge time=E2=80=9D. New and old a=
pplications could
>> then share the same libc.
>>
>> The benefits of this approach is is simply and minimally extends the
>> current 32 bit environment, without any effect on existing applications
>> which continue to work. Most of the complexity is in the libc library an=
d
>> its build environment.
>>
>> The downsides to this approach is that as it follows the large-file
>> approach, it has many of the same problems as large-file support, in tha=
t
>> the transition to large-file has been slow and is still ongoing. Also,
>> since this solution focuses on libc, there is also the problem of existi=
ng
>> 3rd party libraries, which have no way of knowing which sized time is be=
ing
>> used, will break. So all libraries that do anything with time will then
>> have to implement their own versioned interfaces. This approach also mak=
es
>> it a little more difficult to audit that a system is 2038 safe, without
>> running it and looking for issues.
>
> If we go this route, we should also provide a "depends on EMBEDDED"
> Kconfig option that omits all of the compatibility support, for systems
> that have fully migrated to new userspace.
>
>> A potential alternative I=E2=80=99d like to also propose is the =E2=80=
=9CLibc Version Bump=E2=80=9D
>> approach.
>>
>> Basically this is the same as the above, where the kernel provides both
>> legacy and new time_t related interfaces. However, the libc would make a
>> version break, migrating to using 64bit time_t types and syscalls. Legac=
y
>> applications would still work using the old glibc version, but this woul=
d
>> provide a stronger line in the sand between 2038 safe and unsafe
>> applications and libraries, making it easier to avoid mixing the two.
>> NetBSD developers discussed this same approach back in 2008 here:
>> https://mail-index.netbsd.org/tech-userlevel/2008/03/22/msg000231.html
>>
>> The downsides here is, for legacy application support, one would have to
>> have all the requisite legacy libraries also installed, which will add a
>> burden to distro vendors. However, this extra storage overhead would lik=
ely
>> be a positive motivator to get applications rebuilt and migrated to new
>> version. Additionally, for 3rd party libraries built against the new lib=
c
>> version, the libraries may need to do a version bump themselves, in orde=
r
>> to be able to co-exist with versions built against the previous libc. Th=
is
>> approach also assumes that libraries that use time_t related values woul=
d
>> have a libc dependency.
>
> The migration pain here doesn't seem worth it at all.
>
>> A more aggressive version of the previous proposal is what I=E2=80=99m c=
alling the
>> =E2=80=9CNew Virtual-Architecture=E2=80=9D approach, basically extending=
 the versioning
>> control from the linker down into the kernel as well.  It would be addin=
g a
>> new =E2=80=9Cvirtual-architecture=E2=80=9D to the kernel, not entirely u=
nlike how x32 is
>> supported on x86_64 systems.  We would create entirely new ABI and
>> architecture name in the kernel (think something like =E2=80=9Carmllt=E2=
=80=9D or
>> =E2=80=9Ci386llt=E2=80=9D). We would preserve compatibility for legacy a=
pplications via
>> personalities, similar mechanism as the compat_ interface used to suppor=
t
>> 32bit applications on 64bit kernels. In this case, we wouldn=E2=80=99t i=
ntroduce
>> new 64 bit syscalls in the kernel, as the existing interfaces would just=
 be
>> typed correctly for our new virtual architecture, but we would have
>> duplicate syscall interfaces via the compat interfaces. The extra
>> complexity would also be that we would have to support new 32bit compat
>> environment on 64bit systems. Userspace would be completely rebuilt to
>> support the new -llt architecture, and compatibility for legacy
>> applications would be done via the same multiarch packaging as is done n=
ow
>> for running 32bit applications on 64bit systems.
>
> I wonder: could we make this new architecture effectively use the
> signatures of the 64-bit syscalls (similar to x32), just with a 32-bit
> calling convention?

Doesn't x32 do the reverse?  It invokes *compat* syscalls using a
64-bit calling convention.

--Andy
