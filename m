Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50BA4C23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:29:01 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1BCDAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:29:00 +0000 (UTC)
Date: Mon, 24 Aug 2015 13:28:56 -0700
From: josh@joshtriplett.org
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150824202856.GA17386@cloud>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1440446941.2201.32.camel@HansenPartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 01:09:01PM -0700, James Bottomley wrote:
> On Mon, 2015-08-24 at 09:35 -0700, Kees Cook wrote:
> > On Mon, Aug 24, 2015 at 5:29 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> > > On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:
> > >
> > >> There are also potentially promising approaches to mitigation with other
> > >> technologies such as KASan and gcc plugins, as well as evolving hardware
> > >> features.
> > >
> > > What I've discovered when running KASan the last few weeks is that
> > > this points back to the question of tests ... I've been using Trinity
> > > to find bugs, but it is more likely to kill itself or cause OOM than
> > > trigger any boundary overrun bugs.
> > >
> > > Kselftest may be helpful, but basically any loads that heavily
> > > exercise the kernel internals are helpful to harden the kernel.
> > > Some of these are custom test suites I suspect. Any good hints
> > > for a simple embedded developer like me?
> > 
> > I agree with the sentiment here, but not with the language. Finding
> > flaws (which is what selftests, KASan, Trinity, etc do) isn't
> > hardening. Hardening is stopping the exploitation of flaws.
> 
> Um, forgive me for being dense, but doesn't fixing the flaws stop their
> exploitation?  In any event, Hardening means "reducing the attack
> surface" and that encompasses both active and passive means (including
> actual bug fixing).

There's a difference between fixing an individual vulnerability
discovered by fuzzing and other tools, and fixing (or at least making it
easier to do the right thing for) an entire *class* of
vulnerabilities.  We should fix the former when we find them, but any
time we see more than a couple bugs of the same time, we should be
asking "how can we never have another?".

- Josh Triplett
