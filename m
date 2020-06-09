Return-Path: <SRS0=h0km=7W=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61429C433E1
	for <ksummit-discuss@archiver.kernel.org>; Tue,  9 Jun 2020 20:53:59 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7E8220737
	for <ksummit-discuss@archiver.kernel.org>; Tue,  9 Jun 2020 20:53:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7E8220737
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lwn.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 100502441E;
	Tue,  9 Jun 2020 20:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUjQT3mSia-D; Tue,  9 Jun 2020 20:53:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0941920468;
	Tue,  9 Jun 2020 20:53:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0529C088C;
	Tue,  9 Jun 2020 20:53:56 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27262C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  9 Jun 2020 20:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EDB7223335
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  9 Jun 2020 20:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7P-eRLUbQZN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  9 Jun 2020 20:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 63DDC20468
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  9 Jun 2020 20:53:55 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 8FB4E537
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  9 Jun 2020 20:53:54 +0000 (UTC)
Date: Tue, 9 Jun 2020 14:53:53 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200609145353.628a342d@lwn.net>
Organization: LWN.net
MIME-Version: 1.0
Subject: [Ksummit-discuss] [TECH TOPIC] Documentation
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

The long process of converting the kernel's documentation into RST is
finally coming to an end...what has that bought us?  We have gone from a
chaotic pile of incomplete, crufty, and un-integrated docs to a slightly
better organized pile of incomplete, crufty, slightly better integrated
docs.  Plus we have the infrastructure to make something better from here.

What are the next steps for kernel documentation?  What would we really
like our docs to look like, and how might we find the resources to get
them to that point?  What sorts of improvements to the build
infrastructure would be useful?  I'll come with some ideas (some of which
you've certainly heard before) but will be more interested in listening.

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
