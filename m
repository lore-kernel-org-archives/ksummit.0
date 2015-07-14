Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E06C2AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:03:24 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C7A2F114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:03:23 +0000 (UTC)
Message-ID: <1436871795.2445.8.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jonathan Corbet <corbet@lwn.net>
Date: Tue, 14 Jul 2015 12:03:15 +0100
In-Reply-To: <20150713202818.23310729@lwn.net>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Mon, 2015-07-13 at 20:28 -0600, Jonathan Corbet wrote:
> On Mon, 13 Jul 2015 21:02:26 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > Yes, it's great if we can catch things in -next. But I don't believe
> > that patches that fix bugs found in Linus's tree should sit in next
> > before going into Linus's tree, because those patches are basically
> > fixing stuff that was already in next and wasn't discovered until it
> > hit Linus's tree. Which is why I say it's a waste of time to put it in
> > next before sending straight to Linus.
> 
> That, of course, assumes that these fixes don't introduce *other* bugs
> that might just be caught in -next...
> 
> In general, though, I think a lot of people see -next as -rc1 without the
> quality control; it's volatile and scary.  So it's not surprising that it
> doesn't get a lot of real-world testing.  And, as long as that's the case,
> there's going to be a lot of bugs that are never caught in -next.

Yes, I'm with this.  Instantly into Linus' tree means we get a lot of
bug introducing fixes which we then have to sort out.  One of the
complaints the stable tree maintainers and the distros are making is
that it's hard to track the set of patches required for a fix that was
first done wrongly.

No harm comes to us from running regression fixes into -next and thus in
the 0day tests because they eventually get into the correct kernel and
the benefit is that bogus fixes may be picked up by the tests.  Why
would we not incubate for a while in -next when there's no down side and
plenty of upside?

The idea that fixes have to go ASAP without our standard review (and
-next and 0day are now part of our review) processes is completely wrong
in my opinion.

I think we can argue about the time length (or just leave it up to the
maintainer) but saying we should bypass the standard process is wrong.

James
