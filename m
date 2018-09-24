Return-Path: <Jason@zx2c4.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05EE1D74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:55:20 +0000 (UTC)
Received: from frisell.zx2c4.com (frisell.zx2c4.com [192.95.5.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E691180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:55:19 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 6d746104
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:37:03 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id d78d1712
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128:NO)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 01:37:03 +0000 (UTC)
Received: by mail-oi0-f45.google.com with SMTP id l82-v6so15716087oih.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 18:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oVReKvhpm1CSnF3KLDYtt63SvauHXZ-m6mWR=zno2OJA@mail.gmail.com>
	<CAHmME9pP+iGLecaQQCLw4_wNDDt9_1dBMW1uY0DVYLqA=JgQYg@mail.gmail.com>
	<1537748495.15095.4.camel@HansenPartnership.com>
In-Reply-To: <1537748495.15095.4.camel@HansenPartnership.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 24 Sep 2018 03:55:06 +0200
Message-ID: <CAHmME9rjhwpOvC=oyeUCpJ6Ahexq6XJQo6-H8D4xQCb6Uerw_A@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TALK] WireGuard: Next-Generation Secure
 Kernel Network Tunnel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 24, 2018 at 2:21 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Mon, 2018-09-24 at 02:12 +0200, Jason A. Donenfeld wrote:
> > Confusingly, this talk was actually accepted for the main refereed
> > track at Plumbers, which probably makes more sense anyway for it. So
> > I should probably retract this submission.
> >
> > However, the more important and relevant talk -- the one on Zinc --
> > is really quite appropriate for the kernel track and is sure to spur
> > a lot of needed discussion. So please focus attention on that
> > instead.
>
> Just so you know, this is the only email on the ksummit discuss list
> I've seen from you ... there isn't one proposing either zinc or
> wireguard as a tech topic.
>
> The list archive also only sees this email from you:
>
> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/
>
> so there may be an issue with your outgoing server.

Yikes! However, I'm certain it's not my outgoing server. My mail
server logs show that lists.linuxfoundation.org replied with the
following IDs for each of the two messages:

- 250 2.0.0 Ok: queued as AC122174
- 250 2.0.0 Ok: queued as 8EF1AF8

The one I sent earlier today following up gave a similar response:

- 250 2.0.0 Ok: queued as 63A72180

I'm adding Konstantin to the CC to see what's up.
