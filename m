Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 04CADA83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 00:07:33 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FB6C201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 00:07:32 +0000 (UTC)
Message-ID: <5398EF37.6020309@zytor.com>
Date: Wed, 11 Jun 2014 17:07:19 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Guenter Roeck <linux@roeck-us.net>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
In-Reply-To: <20140611175433.GA10462@roeck-us.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: boris.ostrovsky@oracle.com, david.vrabel@citrix.com,
	ksummit-discuss@lists.linuxfoundation.org,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
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

On 06/11/2014 10:54 AM, Guenter Roeck wrote:
> That is a bit different to "users are using but less and less". Personally 
> I would not mind leaving code in the kernel as long as it is used, but
> it would be great if we had some rule that a file/driver which did
> not compile for X releases (pick a preferred number for X - two years 
> worth of releases ?) can be removed.

This is the problem, though: the code can easily compile well past the
point of anyone using it, because well-meaning maintainers is keeping it
from falling apart completely, often at substantial cost.

	-hpa
