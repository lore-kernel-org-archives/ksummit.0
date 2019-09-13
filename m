Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05ABC4CEC5
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 22:04:38 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A46382084F
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 22:04:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="KZdnhezR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A46382084F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5FACFDF2;
	Fri, 13 Sep 2019 22:04:38 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1BD5EDBB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 22:04:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9FFDA82B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 22:04:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8DM4FJG147041; Fri, 13 Sep 2019 22:04:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
	h=to : cc : subject :
	from : references : date : in-reply-to : message-id : mime-version :
	content-type; s=corp-2019-08-05;
	bh=cEmR1N7x+6nwpU4cpXCvEKl6j72A2b33JZR7hUchDTA=;
	b=KZdnhezRSz81h0NoDSiiyY3bSl/k6ofmBb2GPHi7B3lUCDeFHu37nnJFmwOCfU35uwbS
	5F3Bp57lbhxm6y/VCNab/Z8DVv39sSSf/4duU+f0BDVGq6TILMlPtzFEKBtS4gMt6XPp
	WF/nI+OHbNvbFZCUeNw22Fu37hEsRBpAjvShP1livRXAfQezyGIXnd+/I4u4f1a/aCfM
	vG3BQNvlcXf/VRRb4QgqzpCzFn9yxTPiexQhXF+V9F/3QS5MU8Sf0vFV/AtJ6YocsbSX
	YT6+K1udvqEeKgVA+YGbfe/osXluxufmPWIN3PJWIf6bn5aseY23M6BjZdo/Kt7skhth
	OQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 2uytd378q1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Sep 2019 22:04:23 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8DM4Esd012615; Fri, 13 Sep 2019 22:04:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3020.oracle.com with ESMTP id 2uytdju7a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Sep 2019 22:04:22 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8DM3xGr008423;
	Fri, 13 Sep 2019 22:03:59 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Sep 2019 15:03:59 -0700
To: Bart Van Assche <bvanassche@acm.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
Date: Fri, 13 Sep 2019 18:03:56 -0400
In-Reply-To: <6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org> (Bart Van Assche's
	message of "Thu, 12 Sep 2019 14:31:35 +0100")
Message-ID: <yq1tv9fdfar.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9379
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1908290000 definitions=main-1909130218
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9379
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
	definitions=main-1909130218
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
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


Hi Bart,

> On 9/11/19 5:40 PM, Martin K. Petersen wrote:
>> * Do not use custom To: and Cc: for individual patches. We want to see the
>>   whole series, even patches that potentially need to go through a different
>>   subsystem tree.
>
> Thanks for having written this summary. This is very helpful. For the
> above paragraph, should it be clarified whether that requirement
> applies to mailing list e-mail addresses only or also to individual
> e-mail addresses? When using git send-email it is easy to end up with
> different cc-lists per patch.

I prefer to have the entire series sent to linux-scsi or
target-devel. It wouldn't be so bad if discussions about the merits of a
tree-wide change consistently happened in responses to the cover
letter. But more often than not discussion happens in response to a
patch touching a different subsystem and therefore in a mail exchange
that doesn't end up on linux-scsi.

>> * The patch must compile without warnings (make C=1 CF="-D__CHECK_ENDIAN__")
>>   and does not incur any zeroday test robot complaints.
>
> How about adding W=1 to that make command?
>
> How about existing drivers that trigger tons of endianness warnings,
> e.g. qla2xxx? How about requiring that no new warnings are introduced?

This was in response to a driver submission (for a different driver)
around the time this doc was written. The problem is that it's sometimes
hard to distinguish new warnings from old ones. I'm all for requiring
that no new warnings are introduced.

>> * The patch must have a commit message that describes,
>> comprehensively and in plain English, what the patch does.
>
> How about making this requirement more detailed and requiring that not
> only what has been changed is document but also why that change has
> been made?

I'd really like all this patch submission guideline material to live in
Documentation/process. But yes.

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
