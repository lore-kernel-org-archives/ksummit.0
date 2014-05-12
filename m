Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4C47F4D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:47:25 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 195B920206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:47:25 +0000 (UTC)
Message-ID: <5370FAF8.7070209@zytor.com>
Date: Mon, 12 May 2014 09:46:48 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Jason Cooper <jason@lakedaemon.net>, David Woodhouse <dwmw2@infradead.org>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<53703416.5070400@zytor.com> <20140512061332.GA10134@thin>
	<1399886585.879.108.camel@i7.infradead.org>
	<20140512162229.GY12708@titan.lakedaemon.net>
In-Reply-To: <20140512162229.GY12708@titan.lakedaemon.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/12/2014 09:22 AM, Jason Cooper wrote:
> 
> Something like this?
> 
>  
> -	pr_warn("------------[ cut here ]------------\n");
> +	pr_warn("------------[ cut 10 lines above here ]------------\n");
>  	pr_warn("WARNING: CPU: %d PID: %d at %s:%d %pS()\n",
>  		raw_smp_processor_id(), current->pid, file, line, caller);
>  

Why not just drop it?

	-hpa
