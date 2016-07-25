Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2941D71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 18:49:19 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65D742A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 18:49:18 +0000 (UTC)
Date: Mon, 25 Jul 2016 20:49:16 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160725184916.GR5537@wotan.suse.de>
References: <15569.1469184060@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15569.1469184060@warthog.procyon.org.uk>
Cc: Michael Matz <matz@suse.de>, agraf@suse.de,
	ksummit-discuss@lists.linuxfoundation.org, valentinrothberg@gmail.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 11:41:00AM +0100, David Howells wrote:
> Are there additional things we can get the compiler to do for us?  Some
> things I've seen brought up:
> 
>  (1) Additional __atomic_*() ops could be useful.  Suggestions I've heard
>      include direct LL/SC support - though the compiler people don't seem so
>      keen on that.
> 
>  (2) -mmodel=kernel flag so that the compiler can optimise better for the
>      kernel memory model.

Do we have enough compiler folk presentation attending? I know a few kernel
developers take on compiler features on their own these days, but I think
this is rather rare.

One idea that came up while evaluating further optimizations possible with
paravirtualized kernels was the possibility of supporting a thing called
"compiler multiverse" support [0] which would try to generalize the binary
patching technique used in the Linux kernel for use for any application. While
this topic and precise domain interests only a very few, a generic solution for
this sort of problem has uses outside of PV support, and even outside of Linux.
One of the side benefits of a thing could be for instance a mechanism to avoid
/ vet for dead code and vetting such code never runs. I've had my eyes on a
kernel-based solution for this, compiler multiverse support is a counter idea
by Alexander that came up in evaluating similar issues with other code bases
(qemu in particular) and trying to brain storm a more general solution.

I'll note, as it stands, the potential size constraints (even though only bool
has been considered), and the fact we already have a framework for dealing with
some of these sorts of things (although not exactly this very feature -- *yet*),
has put this feature lower on a priority list of things to write it is worth
mentioning should others out there working on the kernel likely be looking for
something similar to help address dead code and which would be generic as well.
A kernel-based-only solution pivoted on our existing alternatives model and
further features still being developed may enable such feature without this
compiler feature, but this is still in the works.

If this is a topic of interest folks required would be:

  o Michael Matz <matz@suse.de>
  o Valentin Rothberg <valentinrothberg@gmail.com>
  o Alexander Graf <agraf@suse.de>

This sort of feature is useful when distributions support large variability
and such variability incurs significant run time deltas, and dead code becomes
more of a concern.

[0] https://kernelnewbies.org/KernelProjects/compiler-multiverse

  Luis
