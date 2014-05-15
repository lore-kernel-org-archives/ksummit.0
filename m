Return-Path: <pjwaskiewicz@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BBF014C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 05:41:11 +0000 (UTC)
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 350E61F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 05:41:11 +0000 (UTC)
Received: by mail-qc0-f182.google.com with SMTP id e16so995990qcx.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 22:41:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513160743.GA11391@thunk.org>
References: <20140511171824.GB2527@linux.com>
	<20140512155320.GW12708@titan.lakedaemon.net>
	<20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
Date: Wed, 14 May 2014 22:41:10 -0700
Message-ID: <CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
From: PJ Waskiewicz <pjwaskiewicz@gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=ISO-8859-1
Cc: Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>, Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

On Tue, May 13, 2014 at 9:07 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> I'll note this discussion has started mutating to a more general "how
> do we get more useful bug reports in front of developers", which I
> think is a good thing.
>
> However, I'm still not sure how useful it would be to have a tech
> topic (or a core topic) dedicated to the matter, because we've had
> discussions about and at the end of the day, what's probably really
> necessary is to have someone, or a small team, dedicated all or most
> of their time to:
>
> a) improving kerneloops.org
> b) finding interesting patterns in the bulk reported data, and then
> forwarding that on to developers
> c) finding ways of automating (b)
>
> QR encoded oops might be a means towards that end, but there might be
> other things that could be done as well.
>
> If someone were to *do* all of this work, then reporting on it and
> then asking for suggestions about how this service could be improved,
> might make a great tech topic.

This is where I disagree.  Looking at this thread alone (outside of
the technical discussion itself), many people have different views of
how b) and c) above should be done.  Having a person or team of folks
go off and build this, or rather their view and interpretation of how
to build this, will undoubtedly get pulled to pieces at KS because of
the differing views.  A better use of everyone's time, core kernel
dev's and people working on a) - c), would be to hash out the details
of *what* this should look like, what kernel dev's *want* and *don't
want.*

Also, a big part of the original thought to having this topic at KS is
to get all the right players in one spot, from kernel dev, kernel.org
infrastructure, etc.  The *how* in building this reporting framework
isn't hard, it's the *what* that needs to be hammered out.  And for
something like the QR encoded oops project, it seems to be a missed
opportunity to put it in the kernel, but have no usable framework to
make full use of it.  That's the point of the discussion we're asking
for, is to make sure it *will* be useful and give all the people who
want to see this have a say in how it should be built.  I really don't
think that type of discussion would be terribly effective or efficient
via email.

And let's be fair, I've seen a number of tech topics at previous KS's
that were more proposals of ideas, looking for design direction and
the like.  I don't see how this is any different.

However, I completely agree that the implementation discussion of how
to do the QR encoding, etc., should be kept to the mailing lists.  And
if this topic is included at KS, then I see no reason that the
participants and leader of the discussion couldn't keep the discussion
on-topic.  Is it really that hard?

Based on the pretty large interest in putting this framework together
(based on this thread alone), I really think this would be a very
useful topic to include at KS this year.

Cheers,
-PJ Waskiewicz
