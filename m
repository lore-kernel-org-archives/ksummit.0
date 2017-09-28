Return-Path: <Jason@zx2c4.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A71A8710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 23:21:34 +0000 (UTC)
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 7734D1DB0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 23:21:22 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 60eea2dd
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 23:00:04 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 50b429b4
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128:NO)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 23:00:03 +0000 (UTC)
Received: by mail-oi0-f52.google.com with SMTP id p187so4867420oif.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Sep 2017 16:09:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.1709290833470.15742@namei.org>
References: <alpine.LRH.2.21.1709231416010.10766@namei.org>
	<alpine.LRH.2.21.1709290833470.15742@namei.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 29 Sep 2017 01:09:18 +0200
Message-ID: <CAHmME9qb2EAKxJwCvQU_SkxjUaWjDaB2uh-7smFMw=04kSgvDw@mail.gmail.com>
To: James Morris <jmorris@namei.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Eric Biggers <ebiggers@google.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 29, 2017 at 12:50 AM, James Morris <jmorris@namei.org> wrote:
> Another potential topic would be whether we can provide better review of
> crypto users within the kernel.
> One idea would be to create a mailing list for this purpose, which
> developers can cc: if they are posting new code or updates to code which
> uses the crypto API.  We could encourage folk with crypto design &
> analysis skills (who may not necessarily be kernel developers, or
> following every possibly related mailing list) to help out with crypto
> review.

To cross-post what I wrote in our other thread, which wasn't CCd to this list:

> I won't be at kernel summit, regrettably, but I do intend to
> methodically work through the kernel reviewing the various crypto
> [mis]uses in places. I also have some larger plans regarding reworking
> a few aspects of the crypto API, that I'll start a discussion with
> Herbert about during the next several months.
> So, expect some more things like this patch to gradually be rolling
> your way, along with maybe larger overall changes. If you wind up
> discussing this in any substantial way at the summit this year, please
> do try to loop me in at some point.

So, I really like the idea of having a dedicated mailing list or even
a simple email alias for that kind of discussion. I know a few
pure-academics who would actually be interested in participating in
that, and personally I'm kind of existing in the void between the
kernel world and the crypto world, so that sort of list is of course
interesting to me.

One potential difficulty with "security-related" lists, and
crypto-related things in particular, is that there are often many
people eager to share misinformation or who read Schneier way back
when and then... Anyway, I suspect at kernel summit, a discussion will
yield some way to approach that.

Jason
