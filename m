Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C9DC724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 11:19:35 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6DB13172
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 11:19:34 +0000 (UTC)
Date: Thu, 4 Aug 2016 13:19:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: NeilBrown <neilb@suse.com>
In-Reply-To: <87a8gtngx9.fsf@notabene.neil.brown.name>
Message-ID: <alpine.DEB.2.10.1608041319010.7967@hadrien>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<87a8gtngx9.fsf@notabene.neil.brown.name>
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



On Thu, 4 Aug 2016, NeilBrown wrote:

> On Fri, Jul 22 2016, Julia Lawall wrote:
> >
> > In C, enums are ints.  Is there a Gcc option that checks them?  For
> > example, the following program compiles fine with -Wall:
> >
> > enum one {ONE=1, TWO=2, THREE=3};
> > enum two {ONEX=7, TWOX=8, THREEX=9};
> >
> > int f (int x) {
> >   enum one o = ONE;
> >   enum two t = THREEX;
> >   if (x) o = t; else t = o;
> >   return 0;
> > }
>
> However with this slight change (and line-numbers added for clarity)
>
>      1
>      2	enum one {ONE=1, TWO=2, THREE=3} __attribute((bitwise));
>      3	enum two {ONEX=7, TWOX=8, THREEX=9} __attribute((bitwise));
>      4
>      5	int f (int x) {
>      6	  enum one o = ONE;
>      7	  enum two t = THREEX;
>      8	  if (x) o = t; else t = o;
>      9	  return 0;
>     10	}
>
>
> sparse complains:
>
> /tmp/test.c:8:14: warning: mixing different enum types
> /tmp/test.c:8:14:     int enum two  versus
> /tmp/test.c:8:14:     int enum one
> /tmp/test.c:8:26: warning: mixing different enum types
> /tmp/test.c:8:26:     int enum one  versus
> /tmp/test.c:8:26:     int enum two
>
> Is that what you were hoping for?

Yes, perfect, thanks.

julia
