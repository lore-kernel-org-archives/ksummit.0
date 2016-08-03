Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 446927AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:57:42 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C665F14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:57:41 +0000 (UTC)
Message-ID: <1470232658.2482.42.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>, Greg KH <greg@kroah.com>
Date: Wed, 03 Aug 2016 09:57:38 -0400
In-Reply-To: <alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-08-03 at 15:48 +0200, Jiri Kosina wrote:
> On Wed, 3 Aug 2016, Greg KH wrote:
> 
> > Real examples from now on please, if there are problems in the 
> > stable workflow that we have today, everyone needs to show it with
> > examples, I'm tired of seeing mental gymnastics around stable 
> > kernels just because it is "fun".
> 
> Let me pick an example I personally had a lot of issues quite some 
> time ago:
> 
> 	https://lkml.org/lkml/2013/4/22/259
> 
> This was a patch that got added to -stable to fix a problem that 
> didn't exist there. It caused system bustage almost immediately, 
> which indicates that very limited testing has been done prior to
> releasing the patch.
> 
> I believe that patches like this should really be caught during 
> -stable review; anyone familiar with the VFS code and actually 
> looking at the patch would notice immediately that it's fixing a bug 
> that doesn't exist in the code at all in the first place; that seems 
> to indicate that noone has actually explicitly reviewed it for 
> -stable, and therefore it's questionable whether it should have been
> applied.

This isn't a viable approach.  Firstly stable review is less thorough
than upstream review because the review mostly goes "yes, I already
reviewed this in upstream".  Secondly, if the upstream review didn't
catch the problems why would we suddenly catch them in a stable review?

The fact that possibly no-one reviewed the upstream patch indicates the
need for a better upstream process (so something like we now have in
SCSI which is no patches applied without one review tag), but expecting
stable to fix our upstream process isn't going to work.

James
