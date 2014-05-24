Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DAD8387A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:51:16 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id DAC1C1FB24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 23:51:15 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 24 May 2014 02:08:15 +0200
Message-ID: <3411695.WyTGuDoQjr@vostro.rjw.lan>
In-Reply-To: <CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
References: <1872038.43ncqEMWSx@avalon> <7h61kxgwgm.fsf@paris.lan>
	<CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Magnus Damm <magnus.damm@gmail.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 23, 2014 10:32:24 AM Linus Walleij wrote:
> On Fri, May 23, 2014 at 2:39 AM, Kevin Hilman <khilman@linaro.org> wrote:
> 
> > Of course, for many "simple" platforms, runtime PM get/put just ends up
> > doing a clk_enable/disable, but on the platforms where runtime PM is
> > slightly more... um, "interesting"... just doing a clk enable/disable
> > won't do what you hope.
> 
> And drivers/base/power/clock_ops.c as invoked from
> drivers/sh/pm_runtime.c does exactly that simple thing using
> PM domains. Quite elegantly too, I'd say.

Well, thanks! :-)

> But now I get curious - can we define the "interesting PM" more
> generally, like get the details out? And I mean like for a few different
> platforms, I know OMAP with its hwmod is one such thing, but how
> much interesting stuff do we have out there that we know we must
> be able to handle?
> 
> Cc:ing in Peter De Schrijver who might have some interesting PM
> to tell us about :-)

I generally like to split PM into things that can be done by the driver
regardless of the underlying platform and things that are platform-dependent.
It generally is better to abstract the latter away from drivers in my opinion.

So if a given clock is guaranteed to be manageable in the same way on every
platform where the driver will ever run, that clock may be managed by the driver
itself.  However, if that clock is correlated with something else on one of
the platforms and the driver would need to take that into account, things
can get quite ugly relatively quickly.  And if one of those platforms is
ACPI, they are ugly right to start with. ;-)

Rafael
