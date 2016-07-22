Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 781CC2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 06:14:21 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 255C0126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 06:14:19 +0000 (UTC)
Date: Fri, 22 Jul 2016 08:14:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Hannes Reinecke <hare@suse.com>
In-Reply-To: <18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
Message-ID: <alpine.DEB.2.10.1607220808110.3114@hadrien>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2054106350-1469168058=:3114"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2054106350-1469168058=:3114
Content-Type: TEXT/PLAIN; charset=windows-1252
Content-Transfer-Encoding: 8BIT



On Fri, 22 Jul 2016, Hannes Reinecke wrote:

> On 07/21/2016 05:05 PM, David Howells wrote:
> > I know it's not precisely what you're asking about, but there are a number of
> > types I would like to see:
> >
> >  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
> >      long when you want to deploy a flags field with which you're going to use
> >      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
> >      because you can't use bits 32-63 as they might not exist.
> >
> >      Some arches, x86_64 and ppc64 for example, can do 32-bit atomic ops, so
> >      we could make the field smaller in some cases.
> >
> >      We have a *lot* of flags fields in the kernel, so I wonder if we could
> >      actually save any space.
> >
> >      I seem to remember that the argument is (or was) that the type must be
> >      the natural word size of the machine, but how true is that in actuality?
> >
> >  (2) Differentiate non-BH spinlocks and BH spinlocks by type.
> >
> >      It seems like you can't mix BH and non-BH ops on a spinlock without
> >      lockdep barking.  If that's the case, let's make this a compile-time
> >      check.
> >
> >  (3) Let's use bool a lot more for boolean values as the compiler might be
> >      able to make better choices with it.
> >
> >
> > And whilst we're at it, a function that I'd like to see:
> >
> >  (1) on_list() in addition to list_empty() (and similar for other list types).
> >
> >      I know this would be kind of redundant as is would be implemented exactly
> >      the same as list_empty() - but semantically you're asking a different
> >      question.
>
> Actually that's one thing on my long-term to-do list: stricter range
> checking for kernel functions.
> enums are an obvious way to address that,

In C, enums are ints.  Is there a Gcc option that checks them?  For
example, the following program compiles fine with -Wall:

enum one {ONE=1, TWO=2, THREE=3};
enum two {ONEX=7, TWOX=8, THREEX=9};

int f (int x) {
  enum one o = ONE;
  enum two t = THREEX;
  if (x) o = t; else t = o;
  return 0;
}

> but there is a broad range of
> functions which return an errno value without ever exhausting the entire
> errno range.

I guess that almost all functions return only a few possible error codes?
But only a few call sites check the values either.

In terms of collecting this information, one would quickly run into
function pointers, but that would probably not be a insurmountable
obstacle.

julia

> Which makes it really hard from the calling function to figure out which
> errno values are legit and which can be considered an error.
>
> If we had a programmatic way of addressing that we could
> a) validate the usage of those functions
> and
> b) easily do error injection with systemtap as we would know which
> values the systemtap function should return
>
> Cheers,
>
> Hannes
> --
> Dr. Hannes Reinecke		               zSeries & Storage
> hare@suse.com			               +49 911 74053 688
> SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
> GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
> HRB 21284 (AG Nürnberg)
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
--8323329-2054106350-1469168058=:3114--
