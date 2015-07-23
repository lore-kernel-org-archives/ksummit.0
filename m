Return-Path: <atull@opensource.altera.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F1FD487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:58:19 +0000 (UTC)
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0062.outbound.protection.outlook.com [157.56.110.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D84EFE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:58:17 +0000 (UTC)
Date: Thu, 23 Jul 2015 16:20:10 -0500
From: atull <atull@opensource.altera.com>
To: Christoph Lameter <cl@linux.com>
In-Reply-To: <alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
Message-ID: <alpine.DEB.2.02.1507231552020.7582@linuxheads99>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
	<alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@denx.de>,
	Jason Gunthorpe <jgunthorpe@obsidianresearch.com>,
	Alan Tull <atull@altera.com>, yvanderv@altera.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 23 Jul 2015, Christoph Lameter wrote:

> On Thu, 23 Jul 2015, Linus Walleij wrote:
> 
> > >> > People that might be interested:
> 
> I would be very very interested in the subject matter. Anything that helps
> creating some abstraction layer that allows the open source development of
> tools on top.
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 

Jason is another person who may be interested in this topic:
Jason Gunthorpe = jgunthorpe at obsidianresearch.com

My work has been to get a uniform API for FPGA programming into the
kernel along with an interface for controlling reprogramming.  My
current patchset separates the two so that if the interface I am
proposing doesn't meet somebody's use needs, another interface
can be written to use the API functions.

http://marc.info/?l=linux-kernel&m=143714949226387&w=2

Topics that have been discussed in the mailing list could be included 
here:

 * At least two different basic use models:
   * FPGA as hardware (containing harware devices that need drivers)
   * FPGA as accelerator.  If FPGA is an accelerator, it could be
     allocated in a malloc-like thing - Alan Cox's proposal.
 * Device Tree Overlays as an interface in the "FPGA as Hardware" use,
   where loading an overlay will cause FPGA reconfiguration, bridges
   getting enabled, and devices being created, drivers probed.  The
   code for accomplishing all this is actually quite small.
 * Some use cases are complicated systems that need a lot of userspace
   to bring things up in a sequenced way (may need another interface
   with lots of userspace control and FPGA status available to
   userspace).
 * Security issues that arise if FPGA programming can be controlled
   from userspace.
 * How to control the bridges. Some hardware needs the bridges disabled
   during FPGA programming.  How to conceptualize this in the device tree.
 * It is likely that these different use cases will best be suited by
   different interfaces.

Alan Tull

atull at opensource.altera.com is a good email for me for mailing
list purposes (to avoid Outlook).
