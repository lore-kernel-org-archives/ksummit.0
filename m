Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1152B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:17:38 +0000 (UTC)
Received: from namei.org (tundra.namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EEBF174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:17:38 +0000 (UTC)
Date: Tue, 25 Aug 2015 06:17:30 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1440446941.2201.32.camel@HansenPartnership.com>
Message-ID: <alpine.LRH.2.20.1508250612360.22949@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Mon, 24 Aug 2015, James Bottomley wrote:

> Um, forgive me for being dense, but doesn't fixing the flaws stop their
> exploitation?  In any event, Hardening means "reducing the attack
> surface" and that encompasses both active and passive means (including
> actual bug fixing).

Hardening is mitigating those flaws.  You'll never find every flaw, but 
you can mitigate against entire classes of flaws being exploited.

> >  The
> > hardening the kernel needs is about taking away exploitation tools,
> > not killing bugs. (Though killing bugs is still great.)
> 
> It's both.  One of the old standards for attacking C code was buffer
> overruns.  Remove those via detection tools and you reduce the attack
> surface.

In this case, we're specifically talking about hardening the kernel to 
mitigate exploitation of flaws.  Kernel self-protection may be a better 
term (and recently surfaced in an NSA presentation at LSS: p.23 of

http://kernsec.org/files/lss2015/lss2015_selinuxinandroidlollipopandm_smalley.pdf


-- 
James Morris
<jmorris@namei.org>
