Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 760D1951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:25:21 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 535001A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:25:20 +0000 (UTC)
Message-ID: <1469625916.27356.18.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Julia Lawall <julia.lawall@lip6.fr>, David Woodhouse <dwmw2@infradead.org>
Date: Wed, 27 Jul 2016 09:25:16 -0400
In-Reply-To: <alpine.DEB.2.10.1607271439250.3117@hadrien>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
	<alpine.DEB.2.10.1607271439250.3117@hadrien>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-07-27 at 14:40 +0200, Julia Lawall wrote:
> 
> On Tue, 26 Jul 2016, David Woodhouse wrote:
> 
> > On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
> > > 
> > > > I guess that almost all functions return only a few possible
> > > > error codes?
> > > 
> > > Precisely. If we had a way of specifying "the return value is an 
> > > errno with the possible values '0', '-EIO', and '-EINVAL'" that 
> > > would be _so_ cool.
> > 
> > And perpetually out of date. Because functions call through to 
> > *other* functions which might return an errno outside the 'known'
> > set.
> 
> If you have a script to calculate it, it doesn't have to be 
> perpetually out of date.  The problem is just the time to collect the 
> information for the whole kernel.  It could be a good intern project.

It's a lot of pain, for what gain?  What, practically would we get as a
benefit if we did this?  Every time I see proposals about scripting
checks in the kernel, I'm reminded of our section mismatch debacle. 
 Life is so much easier without every kernel release generating 100s of
patches trying to correct section mismatches which didn't matter in the
first place ...

James
