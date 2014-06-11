Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F1502A04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:26:33 +0000 (UTC)
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5EFA0201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 22:26:33 +0000 (UTC)
Received: by mail-qc0-f180.google.com with SMTP id i17so691785qcy.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 15:26:32 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <1402525074.2523.71.camel@dabdike.int.hansenpartnership.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<20140612075355.4b0d1f5a@canb.auug.org.au>
	<CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
	<1402525074.2523.71.camel@dabdike.int.hansenpartnership.com>
From: Roland Dreier <roland@kernel.org>
Date: Wed, 11 Jun 2014 15:26:12 -0700
Message-ID: <CAG4TOxPCX6mrUc4FGeUfQkCsXjWZjm=5ie3TjSXvSjT0oJps=A@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Jun 11, 2014 at 3:17 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> This would eventually become like CONFIG_EXPERIMENTAL before somebody
> put it out of its misery: a pointless thing which everybody enables.

Probably so.

> Could we just step back and ask what the burning need to do this (at
> least for drivers; I understand the ABI deprecation headache) is?  Most
> driver code for obsolete things harmlessly compiles; why bother trying
> to hunt them down and shoot them when they're not really causing
> offence?

Every time a developer wants to change a core API, that developer
needs to patch every driver that uses the API.  Every old, unused,
bitrotten driver we have in the tree is 100% wasted work, and often a
substantial amount of work because it's really hard even to understand
how those drivers are (mis)using the API being changed.

 - R.
