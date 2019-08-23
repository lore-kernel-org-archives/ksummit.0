Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A0FE10F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:01:52 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B63627FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:01:51 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w11so4030322plp.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:01:51 -0700 (PDT)
Date: Thu, 22 Aug 2019 18:01:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190823010146.GB139536@dtor-ws>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 22, 2019 at 05:17:05PM -0700, Linus Torvalds wrote:
> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > The Linux kernel has always viewed these Change-Id tags as obnoxious
> > and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > patch when posting to the mailing list is told to please re-post their
> > patch without the Change-Id.  In this email, I will attempt to argue
> > that the Linux kernel ought to relax this restriction and allow
> > (possibly even encourage) Change-Ids.
> 
> No.
> 
> Not without some ground rules.
> 
> > To begin with, let me make sure we're on the same page about what
> > Change-Ids are.  As I understand it:
> >
> > * A change ID is much alike a UUID.  It is locally generated on a
> > developer's computer and is (in theory) unique across the universe.
> 
> Completely irrelevant.
> 
> The point of an UUID is not just that it's unique, but THAT YOU CAN
> LOOK SOMETHING UP USING IT!
> 
> A "change ID" that I can't use to look anything up with is completely
> pointless and should be removed from kernel history.
> 
> But if you have something unique that is actually useful for looking
> things up, then by all means. But it needs to be useful for
> _everybody_.

It can be used by anybody. At the barest minimum, one can simply google
it and get results from emails sent to LKML and other lists. Maybe down
the road patchwork will learn to use it.

BTW, I am not sure if we want a patch ID or series ID that is stable
across patch series.

> 
> > * When a developer keeps the same Change-Id across two patches they
> > are making the assertion that the two patches are either the same or
> > should be treated as two versions of the same logical change.
> 
> .. and we have better ways to do that.
> 
> For example, we are actively encouraging things like message ID's
> (which are _also_ a form of locally generated UUID, they just are more
> than the silly purely numerical one).
> 
> That gives you the origin of something, but it also gives you the
> development history and context.

But not all of it, as when somebody posts v2, v3, v4 of the patch series
the emails will generate new message IDs, so we lose connection to the
old discussions. With new unique ID that is preserved for the entire
lifetime of patch series it is much easier to locate all relevant data.

Thanks.

-- 
Dmitry
