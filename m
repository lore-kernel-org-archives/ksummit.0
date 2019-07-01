Return-Path: <ajd@linux.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B866F265
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 01:35:56 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64518834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 01:35:56 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x611W3kP031680 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 21:35:55 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2tf15jbr1r-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 30 Jun 2019 21:35:55 -0400
Received: from localhost
	by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<ajd@linux.ibm.com>; Mon, 1 Jul 2019 02:35:53 +0100
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Mark Brown <broonie@kernel.org>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<s5hwoh4q2pn.wl-tiwai@suse.de> <20190629112055.GB2793@sirena.org.uk>
	<20190630130154.1b5cf991@coco.lan>
From: Andrew Donnellan <ajd@linux.ibm.com>
Date: Mon, 1 Jul 2019 11:35:48 +1000
MIME-Version: 1.0
In-Reply-To: <20190630130154.1b5cf991@coco.lan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-AU
Content-Transfer-Encoding: 7bit
Message-Id: <7d2e5632-819d-f5dd-072e-13d8b4e34abb@linux.ibm.com>
Cc: "'patchwork@lists.ozlabs.org'" <patchwork@lists.ozlabs.org>,
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

On 1/7/19 2:01 am, Mauro Carvalho Chehab wrote:
> Em Sat, 29 Jun 2019 12:20:55 +0100
> Mark Brown <broonie@kernel.org> escreveu:
> 
>> On Sat, Jun 29, 2019 at 09:18:28AM +0200, Takashi Iwai wrote:
>>
>>> BTW, can the URL be reached from patchwork?  That'd be really handy.
>>
>> Even better, could patchwork add it to the mboxes you download from it
>> like acks and so on?  Currently you can get the message ID so it's easy
>> to construct the link for things that are on LKML.
> 
> I'm all for it, but the problem with patchwork is that the tool may be used
> on non-kernel development and/or the ML may not be in lore.
> 
> Also, there are more than one patchwork instance. We use our own for
> Linux media (https://patchwork.linuxtv.org)[1].
> 
> On media, patchwork is used for both Kernel development and VDR
> development (an userspace tool) - with is a completely unrelated
> project (with different people behind it - and even a different mailing
> list).
> 
> So, whatever change at patchwork should be done in a way that the
> ML URL could be customized, and the new field would be added only
> if the URL is not blank.

[+ patchwork list]

I'll have a go at adding a project/list-specific archive prefix and 
exposing that in the web interface.

Regarding adding it to downloaded mboxes, if we do that I'd like it to 
be a separate option. A single patch can also land in patchwork multiple 
times via various lists, so the URL will depend on which project you're 
looking at.

-- 
Andrew Donnellan              OzLabs, ADL Canberra
ajd@linux.ibm.com             IBM Australia Limited
