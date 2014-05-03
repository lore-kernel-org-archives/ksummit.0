Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EA6EB9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:35:13 +0000 (UTC)
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCDE92024D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:35:12 +0000 (UTC)
Received: by mail-ee0-f54.google.com with SMTP id b57so1999491eek.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 03 May 2014 06:35:11 -0700 (PDT)
Message-ID: <5364F08C.3060301@gmail.com>
Date: Sat, 03 May 2014 15:35:08 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Ben Hutchings <ben@decadent.org.uk>, Dave Jones <davej@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>	<20140502173309.GB725@redhat.com>	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>	<5363E8E1.9030806@zytor.com>	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>
	<1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
In-Reply-To: <1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/02/2014 10:45 PM, Ben Hutchings wrote:
> On Fri, 2014-05-02 at 15:49 -0400, Dave Jones wrote:
>> On Fri, May 02, 2014 at 03:33:14PM -0400, Theodore Ts'o wrote:
>>  > There's been a huge focus on system calls in this discussion, and I
>>  > suspect this is a bit of a red herring.  Taking a look at "git log
>>  > arch/x86/syscalls/syscall_64.tbl" --- since all the world's is no
>>  > longer a Vax, but rather an x86_64 :-P --- there really hasn't been
>>  > that many new system calls lately.
>>
>> I may have a vested interest in syscalls :)
>>
>> The rate we're adding them has slowed down, but the rate at which we're
>> finding bugs exposed through them has accelerated enormously over the
>> last few years.

Yes. The APIs delivered to userspace continue to be infested with bugs
and design infelicities, many of which go undetected for a long time.

>> To use just one example, on certain systems I'd love to be able to just
>> turn off sys_perf_event_open given what a trainwreck of vulnerabilities it's been
>> over the last few years [comedy: it is actually a config option, but x86
>> 'selects' it, so you'll have it and you'll like it].
>> Thankfully at least the scarier parts of it are now hidden behind the
>> paranoid sysctl.
> 
> I have considered proposing perf_event_paranoid=3 to disable it
> completely for non-root.
> 
>>  > And if you look at things like renameat(2), the actual code savings by
>>  > removing renameat(2) is pretty small, and IMHO, not worth the
>>  > complexity and uncertainty that it would represent to application
>>  > programmers of "does this system call exist or doesn't it".
>>
>> I think we've got two categories here.
>>
>> "variant" syscalls like renameat, which just offers enhancements over
>> an existing syscall. Stuff that things like glibc tend to care about.
>> This stuff is usually pretty boring, and not even worth considering for
>> potentially disabling imo.
>>
>> And then we have "enable boatload of code" syscalls that are typically
>> used by a few standalone apps/features. kexec, checkpointing, whatever
>> db it was that cares about remap_file_pages, mempolicy, etc. etc.
>>
>> It's this "not used by every user" code that tends to scare me, because
>> it's written with 1-2 well behaved bits of userspace in mind, which
>> usually means "has so many unchecked corner cases it's not even funny"

Well it's worse than that, I think. Those unchecked corner cases turn
up even in code that is not protected by config options or privs.
My example of the day: the timeout argument of recvmmsg() does nothing
sensible--there was no (or minimal) testing, seems to have been minimal
review of the feature, and of course there was no documentation of how
the timeout feature should work beyond the statement that "recvmmsg 
now has a struct timespec timeout, that works in the same fashion as
the ppoll one" (Newsflash: recvmmsg() and ppoll() are doing very 
different things, so describing one in terms of the other doesn't
provide much insight.)

https://bugzilla.kernel.org/show_bug.cgi?id=75371
http://thread.gmane.org/gmane.linux.man/5677

> [...]
> 
> Since Michael often seems to be the one testing those corner cases while
> writing documentation, it seems like you're getting back to the old
> issue of whether lack of documentation should be a blocker for adding
> new system calls.

I think there's really room for a lot more rigor here. There is way
too much crap hitting the userspace API. I've long argued that
(ggod) documentation is one of the best ways of finding bugs and
design errors. I know, because that's the way I've discovered a lot
of the problems. Of course, perhaps I am just an odd data point,
but I recently got to help out in an experiment that reproduced 
the results.

Heinrich Schuchardt recently took it upon himself to document the 
fanotify API, which has been undocumented since its release in 2.6.37.
(Heinrich's pages will probably be published in the next week or so,
in the meantime the drafts are here: 
http://git.kernel.org/cgit/docs/man-pages/man-pages.git/tree/ )

In the course of writing the pages (and goaded by me at various
points to "explain this detail" or "tell the reader what happens 
in this case"), Heinrich has uncovered (and documented) one or 
two design infelicities and a good crop of bugs (at least one 
of which has some security implications: 
http://thread.gmane.org/gmane.linux.kernel/1686672/focus=1690201 )

So, Heinrich demonstrated what I've long known: show me a new
kernel-user-space API and I can probably pretty quickly show you
a bug. Writing good documentation goes a long way toward finding
those bugs and design problems, and it really should be done
well before an API is released, since, of course, some API 
problems can't be  fixed later. And, it should be a collaborative
effort involving not just the developer concerned but someone
fairly distant from them who can look skeptically at the 
documentation.

Oh, and I didn't explicitly say it, but to me it's obvious:
good documentation necessarily implies good testing. And
that's the thing that made Heinrich's work good: when he
wrote in response to some of my goadings that the answers 
might take a while, because he'd need to write some tests,
that was exactly what I hoped to hear.

tools like trinity do a great job of catching bizarre behaviors
in APIs, but in the end some bugs (and design problems) are 
only going to be found when human beings sit down and think
deeply about what is going on. (The timeout issue for 
recvmmsg() is a case in point. There's no fuzz testing for
that sort of issue, and for that matter no specification of
the expected behavior against which to test.)

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
