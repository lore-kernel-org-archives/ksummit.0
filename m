Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 553FD70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 16:38:44 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 17FD61FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 16:38:44 +0000 (UTC)
Message-ID: <1399480721.2227.31.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 07 May 2014 09:38:41 -0700
In-Reply-To: <1399462342.2996.99.camel@shinybook.infradead.org>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com> <1399051229.2202.49.camel@dabdike>
	<1399462342.2996.99.camel@shinybook.infradead.org>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-05-07 at 12:32 +0100, David Woodhouse wrote:
> On Fri, 2014-05-02 at 10:20 -0700, James Bottomley wrote:
> > If we do this, I think we should have a small number of options related
> > to use case ... say something like a secure router kernel
> > CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
> > need.
> 
> Have you seen the amount of stuff that OpenWRT packages? :)

Yes ... I use it (and actually had to build it a while ago for one of my
unsupported routers).  *I* like running the kitchen sink from my router,
but that's probably not the *normal* use, so CONFIG_SECURE_ROUTER would
probably not be for general OpenWRT.

James
