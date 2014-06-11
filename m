Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 949E8AB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 17:54:43 +0000 (UTC)
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E9CB20326
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 17:54:43 +0000 (UTC)
Received: by mail-pa0-f46.google.com with SMTP id eu11so60408pac.19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 10:54:43 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 11 Jun 2014 10:54:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140611175433.GA10462@roeck-us.net>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53976840.40306@zytor.com>
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

On Tue, Jun 10, 2014 at 01:19:12PM -0700, H. Peter Anvin wrote:
> On 06/10/2014 01:12 PM, Konrad Rzeszutek Wilk wrote:
> > Hey,
> > 
> > I would want to propose a topic on removing code in Linux that
> > users are using - but they are doing it less and less and it
> > mostly is tied in with older hardware. Specifically how to do
> > this transition properly - and if we want to define some checklist
> > /policy to do it via.
> > 
> 
> I second this.  Right now deprecation is entirely ad hoc... usually in
> the form "this hasn't compiled for X releases and noone noticed", which
> makes it hard to do *controlled* deprecation...
> 
That is a bit different to "users are using but less and less". Personally 
I would not mind leaving code in the kernel as long as it is used, but
it would be great if we had some rule that a file/driver which did
not compile for X releases (pick a preferred number for X - two years 
worth of releases ?) can be removed.

Guenter
