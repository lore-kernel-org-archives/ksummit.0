Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C3CE160C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 22:16:10 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 637925F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 22:16:08 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id p24so2657027lfo.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 15:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
In-Reply-To: <1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 31 May 2019 15:15:55 -0700
Message-ID: <CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
To: Laura Abbott <labbott@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 31, 2019 at 5:02 AM Laura Abbott <labbott@redhat.com> wrote:
>
> On 5/30/19 7:30 PM, Shuah Khan wrote:
> > I would like to propose a topic to discuss ideas to keep up with Syzbot
> > bugs on an ongoing basis. Good news is, as of this writing, we have 1276
> > fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
> > bugs. A good number of them have been open for longer than 300 days.
> >
> > The oldest one has been open for 537 days. I plan to take a closer at
> > the open bugs to identify areas that might need more help.

Many seem to get discussed for a while with people all mostly agreeing
on what needs to be done, but then nothing actually materializes.

Now, part of this, I think, is a lack of an "objective" sense of
priority for the various bugs on the dashboard. Their frequency of
appearance (currently the only thing that really turns red), does not
reflect anything about their severity nor reachability. Severity is
pretty straight forward: stack smashing, use-after-free, etc are way
worse (generally speaking) than crash/hang or WARN(). For
reachability, if we could narrow the scope of things a bit more ("this
is reachable only by init namespace root", or "only reachable via
CAP_NET_ADMIN", or "only with this CONFIG that doesn't appear in any
modern distro .config") that would be great.

> > I have been sending fixes to some of them as I find time like many other
> > developers. In addition, I included syzbot bug analysis as a required
> > contribution in the Linux Kernel Mentorship Program application process.
> > This is for learning debugging skills as well as getting help towards
> > fixing bugs. It has been successful in getting a few fixes in. My goal
> > is  to make these efforts a bit more structured to focus on areas that
> > need help.
> >
> > There are some challenges, the obvious ones being finding time to
> > analyze, reproduce, and fix. Reproducers are available in many cases,
> > and these bugs can be reproduced. Identifying the right fix and fixing
> > is the overwhelming part with the number of outstanding problems.
> >
> > My objective for this topic is to explore and identify areas that might
> > need help in analyzing and fixing bugs in general and especially the
> > ones that have been open for a while. It would help me channel and focus
> > the Mentorship Program efforts and my efforts to help the areas in need.

What I want to find is a way to fund on-going work in this area. It
just does not appear to be working to find funding within various
companies to do this kind of sustained bug-hunting. It's a bit of a
resource conflict: if a company has kernel developers on staff they
tend to want to have them focused on "new things".

> I'm interested in this topic for not just syzbot but other bug trackers
> as well. Fedora gets a steady flow of bugs filed and the three official
> maintainers do their best to review but sometimes things slip through,
> especially if we hit a time when several of us are out or traveling.
> The kernel.org bugzilla also gets a number of bug reports that sometimes
> get lost. I'd love to see if there's a process that could work for syzbot
> and other high volume kernel trackers.

I'd especially love to see deduplication and cross-referencing working
a little more automatically between trackers. "Oh, I've seen that
before over here *link*" by a machine would be quite helpful.

-- 
Kees Cook
