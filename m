Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2869A7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:48:33 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF274186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:48:31 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:48:29 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20160803132607.GA31662@kroah.com>
Message-ID: <alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 3 Aug 2016, Greg KH wrote:

> Real examples from now on please, if there are problems in the stable 
> workflow that we have today, everyone needs to show it with examples, 
> I'm tired of seeing mental gymnastics around stable kernels just because 
> it is "fun".

Let me pick an example I personally had a lot of issues quite some time 
ago:

	https://lkml.org/lkml/2013/4/22/259

This was a patch that got added to -stable to fix a problem that didn't 
exist there. It caused system bustage almost immediately, which indicates 
that very limited testing has been done prior to releasing the patch.

I believe that patches like this should really be caught during -stable 
review; anyone familiar with the VFS code and actually looking at the 
patch would notice immediately that it's fixing a bug that doesn't exist 
in the code at all in the first place; that seems to indicate that noone 
has actually explicitly reviewed it for -stable, and therefore it's 
questionable whether it should have been applied.

Has anything changed in the process that'd just make patches like this one 
to be not merged these days?

Thanks,

-- 
Jiri Kosina
SUSE Labs
