Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E3D0BF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:09:05 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 624871FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:09:04 +0000 (UTC)
Message-ID: <1440446941.2201.32.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Mon, 24 Aug 2015 13:09:01 -0700
In-Reply-To: <CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2015-08-24 at 09:35 -0700, Kees Cook wrote:
> On Mon, Aug 24, 2015 at 5:29 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:
> >
> >> There are also potentially promising approaches to mitigation with other
> >> technologies such as KASan and gcc plugins, as well as evolving hardware
> >> features.
> >
> > What I've discovered when running KASan the last few weeks is that
> > this points back to the question of tests ... I've been using Trinity
> > to find bugs, but it is more likely to kill itself or cause OOM than
> > trigger any boundary overrun bugs.
> >
> > Kselftest may be helpful, but basically any loads that heavily
> > exercise the kernel internals are helpful to harden the kernel.
> > Some of these are custom test suites I suspect. Any good hints
> > for a simple embedded developer like me?
> 
> I agree with the sentiment here, but not with the language. Finding
> flaws (which is what selftests, KASan, Trinity, etc do) isn't
> hardening. Hardening is stopping the exploitation of flaws.

Um, forgive me for being dense, but doesn't fixing the flaws stop their
exploitation?  In any event, Hardening means "reducing the attack
surface" and that encompasses both active and passive means (including
actual bug fixing).

>  The
> hardening the kernel needs is about taking away exploitation tools,
> not killing bugs. (Though killing bugs is still great.)

It's both.  One of the old standards for attacking C code was buffer
overruns.  Remove those via detection tools and you reduce the attack
surface.

> As an example, making the kernel code memory read-only means an
> attacker cannot just directly change the kernel's execution path when
> they use an arbitrary memory-writing flaw. (This feature is mostly
> enabled via CONFIG_DEBUG_RODATA, and was very recently added to ARM,
> though isn't at 100% coverage for all the physical memory aliases.)

Yes, I like this one a lot.  Adding mechanisms that don't increase
complexity like this are good active means.  However, I become less
enamoured of things like selinux and grsecurity which add complexity in
the name of active attack surface reduction.  That's not to say never do
it, it's just to say that attack surface is directly related to
complexity.

James
