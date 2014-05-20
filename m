Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A30448A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 14:48:06 +0000 (UTC)
Date: Tue, 20 May 2014 10:47:57 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Levente Kurusa <levex@linux.com>
Message-ID: <20140520144757.GA20288@thunk.org>
References: <CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
	<CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
	<20140513150520.GA15857@kroah.com>
	<CABe+QzDo9PudGCPOQnEabnwL=M8L261x_GjB2xrkCgLhJi+ewQ@mail.gmail.com>
	<CA+5PVA5k=mVtR+gb+hfpc_05J_yP-TruX2DXFZdQkY+Nzq4p+w@mail.gmail.com>
	<20140513160743.GA11391@thunk.org>
	<CACMb8d0mtbYM4rUEJgkXCJ=MptU8X0JzvoOZriQYOEWmJSE2uw@mail.gmail.com>
	<20140515154112.GA24028@thunk.org> <53779022.6080508@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53779022.6080508@linux.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>, Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, May 17, 2014 at 06:36:50PM +0200, Levente Kurusa wrote:
> 
> Of course we did identify the team. It's me and Teodora. For this QR
> encoding work we need a lot of framework work and while at it we could
> also tie up some loose ends in the error reporting workflow. I, for
> myself, would love to clean up Bugzilla a bit. It has a lot of open bugs
> that have been fixed for ages, just for example.

Just to be clear, since my understanding is that you are university
students --- your primary goal is to clean up the QR encoding work,
yes?  Do you anticipate having time to talk about working on some of
the larger, grander suggestions that some people have raised on this
thread?  That is, some kind of web backend to for which these QR's
could be submitted and then analyzed?

Or is what you plan to be focusing on is more tightly focused on the
the actual generation of the QR barcode?  What help would you need in
order to bring the use of the QR barcode to its fullest potential?

Regards,

						- Ted
