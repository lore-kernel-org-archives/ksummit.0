Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D7F3C5ACC0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:08:03 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 333FD20768
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:08:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="oKzyYuG0";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="U507xCj4"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 333FD20768
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kroah.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EAB1B26630;
	Fri, 13 Mar 2020 10:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82j9kyHSPMv0; Fri, 13 Mar 2020 10:08:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id CEC142324E;
	Fri, 13 Mar 2020 10:08:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9669CC089F;
	Fri, 13 Mar 2020 10:08:01 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 44DD5C0177;
 Fri, 13 Mar 2020 10:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EEE289593;
 Fri, 13 Mar 2020 10:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yb9PrLksw8BP; Fri, 13 Mar 2020 10:07:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83B2F89592;
 Fri, 13 Mar 2020 10:07:59 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id AB0A02267C;
 Fri, 13 Mar 2020 06:07:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Fri, 13 Mar 2020 06:07:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=1CNs5YOEikvzf5Ve+M+whn5X2VE
 UXw/yeljzd20doog=; b=oKzyYuG0nE5rQApCstTP3rrsOhRLi6g2BAzOcv2GbUt
 6nJQziROsDjz/u2k8KwFdAQGhNodSP0nXoJ0M/9JfwkGbBKFX7PezinBdVD3lnk+
 H0jSVrSLLFS+IuhiPT3rbz4DtSwAHKw3vrx44txOrhb2/AnmwbTkz/wM/0afymJd
 mRgooQR8/Z4DO7I+cXftXd/X9dVWTD64pfrAB5ZHKaEBXOdT2DotZpghcEmSXc44
 n6eXfGXVs7h49zpfcLtH8bjpGqfv7gaofHg7Nlcz8Xf3eutSsIBkqBBQpG11X1j6
 V5M7BlzvFVlBMOk4MvLSQys8qV2pBFD4p+US/uItayA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1CNs5Y
 OEikvzf5Ve+M+whn5X2VEUXw/yeljzd20doog=; b=U507xCj43LbXREWkBgtvAE
 K/N9PAKkHfCjSgInWeTEiz9zfZY6pchrc1UaOtZTWe5qsD8nVaX5uZhMG3mnkOJF
 dm3bh+kzkN/BPYmbQqzdznwivrtC77S8DgQft2Scf103x3dol9WQZvD1VXSludKP
 JHJReKk4EC8edLEvFDucFJon215OiWocs9ECBFCNUspsGdrvnpsrM+0TZpzV7pNQ
 S+lMCH+9WF4/KXzMuWLV9rsGjq+bxKxJzidia3Sh4CEiN5cR6JYLd/yOi5wGe91L
 wBVRg4MG983JJw5tCxDPinVN9B2+NwWauidJDqn0LHtCtBVCoTu+ZDb+hw+RJEWA
 ==
X-ME-Sender: <xms:fVtrXmmIdaGsVuDHtiHGJ1IrjbxilhL5iJIpXCkP2TI87h83ozCzuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvjedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepkhgvrhhnvghlrd
 horhhgnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:fVtrXlXCXN4IYT-OQN6zTAOlzrK0ozQEpTjN8h3Pc7rO5PYZ3_uhWA>
 <xmx:fVtrXqsyF2oaW8LL8Qk0b8Dy0Xfyx9n_jUV_AEd-KXMt5O6s6-8j5A>
 <xmx:fVtrXoo-u1Jxf9iIAGLB3YYhdmSJIGrHKA-pjGBZITsJ7hcdlI3W7Q>
 <xmx:fltrXqVPbU5sFuR30KFOlIJLS1yttH_Gp8oDZQGu2jdTafKhPYac-g>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 72D343280059;
 Fri, 13 Mar 2020 06:07:57 -0400 (EDT)
Date: Fri, 13 Mar 2020 11:07:55 +0100
From: Greg KH <greg@kroah.com>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <20200313100755.GA2161605@kroah.com>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Fri, Mar 13, 2020 at 10:41:57AM +0100, Vlastimil Babka wrote:
> On 3/13/20 10:35 AM, Greg KH wrote:
> >> Not that I'm saying there's an easy solution, but obviously kernel.org
> >> account is not as problem free as you might think.
> > 
> > We are not saying it is "problem free", but what really is the problem
> > with it?
> 
> IIUC there is no problem for its current use, but it would be rather restrictive
> if it was used as the only criterion for being able to vote for TAB remotely.

Given that before now, there has not be any way to vote for the TAB
remotely, it's less restrictive :)

These are "baby steps" we are taking here, to try to allow for remote
voting.  We are not saying this is the end-all-be-all solution, but you
have to give Laura credit for coming up with this as "better than
nothing" which is what has been the case for the past decade or so.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
