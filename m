Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A0A02AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:32:26 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2BED420354
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:32:26 +0000 (UTC)
Date: Mon, 12 May 2014 13:32:20 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140512173220.GC12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com> <20140512061332.GA10134@thin>
	<1399886585.879.108.camel@i7.infradead.org>
	<20140512162229.GY12708@titan.lakedaemon.net>
	<5370FAF8.7070209@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5370FAF8.7070209@zytor.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 09:46:48AM -0700, H. Peter Anvin wrote:
> On 05/12/2014 09:22 AM, Jason Cooper wrote:
> > 
> > Something like this?
> > 
> >  
> > -	pr_warn("------------[ cut here ]------------\n");
> > +	pr_warn("------------[ cut 10 lines above here ]------------\n");
> >  	pr_warn("WARNING: CPU: %d PID: %d at %s:%d %pS()\n",
> >  		raw_smp_processor_id(), current->pid, file, line, caller);
> >  
> 
> Why not just drop it?

I think there's value in being specific.  First time reporters tend to
quote too little when left to their own devices.  When I was more active
in the Gentoo community, I recall many times getting only the
"make[1]:..." lines or the "emerge" bits.  By the time you ask for more,
the data was lost.

thx,

Jason.
