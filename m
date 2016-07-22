Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C5116C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:43:58 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3748722C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:43:58 +0000 (UTC)
Date: Fri, 22 Jul 2016 12:43:55 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20160722194355.GA28913@roeck-us.net>
References: <20160721233333.GD9841@dtor-ws>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<11488.1469170986@warthog.procyon.org.uk>
	<20160722181946.GD5036@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160722181946.GD5036@dtor-ws>
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

On Fri, Jul 22, 2016 at 11:19:46AM -0700, Dmitry Torokhov wrote:
> On Fri, Jul 22, 2016 at 08:03:06AM +0100, David Howells wrote:
> > Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:
> > 
> > > >  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
> > > >      long when you want to deploy a flags field with which you're going to use
> > > >      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
> > > >      because you can't use bits 32-63 as they might not exist.
> > > 
> > > What is wrong with using DECLARE_BITMAP()? It will allocate exactly as
> > > many unsigned longs
> > 
> > You missed my point.  *unsigned long* is the issue.  The majority of the time
> > that wastes 32 bits on a 64-bit machine - especially when we don't need that
> > many flags.  On some 64-bit arches we could use unsigned int instead.
> 
> I was responding to your statement where you were saying you could not
> use bits 32 - 63 as they might not exist. If you have so many bits then
> DECLARE_BITMAP is useful. Otherwise we can simply use u{8|16|32} and
> BIT() macro.
> 
... unless one needs to statically initialize the bitmap. At least for my part
I have not been able to find a means to initialize a static bitmap with anything
but 0. Effectively this means that such bitmaps have to use u{8|16|32|64}
and thus can not use any of the bitmap operations, or one has to use unsigned
long and thus can only use 32 bit.

Guenter
