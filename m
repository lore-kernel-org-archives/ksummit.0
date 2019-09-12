Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539EFC4CEC5
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 10:56:40 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32695208E4
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 10:56:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32695208E4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 835D4D82;
	Thu, 12 Sep 2019 10:56:39 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9452FD7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 10:56:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 133F1896
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 10:56:36 +0000 (UTC)
Received: from callcc.thunk.org (38.85.69.148.rev.vodafone.pt [148.69.85.38]
	(may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x8CAuX5Z013574
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 12 Sep 2019 06:56:35 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 7978D42049E; Thu, 12 Sep 2019 06:56:32 -0400 (EDT)
Date: Thu, 12 Sep 2019 06:56:32 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190912105632.GB32631@mit.edu>
References: <20190911150804.GA10046@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911150804.GA10046@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Ksummit-discuss] Video of Dmitry's Kernel Summit talk (Was:
 Reflections on kernel development processes)
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

On Wed, Sep 11, 2019 at 11:08:04AM -0400, Theodore Y. Ts'o wrote:
> Hi all,
> 
> Many of you attended Dmitry Vyukov's talk at the Kernel Summit track
> today, "Reflections on Kernel Development Process, Quality, and
> Testing".  (For those of you who haven't, the slides are available
> here[1].)
> 
> [1] https://linuxplumbersconf.org/event/4/contributions/554/attachments/353/584/Reflections__Kernel_Summit_2019.pdf
> 
> Greg K-H has suggested, and I strongly agree, that it would be
> worthwhile to add this to the agenda of the Maintainer's Summit.  In
> particular, what next steps should we take and what should be the
> criteria and the process for trying to further standardize our tools
> and processes in order to make make our development processes more
> mature and to improve developer productivity and happiness.

The raw video is (temporarily) available at:

	https://youtu.be/a2Nv-KJyqPk?t=5239

This will disappear when we can get something which is properly
cropped and edited --- this is basically the "hot wash" video which
was made available this morning, and after I failed my saving throw
against Linux video editing tools' user interfaces, I just uploaded it
straight to YouTube.

						- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
