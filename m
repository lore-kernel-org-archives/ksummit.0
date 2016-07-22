Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58AC96C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:13:18 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88A3531B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:13:17 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 22 Jul 2016 21:12:52 +0200
Message-ID: <4469153.o5Z55ntOy1@wuerfel>
In-Reply-To: <b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Dan Carpenter <dan.carpenter@oracle.com>
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

On Friday, July 22, 2016 3:57:40 PM CEST Hannes Reinecke wrote:
> On 07/22/2016 08:14 AM, Julia Lawall wrote:
> > On Fri, 22 Jul 2016, Hannes Reinecke wrote:
> >>
> >> Actually that's one thing on my long-term to-do list: stricter range
> >> checking for kernel functions.
> >> enums are an obvious way to address that,

I think smatch has some useful checks in that area, and using a gcc
plugin to have a similar implementation could help do the checks
by default (if there are not too many false positives). 

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
> > 
> From what I know GCC only checks enums if they are used in a switch()
> statement. Other types are not checked.

I think a common bug is having a function that takes an enum argument
type but that is called with integer argument, or a different
enum. This might even be something that could be added to a gcc
version by default.

	Arnd
