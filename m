Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9575087A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:56:27 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 906301FB24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:56:26 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Kevin Hilman <khilman@linaro.org>
Date: Sat, 24 May 2014 02:13:26 +0200
Message-ID: <3549079.1nLkKeSWWW@vostro.rjw.lan>
In-Reply-To: <7hioowfre3.fsf@paris.lan>
References: <1872038.43ncqEMWSx@avalon>
	<CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
	<7hioowfre3.fsf@paris.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Magnus Damm <magnus.damm@gmail.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 23, 2014 08:26:12 AM Kevin Hilman wrote:
> Linus Walleij <linus.walleij@linaro.org> writes:
> 
> > On Fri, May 23, 2014 at 2:39 AM, Kevin Hilman <khilman@linaro.org> wrote:
> >
> >> Of course, for many "simple" platforms, runtime PM get/put just ends up
> >> doing a clk_enable/disable, but on the platforms where runtime PM is
> >> slightly more... um, "interesting"... just doing a clk enable/disable
> >> won't do what you hope.
> >
> > And drivers/base/power/clock_ops.c as invoked from
> > drivers/sh/pm_runtime.c does exactly that simple thing using
> > PM domains. Quite elegantly too, I'd say.
> >
> > But now I get curious - can we define the "interesting PM" more
> > generally, like get the details out? And I mean like for a few different
> > platforms, I know OMAP with its hwmod is one such thing, but how
> > much interesting stuff do we have out there that we know we must
> > be able to handle?
> 
> By "interesting", I was referring to some of the more complicated ones
> we have, such as OMAP (though I suspect other SoCs are equally
> complicated but just don't have their stuff documented and/or upstream
> yet so we don't know.)
> 
> That being said, I think any SoC that requires more than a clk_enable()
> to bring an IP block out of a low-power state, or clk_disable() to put
> it into a low-power state qualifies as "interesting" because it can no
> longer rely on the "simple" clock_ops.c you refer to above.
> 
> Stated differently, for most SoCs, fine-grained PM is a lot more than
> just clock management.  As soon as you have to do more than manage
> clocks, the generic clock_ops.c isn't good enough and you need your own
> PM domain (or use genpd.)

Well stated.

Also, as I said in one of the previous messages, if you consider a driver
as a piece of code that should work with different platforms (or different
SoCs if you will, but there's more to that), then it's quite clear that the
driver is probably not the right place to do all PM that's needed.

Rafael
