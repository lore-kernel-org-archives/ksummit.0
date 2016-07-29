Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4E1D919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 22:11:14 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A766102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 22:11:14 +0000 (UTC)
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6TM8bgp022370 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 18:11:13 -0400
Received: from e28smtp06.in.ibm.com (e28smtp06.in.ibm.com [125.16.236.6])
	by mx0b-001b2d01.pphosted.com with ESMTP id 24fj2pxd1p-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 18:11:11 -0400
Received: from localhost
	by e28smtp06.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Sat, 30 Jul 2016 03:41:07 +0530
Received: from d28relay06.in.ibm.com (d28relay06.in.ibm.com [9.184.220.150])
	by d28dlp01.in.ibm.com (Postfix) with ESMTP id 55215E0040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:45:19 +0530 (IST)
Received: from d28av01.in.ibm.com (d28av01.in.ibm.com [9.184.220.63])
	by d28relay06.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6TMB2VZ39518338 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:41:02 +0530
Received: from d28av01.in.ibm.com (localhost [127.0.0.1])
	by d28av01.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6TMAxt7030991 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:41:01 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Jason Cooper <jason@lakedaemon.net>
Date: Fri, 29 Jul 2016 18:10:56 -0400
In-Reply-To: <20160728165728.GR4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<20160728165728.GR4541@io.lakedaemon.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469830256.23563.200.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
> Hi Andy,
> 
> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
> ...
> > I would like someone to explain why using the keyring mechanism for
> > this in the first place is a good idea.
> > 
> > As far as I can tell, the design goals of "keys trusted by the kernel
> > for modules, firmware, etc" are:
> > 
> >  - Keys are added at build time or, according to potentially
> > system-specific rules, at boot time.
> > 
> >  - Keys should specify what they're trusted *for*.
> 
> Well, I'd argue that keys should specify what they are *intended* for by
> the keyholder.  A useful security system could further restrict the key
> as needed.

We've already started.  Currently the kernel_read_file() and family of
functions provide the LSM hooks needed for verifying file signatures of
files read by the kernel.  The kernel_read_file_id enumeration is used
to differentiate between callers.  Based on this enumeration, the
*intended* for could be defined.  It would make sense to extend the IMA
policy language to support *intended* for.

Mimi

> e.g. the Microsoft key may say it's intended for "Verifying binaries
> issued by Microsoft".  A Linux user would want to restrict that to
> verifying updated boot shims for UEFI.
> 
> If nothing else, we need to grok the lessons learned from the CA
> system.
> 
> > Some keys should be trusted to load modules.  Some keys should be
> > trusted to load specific firmware files.
> 
> "Some keys should be restricted to verifying modules.  Some keys should
> be restricted to verifying specific firmware files." [0]
> 
> We'll know the system is designed correctly if we don't mind the
> Microsoft key being in the keyring.
> 
> There's definitely a larger conversation to be had here.  The Kernel is
> a *part* of the system, and should be a *part* of the security of the
> system.  Attempting to make it the whole enchilada risks making the same
> design errors as TrustZone.  "Just put all your eggs in this *other*
> basket.  No one can see in it, but it has access to everything on the
> system.  Oh, you have proprietary, complicated, un-reviewed DRM code
> that parses unsanitized input?  Sure, put it in there with the key
> manager.  No problem, it's magic."  Moving cheese. [1]
> 
> thx,
> 
> Jason.
> 
> [0] A wise man once told me to avoid the word 'trust' in conversations
> about security.  It's a vague term whose meaning varies from person to
> person and from situation to situation.
> 
> [1] https://bits-please.blogspot.de/2016/06/extracting-qualcomms-keymaster-keys.html
> 
