Return-Path: <SRS0=0zO2=74=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86FBC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon, 15 Jun 2020 15:58:48 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B744320679
	for <ksummit-discuss@archiver.kernel.org>; Mon, 15 Jun 2020 15:58:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B744320679
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 749D724DD1;
	Mon, 15 Jun 2020 15:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFy7CnAVSrnB; Mon, 15 Jun 2020 15:58:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8BE0523408;
	Mon, 15 Jun 2020 15:58:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 543CFC0890;
	Mon, 15 Jun 2020 15:58:46 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89587C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FB4086375
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjD7Kgy7EGlv
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BCDBD86283
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 15:58:43 +0000 (UTC)
Received: from callcc.thunk.org (pool-100-0-195-244.bstnma.fios.verizon.net
 [100.0.195.244]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 05FFweKd027351
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 11:58:40 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id D9BEA42026D; Mon, 15 Jun 2020 11:58:39 -0400 (EDT)
Date: Mon, 15 Jun 2020 11:58:39 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: linux-kernel@vger.kernel.org, inux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, netdev@vger.kernel.org, linux-block@vger.kernel.org,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20200615155839.GF2863913@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] Maintainers / Kernel Summit 2020 submissions
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

So far, we have received 5 techinical topic submissions for the Kernel
Summit; thanks to those who have submitted.  If you have some
additional ideas of technical topics you'd like to discuss at the
Kernel Summit, please submit them this week.  For details on how to
proposal a topic for the Kernel Summit, please see [1].

[1] https://lore.kernel.org/r/20200515163956.GA2158595@mit.edu

We have not, so far, gotten any submissions for the Maintainer's
Summit.  It's unclear whether this is because people have been
distracted with issues relating to the pandemic situation, or whether
things have been going swimingly from a process perspective, or if
people are just not as motivated to suggest topics if they can't
discuss them in a face-to-face setting as opposed to a virtual setting
---- or some combination of all of the above.

If you do have some ideas for things that you think are worth the
attention of a Maintainer's Summit this year, please kindly submit
them this week.  (Again, please see [1] for submission instructions.)
If we do not get sufficient submissions, we will need to consider
whether or not it makes sense to hold a Maintainer's Summit this year.

Thanks,

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
