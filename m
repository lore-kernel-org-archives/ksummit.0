Return-Path: <SRS0=5ifu=XG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C24DC49ED6
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 11:03:29 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D31D2089F
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 11:03:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="oQ5g/h6c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D31D2089F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BC9BB1293;
	Wed, 11 Sep 2019 11:03:28 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A043BEA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 11:03:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5AC29832
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 11:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209;
	h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1W6YCiM140B4UoknlS3lA6Z7ErGzTYhOjkJmX6U4a1E=;
	b=oQ5g/h6ceWpPZocTpbEJRLG1y
	kal2vwvHvSWkTCA8YluLz4jxo1/lK0w0wSTyQ4j8GBTESAV2o9DYk+2hqliLKW+dlRW5K5FecRooE
	JLAxoxaD6CufvnCKkmfW5UfP2SDuSYcYqUaj6p4QHIbL0xeQR5nuIeYBlpQfpi6y3mGFueiLUnjfY
	L6lznGW6fSz13twdwGaVIuELEPQV14AdH+zURqJ/5kz4rG16WN69FwpTAjh+wNtFrH6/aTAfJXjwm
	gwFO27S5f1RCDtuIfMwE6FnMMmo+bqjFCqhHuW6/WGu2jZtf7QoHHbU0/IxIr2nw3H/1bANG7U4Ub
	cAv+PO6uQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
	Linux)) id 1i80PE-0002xi-1E; Wed, 11 Sep 2019 11:03:24 +0000
Date: Wed, 11 Sep 2019 04:03:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Stephen Boyd <sboyd@kernel.org>
Message-ID: <20190911110323.GA10765@infradead.org>
References: <CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<20190911095305.36104206A1@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911095305.36104206A1@mail.kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
	bombadil.infradead.org. See http://www.infradead.org/rpr.html
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Wed, Sep 11, 2019 at 02:53:04AM -0700, Stephen Boyd wrote:
> > Independent of the exact process, a git branch for every series would
> > be great. As a maintainer, I would love to be able to do 'git fetch
> > some-remote <message-id>'. I don't really care to write and maintain
> > code to apply series and figure out what branch they apply to. That
> > code already exists and I'm sure is more robust.
> 
> +1. It would be huge if 'git am' could gain the ability to apply an mbox
> (which it can already do) and parse out the tags to add them to all the
> right patches. I have a script that mostly does this but it needs some
> more work because sometimes people reply to the cover letter and say
> their reviewed-by tag applies to patches 1-3, 5 and 6 and parsing that
> isn't necessarily easy.

Yes, that would help a lot.  Any ignoring cover letters and allowing
for normal diff fuzz so that it doesn't completely fail with the
slightest movement in lines.  And a vaguely git-rebase like way
to resolve conflicts instead of the current mess requring a manual
patch application.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
