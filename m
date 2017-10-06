Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E54C4ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 20:11:49 +0000 (UTC)
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4834919B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 20:11:49 +0000 (UTC)
Received: by mail-it0-f42.google.com with SMTP id m123so7050528ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Oct 2017 13:11:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171006103259.78ab2508@lwn.net>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<20171006162621.aeauqeih7uner5wp@treble>
	<20171006103259.78ab2508@lwn.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 6 Oct 2017 22:11:46 +0200
Message-ID: <CACRpkda8gy181QKh9dnTOXXsdO8NAXORLangtJb1syYHATOBWQ@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 6, 2017 at 6:32 PM, Jonathan Corbet <corbet@lwn.net> wrote:

> The tricky part, of course, is finding a way to document the consensus on
> best practices without trying to "drive" it too hard.

I put some two very technical, not too subjective design
patterns in
Documentation/driver-model/design-patterns.txt

I have found myself on the verge of sending a patch adding
Rusty Russell's API design manifesto somewhere there
http://sweng.the-davies.net/Home/rustys-api-design-manifesto

The problem is mostly that I don't always feel what the
consensus is. With some subsystem maintainers happily
agree to disagree on so many things like inverse-christmas
tree includes or u_int8_t vs u8 it's easy to be discouraged.

I guess we should just be more bold? Who knows, maybe
noone even gets upset.

Apart from that I guess Documentation/process/* need to
be updated with best practices? Maybe that was the actual
initial question. I especially like management-style.rst,
that doc kicks ass.

Yours,
Linus Walleij
