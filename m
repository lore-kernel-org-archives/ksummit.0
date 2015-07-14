Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BDC4C305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:19:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0102.hostedemail.com
	[216.40.44.102])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 985621DCA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:19:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 22F54B34ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 01:02:29 +0000 (UTC)
Date: Mon, 13 Jul 2015 21:02:26 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150713210226.519dedfd@gandalf.local.home>
In-Reply-To: <55A45AD8.5010400@oracle.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 20:42:00 -0400
Sasha Levin <sasha.levin@oracle.com> wrote:


> > I disagree. I thought next was a place to have integration of new
> > development, and not just a place to test. Really, how many people test
> > next compared to Linus's tree? I trip over bugs all the times in
> > Linus's tree that's been in -next for almost a whole release cycle.
> 
> I didn't say that it's not for integration, I just said that with the
> recent increase in testing by various people/organizations the focus
> seems to be shifting to catching things in -next before they get into
> Linus's tree.

Yes, it's great if we can catch things in -next. But I don't believe
that patches that fix bugs found in Linus's tree should sit in next
before going into Linus's tree, because those patches are basically
fixing stuff that was already in next and wasn't discovered until it
hit Linus's tree. Which is why I say it's a waste of time to put it in
next before sending straight to Linus.

 
> >>
> >> I think that this is a small mind-shift from thinking about Linus's tree as
> >> an integration tree to considering it as mostly bug-free code, and stop
> >> merging in risky patches. We already have -next for that.
> > 
> > No, we have -next as a way incorporate new code and see how things
> > interact with other subsystems.
> 
> I don't see why we're disagreeing?

I guess it's a point of view we are having. Maybe I'm misunderstanding
you. Are you concerned about fixes that are sent straight to Linus
without ever going into next? I do that quite often, and I too am
guilty of having those fixes cause other bugs that need to be fixed.
But I highly doubt that having them sit in next for two weeks would
change that. Again, the code that the patches fix was already in next,
and the original bug was never found there. What makes you think bugs
in the fix patches will be any different?


> >> My reasoning for -rc prereleases for stable was to test out the backports that
> >> go into stable kernels: they don't see the light of day until they're shipped
> >> out to folks who want *stable* kernels, but end up being the first testers of
> >> a backport.
> > 
> > Which to me looks like rational to let it sit in Linus's tree for a bit.
> 
> Backports don't end up in Linus's tree, they only live in our stable trees and
> never see the light of day before we ship that tree out.
> 

Oops, sorry. I misread what you wrote. I was thinking of it being in
next and missed the -rc prerelease comment about stable.

-- Steve
