Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6883C279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 00:48:28 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C0508D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 00:48:26 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 21 Apr 2017 02:35:40 +0200
Message-ID: <9231571.Do4gpTNuQH@aspire.rjw.lan>
In-Reply-To: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Linus,

On Tuesday, April 18, 2017 11:59:37 AM Linus Torvalds wrote:
> The kernel summit is apparently in October, and I promised last year
> to at least get the ball rolling with the people *I* would like to
> see.

[cut]

> So the other way to split it up is by "maintenance area", ie we have
> 
>  - architectures
> 
>    Pretty much covered by x86, arm, powerpc, and those architectures
> should talk about who within the group would attend.
> 
>  - drivers
> 
>    Obviously we have Greg overall, with drm and rdma because of issues.
> 
>    An example here is that Christoph doesn't show up because I don't
> generally pull from him, but he's been all over and often crosses
> multiple driver subsystems, and has been involved in rdma too, so I'd
> add him just for that.
> 
>    Some driver subsystems may be huge (eg media and sound), but I
> don't know if they have issues. Mauro/Takashi?
> 
>  - filesystems
> 
>    Al, XSF and ext4 stand out by size (XFS is mostly Dave Chinner due
> to me going by past year, but is obviously Darrick Wong right now).
> 
>  - core stuff.
> 
>    We've got Andrew, and I'd add Tejun from the list, with others
> possible? Maintenance issues here are actually sometimes contentious
> even if the core kernel is fairly small.
> 
>  - security stuff
> 
>    Luto, Kees?
> 
>  - particular pain points. Any not mentioned?
> 
>  - other?

I'm not sure if PM can be regarded as "core stuff" or "drivers", but it just
tends to be spread all over, so I guess it's sort of unusual.  It interacts
with pretty much everything, though, so maybe should be represented? ;-)

Also I have a couple of pain points, although to be entirely honest I don't
really think about them on a daily basis, so you can count me as relatively
happy in that respect. :-)

But since you are asking, one thing that bothers me is that I seem to be the
only person on the planet sufficiently familiar with some pieces of kernel code
to be able to fix issues in them without an extensive research.  At least
nobody else openly admits to be familiar with that code too.

I guess the reason why is that I tend to take care of code rarely looked
at by anyone else and people look at it mostly if it causes problems visible
to them to happen this way or another.  Then, once the problem at hand goes
away, they go back to the other stuff which presumably is more interesting to
them.  I often end up fixing those issues myself, just because I'm familiar
with the code in question, and so this goes on.

That's not a particularly comfortable situation to be in for various reasons,
but I have to admit that I don't really know how to address it generally and
long-term.  It would boil down to finding somebody who would be sufficiently
interested in that code to understand all of it and would stay on the project
for long enough, but that's sort of hard.

[Besides, there are pieces of kernel code familiar to no one with a valid
e-mail address (like some cpufreq drivers for an easy example) and  there
is barely any hardware they can be tested on after modifications (which
sometimes are necessary due to framework changes etc).]

It also is hard to make people review code changes in a meaningful way,
especially if the code being modified is not what they work on routinely.
That's entirely understandable to me, because if that's not part of their job,
it becomes tedious unpaid work done voluntarily for the better good of
everyone, so to speak, and totally unrewarding in many cases.

That is not to say that code review doesn't happen.  It happens, but not
as much as to make me entirely happy.  At the same time I don't really think it
would be good to make code review mandatory overall.  In fact, I'm not sure if
doing that would improve things at all.  I wonder, however, if it is possible
to make code review generally more rewarding (or attractive?) somehow.

Finally, there is quite a bit of code in various vendor or product trees and
similar that's never submitted to us and we don't even know about it, but it
is shipped in products.  Also, there are drivers available as source code that
can be downloaded from vendor web sites, but are never submitted for
merging.

This clearly means to me that there's not enough incentive for people to submit
their code and I wonder if there's anything we can do to address that.  Moreover,
I actually would prefer problems or use cases to be discussed with us before
any code is implemented, but quite evidently there's no incentive for that
either.

> I'd like the maintainership summit list to be fairly small. Not even
> 50 people. Maybe 30. A group that can actually sit in a room for half
> a day and talk to each other about the issues they have rather than
> being talked to. And talk literally about *process* issues, not about
> any particular technical issues within whatever subsystem. Bring up
> peeves or wishes for actual process improvements?
> 
> Comments? People who should be involved? Or people who don't have any
> particular issues and want to not be involved?

As for who should be involved, IMO if that's going to be a "maintainer summit", the
majority of people in the room should be maintainers.  I would go for proportions
like 2/3 maintainers and 1/3 distro/infrastructure/testing/users/etc with the
total number somewhere between 36 and 45.

Cheers,
Rafael
