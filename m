Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 096728AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Jun 2014 13:01:22 +0000 (UTC)
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBD652021B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Jun 2014 13:01:17 +0000 (UTC)
Received: by mail-oa0-f43.google.com with SMTP id o6so5074655oag.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Jun 2014 06:01:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<20140612075355.4b0d1f5a@canb.auug.org.au>
	<CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
	<1402525074.2523.71.camel@dabdike.int.hansenpartnership.com>
	<CAG4TOxPCX6mrUc4FGeUfQkCsXjWZjm=5ie3TjSXvSjT0oJps=A@mail.gmail.com>
	<1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
Date: Thu, 19 Jun 2014 15:01:16 +0200
Message-ID: <CACRpkdYjJuVEOr7WHCojXtvszb0ZhuLuZAqh8DPdXCoNroUF9g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 12, 2014 at 12:36 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2014-06-11 at 15:26 -0700, Roland Dreier wrote:

>> Every time a developer wants to change a core API, that developer
>> needs to patch every driver that uses the API.  Every old, unused,
>> bitrotten driver we have in the tree is 100% wasted work, and often a
>> substantial amount of work because it's really hard even to understand
>> how those drivers are (mis)using the API being changed.
>
> Well how often do we do that?  It's not like it's the most common
> activity.

Well I'm doing that right now in the GPIO subsystem where I'm
refactoring all local irqchip implementations into the gpiolib.

So I attack-patch all suitable refactoring targets, indeed. And
sometimes the answer comes back "I don't have that hardware
anymore, cannot test it", even from the person listed as maintainer.
(drivers/gpio/gpio-adnp.c, drivers/pinctrl/spear/*)

And then I get a strong urge to delete it, because a maintainer that
can't maintain is not much of a maintainer...

Yours,
Linus Walleij
