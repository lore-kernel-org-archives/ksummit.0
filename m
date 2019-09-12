Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985B3C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:11:54 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 668EC205ED
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:11:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 668EC205ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 013DB1010;
	Fri, 13 Sep 2019 14:11:54 +0000 (UTC)
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17A5CFFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:11:52 +0000 (UTC)
X-Greylist: delayed 17:00:04 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0246.hostedemail.com
	[216.40.44.246])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id D754C1DE7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:11:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 02EC718030454
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 20:34:54 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id B7E4E837F24A;
	Thu, 12 Sep 2019 20:34:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: wood38_47427da86d73d
X-Filterd-Recvd-Size: 1803
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Sep 2019 20:34:49 +0000 (UTC)
Message-ID: <4299c79e33f22e237e42515ea436f187d8beb32e.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Bart Van Assche <bvanassche@acm.org>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, Dan Williams <dan.j.williams@intel.com>
Date: Thu, 12 Sep 2019 13:34:48 -0700
In-Reply-To: <74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
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

On Thu, 2019-09-12 at 13:01 -0700, Bart Van Assche wrote:

> Another argument in favor of W=1 is that the formatting of kernel-doc
> headers is checked only if W=1 is passed to make.

Actually, but for the fact there are far too many
to generally enable that warning right now,
(an x86-64 defconfig has more than 1000)
that sounds pretty reasonable to me.



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
