Return-Path: <SRS0=iitZ=XL=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3179BC4CECF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 07:01:16 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05DAF20678
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 07:01:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="FFrd3BEJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05DAF20678
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B289103A;
	Mon, 16 Sep 2019 07:01:15 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC3131036
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 07:01:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88B2482F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 07:01:13 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8G6xpMu000843; Mon, 16 Sep 2019 07:01:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
	h=date : from : to : cc
	: subject : message-id : references : mime-version : content-type :
	in-reply-to; s=corp-2019-08-05;
	bh=xl96NpZ8dZIXmNqt/vamMBwvoVrxdHT0F5RbNT0U8rI=;
	b=FFrd3BEJNbgEedmfwdT1r9hQ6V3FnwfO9f+sP93q6pex7zb7p6GjbY+Pn+rLBMyI64tp
	/EHkk9jhCDiYSdFHbug7SSm5/HLMK67qKNzRhkuQrSLGMUMVr11N78i02K4VH3KYjCQI
	9eeEraE7ZWrISDeFUN4bK4SirPTfk2CtcjOqwqSyQwCB2/C3wKnchpkd3GFJb3q6JJQr
	jA362c52EES9B4NgxBrUHDKGzRK/QyX3cYUEQsfBwZ/4SJfPL2yi4jlcoikUnURjA+B3
	uxjBGMx06MVCk78Ziz+XUB8gnz4qYlpbBRqROfKF/MgD7tgQ18htME90B09UE0YXyNsP
	cA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 2v0r5p5etu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 16 Sep 2019 07:01:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8G6w742122998; Mon, 16 Sep 2019 07:01:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 2v0qhnxrqw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 16 Sep 2019 07:01:09 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8G717Bf025220;
	Mon, 16 Sep 2019 07:01:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 16 Sep 2019 00:01:07 -0700
Date: Mon, 16 Sep 2019 10:01:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20190916070101.GE18977@kadam>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
	<yq1y2yrdg6w.fsf@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1y2yrdg6w.fsf@oracle.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9381
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=989
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1908290000 definitions=main-1909160075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9381
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
	definitions=main-1909160076
Cc: bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
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

On Fri, Sep 13, 2019 at 05:44:39PM -0400, Martin K. Petersen wrote:
> One pet peeve I have is that people are pretty bad at indicating the
> intended target tree. I often ask for it in private mail but the
> practice doesn't seem to stick. I spend a ton of time guessing whether a
> patch is a fix for a new feature in the x+1 queue or a fix for the
> current release. It is not always obvious.

The Fixes tag doesn't help?

Of course, you've never asked me or anyone on kernel-newbies that
question.  We don't normally know the answer either.  I do always try to
figure it out for networking, but it's kind of a pain in the butt and I
mess up surpisingly often for how much effort I put into getting it
right.

regards,
dan carpenter
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
