Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 70E0B48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:07:24 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0C40E20318
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id 2C3C312B187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:07:23 +0200 (CEST)
Date: Mon, 12 May 2014 17:07:22 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140512150722.GO12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 12:43:09AM +0200, Daniel Vetter wrote:
> So I think having some iommu storm handling (like we have for
> interrupts in general and a lot of other things) would go a long way
> towards the goal of enabling iommus everywhere.

Right, the developer use-case needs also be taken into account. We could
easily ignore a device after it did something wrong to get rid of
io-page-fault or interupt storms. But we also need a way to tell the
kernel to unignore the device later :)

	
	Joerg
