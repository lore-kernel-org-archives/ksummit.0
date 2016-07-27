Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB1E3955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:40:36 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D718D19F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:40:35 +0000 (UTC)
Date: Wed, 27 Jul 2016 14:40:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: David Woodhouse <dwmw2@infradead.org>
In-Reply-To: <1469533716.120686.281.camel@infradead.org>
Message-ID: <alpine.DEB.2.10.1607271439250.3117@hadrien>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Tue, 26 Jul 2016, David Woodhouse wrote:

> On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
> >
> > > I guess that almost all functions return only a few possible error codes?
> >
> > Precisely. If we had a way of specifying "the return value is an errno
> > with the possible values '0', '-EIO', and '-EINVAL'" that would be
> > _so_ cool.
>
> And perpetually out of date. Because functions call through to *other*
> functions which might return an errno outside the 'known' set.

If you have a script to calculate it, it doesn't have to be perpetually
out of date.  The problem is just the time to collect the information for
the whole kernel.  It could be a good intern project.

julia

>
> Any why would you *want* to know the precise set of errnos that a
> function might return, if not to deliberately code your error handling
> non-defensively?
>
> I can understand wanting to distinguish between errors and non-errors
> and ensure that the ranges cannot overlap. But IS_ERR_VALUE() typically
> reserves the whole range to -4095 (-MAX_ERRNO) for that. And I don't
> think we'd ever want to do anything different.
>
> In particular I don't want anyone ever saying "oh, -123 is a valid non-
> error return but no other negative numbers are. But that's OK because
> it'll never *actually* return an error of -ENOMEDIUM so there's no
> ambiguity."
>
> Of course, that's a silly example... but it's precisely where it sounds
> like you're going, from the above citation :)
>
> --
> David Woodhouse                            Open Source Technology Centre
> David.Woodhouse@intel.com                              Intel Corporation
