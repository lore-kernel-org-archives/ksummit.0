Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A5B992B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:32:26 +0000 (UTC)
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C42D32022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:32:25 +0000 (UTC)
Received: by mail-ob0-f173.google.com with SMTP id wm4so5072885obc.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 01:32:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7h61kxgwgm.fsf@paris.lan>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <31131010.huPvrnkcye@avalon>
	<7h61kxgwgm.fsf@paris.lan>
Date: Fri, 23 May 2014 10:32:24 +0200
Message-ID: <CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Kevin Hilman <khilman@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 23, 2014 at 2:39 AM, Kevin Hilman <khilman@linaro.org> wrote:

> Of course, for many "simple" platforms, runtime PM get/put just ends up
> doing a clk_enable/disable, but on the platforms where runtime PM is
> slightly more... um, "interesting"... just doing a clk enable/disable
> won't do what you hope.

And drivers/base/power/clock_ops.c as invoked from
drivers/sh/pm_runtime.c does exactly that simple thing using
PM domains. Quite elegantly too, I'd say.

But now I get curious - can we define the "interesting PM" more
generally, like get the details out? And I mean like for a few different
platforms, I know OMAP with its hwmod is one such thing, but how
much interesting stuff do we have out there that we know we must
be able to handle?

Cc:ing in Peter De Schrijver who might have some interesting PM
to tell us about :-)

Yours,
Linus Walleij
