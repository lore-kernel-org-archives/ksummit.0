Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E71C4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 23:33:37 +0000 (UTC)
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 238D513D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 23:33:37 +0000 (UTC)
Received: by mail-pa0-f67.google.com with SMTP id ez1so5914573pab.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 16:33:37 -0700 (PDT)
Date: Thu, 21 Jul 2016 16:33:33 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160721233333.GD9841@dtor-ws>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <25598.1469113525@warthog.procyon.org.uk>
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

On Thu, Jul 21, 2016 at 04:05:25PM +0100, David Howells wrote:
> I know it's not precisely what you're asking about, but there are a number of
> types I would like to see:
> 
>  (1) A 'bits' and maybe a 'bits64' type.  Currently you have to use unsigned
>      long when you want to deploy a flags field with which you're going to use
>      test_bit() and co. - but this typically wastes 32 bits on a 64-bit arch
>      because you can't use bits 32-63 as they might not exist.

What is wrong with using DECLARE_BITMAP()? It will allocate exactly as
many unsigned longs as needed (so it will be 1 on 64 and 2 on 32 arches
for bitmap in range [33, 64]).

Thanks.

-- 
Dmitry
