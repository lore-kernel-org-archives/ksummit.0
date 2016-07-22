Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 44D662C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 18:19:51 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E76DA297
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 18:19:50 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id g202so7676383pfb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:19:50 -0700 (PDT)
Date: Fri, 22 Jul 2016 11:19:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160722181946.GD5036@dtor-ws>
References: <20160721233333.GD9841@dtor-ws>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<11488.1469170986@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11488.1469170986@warthog.procyon.org.uk>
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

On Fri, Jul 22, 2016 at 08:03:06AM +0100, David Howells wrote:
> Dmitry Torokhov <dmitry.torokhov@gmail.com> wrote:
> 
> > >  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
> > >      long when you want to deploy a flags field with which you're going to use
> > >      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
> > >      because you can't use bits 32-63 as they might not exist.
> > 
> > What is wrong with using DECLARE_BITMAP()? It will allocate exactly as
> > many unsigned longs
> 
> You missed my point.  *unsigned long* is the issue.  The majority of the time
> that wastes 32 bits on a 64-bit machine - especially when we don't need that
> many flags.  On some 64-bit arches we could use unsigned int instead.

I was responding to your statement where you were saying you could not
use bits 32 - 63 as they might not exist. If you have so many bits then
DECLARE_BITMAP is useful. Otherwise we can simply use u{8|16|32} and
BIT() macro.

Thanks.

-- 
Dmitry
