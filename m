Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F07CABC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:51:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com
	[216.40.44.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B36F2145
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:51:20 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 0D71A4EB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:35:24 +0000 (UTC)
Date: Mon, 13 Jul 2015 13:35:19 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150713133519.22018176@gandalf.local.home>
In-Reply-To: <1436806006.20909.59.camel@infradead.org>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713123750.52d8a14d@gandalf.local.home>
	<1436806006.20909.59.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 17:46:46 +0100
David Woodhouse <dwmw2@infradead.org> wrote:

> I'm guilty of it myself. And I've also suffered from it. Sometimes,
> with a few years in between, I have even inflicted this pain on
> *myself* :)

Me too. I have to admit, that I've done the same with my own functions.
But I've become much better lately at documenting.

A lot of these functions are from years past. We should go back and try
to document them. Perhaps we may even find and fix a few bugs in doing
so.

I forgot who said it, but I remember reading a quote that stated "When
the code does not match the comments, they are probably both wrong".

-- Steve
