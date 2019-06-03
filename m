Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 924CDB6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 10:42:39 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 93EA086E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 10:42:38 +0000 (UTC)
Date: Mon, 3 Jun 2019 12:42:34 +0200
From: Jan Kara <jack@suse.cz>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20190603104234.GD27933@quack2.suse.cz>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
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

On Fri 31-05-19 15:15:55, Kees Cook wrote:
> On Fri, May 31, 2019 at 5:02 AM Laura Abbott <labbott@redhat.com> wrote:
> >
> > On 5/30/19 7:30 PM, Shuah Khan wrote:
> > > I would like to propose a topic to discuss ideas to keep up with Syzbot
> > > bugs on an ongoing basis. Good news is, as of this writing, we have 1276
> > > fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
> > > bugs. A good number of them have been open for longer than 300 days.
> > >
> > > The oldest one has been open for 537 days. I plan to take a closer at
> > > the open bugs to identify areas that might need more help.
> 
> Many seem to get discussed for a while with people all mostly agreeing
> on what needs to be done, but then nothing actually materializes.
> 
> Now, part of this, I think, is a lack of an "objective" sense of
> priority for the various bugs on the dashboard. Their frequency of
> appearance (currently the only thing that really turns red), does not
> reflect anything about their severity nor reachability. Severity is
> pretty straight forward: stack smashing, use-after-free, etc are way
> worse (generally speaking) than crash/hang or WARN(). For
> reachability, if we could narrow the scope of things a bit more ("this
> is reachable only by init namespace root", or "only reachable via
> CAP_NET_ADMIN", or "only with this CONFIG that doesn't appear in any
> modern distro .config") that would be great.

Yes, I think this would be really useful.

> > > I have been sending fixes to some of them as I find time like many other
> > > developers. In addition, I included syzbot bug analysis as a required
> > > contribution in the Linux Kernel Mentorship Program application process.
> > > This is for learning debugging skills as well as getting help towards
> > > fixing bugs. It has been successful in getting a few fixes in. My goal
> > > is  to make these efforts a bit more structured to focus on areas that
> > > need help.
> > >
> > > There are some challenges, the obvious ones being finding time to
> > > analyze, reproduce, and fix. Reproducers are available in many cases,
> > > and these bugs can be reproduced. Identifying the right fix and fixing
> > > is the overwhelming part with the number of outstanding problems.
> > >
> > > My objective for this topic is to explore and identify areas that might
> > > need help in analyzing and fixing bugs in general and especially the
> > > ones that have been open for a while. It would help me channel and focus
> > > the Mentorship Program efforts and my efforts to help the areas in need.
> 
> What I want to find is a way to fund on-going work in this area. It
> just does not appear to be working to find funding within various
> companies to do this kind of sustained bug-hunting. It's a bit of a
> resource conflict: if a company has kernel developers on staff they
> tend to want to have them focused on "new things".

Well, not necessarily only "new things". Distros have kernel people that do
bugfixing but the most focus naturally goes towards bugs customers are
likely to get exposed to. Triaging through syzbot reports when you have
enough bugs your customers actually hit thus does not look very appealing
:) But this goes back to your idea of automated way of classifying bug
priority. Unpriviledged user triggerable kernel oops in MM is going to get
more attention than init namespace root triggerable one in some random
old driver (which is likely to bitrot for long and that's just a reality of
limited resources)...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
