Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4BC6721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:11:36 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6CD88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:11:35 +0000 (UTC)
Date: Wed, 10 Aug 2016 17:11:34 +0200
From: Joerg Roedel <joro@8bytes.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160810151134.GI1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org>
	<1470784802.2299.85.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1470784802.2299.85.camel@HansenPartnership.com>
Cc: Thorsten Leemhuis <regressions@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 09, 2016 at 04:20:02PM -0700, James Bottomley wrote:
> You can have bugzilla.kernel.org configured to send your list email
> when someone reports a new bug.
> 
> It used to actually be useful: you could reply and it would capture
> that in the bugzilla entry.  However, since the migration to bugzilla
> version 3, this has started to fail, so you need to add the reporter's
> cc directly as well now.
> 
> Once you get this configuration set up it means that bugzilla and email
> can be directly equivalent, it's just that only email will have the
> complete bug text (because bugzilla is lossy on the replies).

That would be start, at least. For my case, there is not even an IOMMU
category yet, I'll try to open a bug to change that and see what
happens :)


	Joerg
