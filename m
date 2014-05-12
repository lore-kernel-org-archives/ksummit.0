Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DD831ACB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:03:48 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7433C20319
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id 10E5612B16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:03:47 +0200 (CEST)
Date: Mon, 12 May 2014 17:03:46 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will.deacon@arm.com>
Message-ID: <20140512150346.GN12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509180510.GD23083@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20140509180510.GD23083@arm.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On Fri, May 09, 2014 at 07:05:10PM +0100, Will Deacon wrote:
> On Thu, May 08, 2014 at 01:37:03PM +0100, David Woodhouse wrote:
> > We may have various options for shutting it up — a PCI function level
> > reset, power cycling the offending device, or maybe just configuring the
> > IOMMU to *ignore* further errors from it, which would at least let the
> > system get on with doing something useful (and if we do, when do we
> > re-enable reporting?).
> 
> There's also the fun of non-PCI devices, where even if you can kill the
> offending device, there's not a specified way to ensure that it not longer
> has transactions in flight. Also, the fault reports have to go somewhere,
> so queues can fill up etc. etc.

I am of course also interested in this discussion. Fault handling is
currently implemented per IOMMU driver. There is no reason we should not
unify the way we report faults and handle misbehaving devices.

> I'd certainly be interested in this from the ARM side (I'm involved in the
> architecture of our next SMMU and we've discussed this a lot internally).

Interesting. I strongly hope the next SMMU will still work with the
current in-kernel SMMU driver :)


	Joerg
