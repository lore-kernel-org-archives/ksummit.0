Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7EB2B1C99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:42:04 +0000 (UTC)
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DBF187B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:42:02 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (unknown [217.70.183.195])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id 974B43A5B89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:02:27 +0000 (UTC)
Date: Sat, 6 Jul 2019 16:02:15 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20190706140215.GD12409@piout.net>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
	<87zhlt17ue.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zhlt17ue.fsf@concordia.ellerman.id.au>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/07/2019 13:24:57+1000, Michael Ellerman wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> > Cc: tags are another git artefact.  They're how you tell git-send-email 
> > where to send copies of the patch for review or notice, but they don't
> > really provide any intrinsic historical value.
> 
> Right, but it wasn't clear to me if anyone felt that they *do* have
> historical value. Seems not.
> 

Some maintainers do think it is useful:

https://lore.kernel.org/lkml/20171128161014.GG27409@jhogan-linux.mipstec.com/


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
