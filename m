Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1F58BA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:28:17 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id AE5E720248
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:28:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id C975212B187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:28:15 +0200 (CEST)
Date: Mon, 12 May 2014 18:28:14 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140512162814.GR12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
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

On Mon, May 12, 2014 at 09:16:11AM -0700, Andy Lutomirski wrote:
> On Mon, May 12, 2014 at 8:35 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Just to check: are you talking about disabling the IOMMU if there's a
> fault storm or disabling reporting of IOMMU faults?

Probably about disabling the reporting of IOMMU faults. An IOMMU that is
used for DMA-API mappings can not be disabled at runtime in a safe way.


	Joerg
