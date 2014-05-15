Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 041FF4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 15:41:50 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6AD1F200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 15:41:48 +0000 (UTC)
Date: Thu, 15 May 2014 11:41:13 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: PJ Waskiewicz <pjwaskiewicz@gmail.com>
Message-ID: <20140515154112.GA24028@thunk.org>
References: <20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
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

On Wed, May 14, 2014 at 10:41:10PM -0700, PJ Waskiewicz wrote:
> Also, a big part of the original thought to having this topic at KS is
> to get all the right players in one spot, from kernel dev, kernel.org
> infrastructure, etc.  The *how* in building this reporting framework
> isn't hard, it's the *what* that needs to be hammered out.  And for
> something like the QR encoded oops project, it seems to be a missed
> opportunity to put it in the kernel, but have no usable framework to
> make full use of it.  That's the point of the discussion we're asking
> for, is to make sure it *will* be useful and give all the people who
> want to see this have a say in how it should be built.  I really don't
> think that type of discussion would be terribly effective or efficient
> via email.

I guess I didn't make myself clear.  I agree that the *how* things
should be built is better done via e-mail, or better yet, by the
person actually doing the work.  What I'm trying to push on is whether
we've identified *who* will do all of this work.  Not just the QR
encoding patches, but all of the associated work that is being
proposed in this thread.

					- Ted
