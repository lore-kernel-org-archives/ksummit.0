Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2EC04990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:50:59 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 281D120240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:50:58 +0000 (UTC)
Date: Tue, 6 May 2014 16:50:52 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: josh@joshtriplett.org
Message-ID: <20140506205052.GF5012@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140506203337.GE21332@cloud>
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 01:33:37PM -0700, josh@joshtriplett.org wrote:
> 
> I don't think it's entirely trivial to make the kernel fine.  Two topics
> that *do* make sense for Kernel Summit:
> 
> - How do we fix existing ABIs while making it minimally painful to
>   transition existing userspace to the new ABI?  Should we just
>   introduce a replacement for every system call that includes a time_t
>   and deprecate the old ones, or should we introduce some more
>   systematic migration mechanism?

It might be useful if someone were to do a bit of homework first.  How
many system calls (and there will be some ioctl's too, but system
calls will probably be the hard part) that are using a 32-bit time_t
(including struct timeval and struct timespec) or clock_t?  Can
someone produce a list so we know how many interfaces we're talking
about here?

> - Can the kernel do anything to make the transition easier for libc or
>   other userspace programs?

My experience is that mailing list discussions (like this one) are
better at this kind of brain-storming than the actual face-to-face
summit meeting.  Summit meetings are good for weighing tradeoffs
between different possible solutions, but in general, things go much
more smoothly if someone has done some homework and outlined a few
possible proposals (even if they are strawman proposals) to prime the
discussion.

So I'm not just picking on this topic, but in general --- if we have
topics of the form, "we should bell the cat", the program committee
will be more likely to consider it a good use of everyone's time if
there is evidence that some potential technologies for applying the
bell to the cat (and how to handle minor problems like the cat's teeth
and claws) have been considered raised ahead of time.  (And of course,
if someone sends a patch making the whole discussion moot, that's even
better.  :-)

Cheers,

						- Ted
