Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 426A3C433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 15:40:25 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E872620720
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 15:40:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E872620720
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=goodmis.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5A678783C;
	Mon,  6 Jul 2020 15:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LuJeDtiqh17I; Mon,  6 Jul 2020 15:40:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFFE5877AA;
	Mon,  6 Jul 2020 15:40:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AB93BC0893;
	Mon,  6 Jul 2020 15:40:23 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28FFFC016F;
 Mon,  6 Jul 2020 15:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15E0588649;
 Mon,  6 Jul 2020 15:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjXsVpfxhfwE; Mon,  6 Jul 2020 15:40:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F40E688647;
 Mon,  6 Jul 2020 15:40:20 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F00722070C;
 Mon,  6 Jul 2020 15:40:19 +0000 (UTC)
Date: Mon, 6 Jul 2020 11:40:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Message-ID: <20200706114018.216570ae@oasis.local.home>
In-Reply-To: <20200706152210.GA53508@rani.riverdale.lan>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu>
 <20200706152210.GA53508@rani.riverdale.lan>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
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

On Mon, 6 Jul 2020 11:22:10 -0400
Arvind Sankar <nivedita@alum.mit.edu> wrote:

> Though I'm not sure if blueprint translates literally into other
> languages, it did actually have a logical reason, viz engineering
> drawings used to be blue/white. But logical reasons don't have to exist.
> In the case of colors, for example, using red-black tree doesn't exclude
> blind people, precisely because there is no logical reason for using the
> colors red and black, or even colors at all, so it's not as if you gain
> any additional insight into the structure if you are able to see the
> colors. It just needs _some_ arbitrary labels for distinguishing two
> classes of nodes, it could just as well have been named A-B tree or 0-1
> tree or whatever. I don't think there is any concise way to label them
> that conveys anything useful about how they're used in the data
> structure -- you just have to learn about the structure and how it's
> used. This isn't the case with whitelist/blacklist, where those colors
> actually have connotations about what the two lists mean.

When I learned about R-B trees in my algorithms class decades ago, I
distinctly remember the text book saying something about how the red
and black names were meaningless. Just know that the nodes are
different in how you go about sorting or injecting a new node into the
tree. So yes, it could have been blue and yellow, or 1 and 0, or Bob
and Alice. The colors were just a way of labeling in order to
differentiate the two types of nodes, and I am not worried that people
are going to take offense to them.

-- Steve

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
