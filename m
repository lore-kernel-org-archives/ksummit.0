Return-Path: <SRS0=yNQT=7X=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9610DC433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 10 Jun 2020 08:51:20 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5254E2072E
	for <ksummit-discuss@archiver.kernel.org>; Wed, 10 Jun 2020 08:51:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="uipwo55s"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5254E2072E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E343C253CA;
	Wed, 10 Jun 2020 08:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gy4Jc67jRfJG; Wed, 10 Jun 2020 08:51:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 45F9720519;
	Wed, 10 Jun 2020 08:51:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1C54CC0865;
	Wed, 10 Jun 2020 08:51:18 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18F48C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 10 Jun 2020 08:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14D4E86E36
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 10 Jun 2020 08:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GtFJ746yrNfN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 10 Jun 2020 08:51:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D511F86E1F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 10 Jun 2020 08:51:15 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A8gn0k026361;
 Wed, 10 Jun 2020 08:51:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AWECrlZm7CNwdcCLywRwPcm7Q82xz+8H8+A7eX/kA5U=;
 b=uipwo55seOdFhzoGkFnicYjglrkY0ZAlnfDtPP6ygil3D2mPQHMWTPncBQo0H67My7Pe
 rjpyqOTf/K9I33LboWU8loKSQp1Y9fjkPcJFXSWZb0QNiCBTQqvLZGMW2IOVWWMsHcOX
 D5YCrhp8mIPuNgQ6g/S5p2uDxYiXCNdP/bCN8wJ8muavcVi1Uj/D3brzgHdHaVwUTtuy
 TXMX6iJNgUcvqOUgw8tl8l7Iwuq4KLLKZ8tl/iK3RA9YV6hrKWABs0eCpCCvfoFI4Qdi
 YrtxTIWrZEQX2zn+tB2MaDNuARVw63bxsOs8p4+B+kM6t3XQ5uuf5h4prrNdwnPmpa9b aw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31jepnu2np-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 08:51:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A8mPHo078348;
 Wed, 10 Jun 2020 08:49:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 31gn28d6sb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jun 2020 08:49:14 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05A8nDOI018122;
 Wed, 10 Jun 2020 08:49:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Jun 2020 01:49:12 -0700
Date: Wed, 10 Jun 2020 11:49:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20200610084906.GA4151@kadam>
References: <20200609145353.628a342d@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609145353.628a342d@lwn.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006100068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 clxscore=1011 phishscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 cotscore=-2147483648 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006100067
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

On Tue, Jun 09, 2020 at 02:53:53PM -0600, Jonathan Corbet wrote:
> The long process of converting the kernel's documentation into RST is
> finally coming to an end...what has that bought us?  We have gone from a
> chaotic pile of incomplete, crufty, and un-integrated docs to a slightly
> better organized pile of incomplete, crufty, slightly better integrated
> docs.  Plus we have the infrastructure to make something better from here.
> 
> What are the next steps for kernel documentation?  What would we really
> like our docs to look like, and how might we find the resources to get
> them to that point?  What sorts of improvements to the build
> infrastructure would be useful?  I'll come with some ideas (some of which
> you've certainly heard before) but will be more interested in listening.

The truth is that I only ever read the documentation in front of the
function implementations.  And LDD.  ;)

There are some subsystems which document their functions in the
Documentation directory.  For example, pm_request_resume() is documented
in Documentation/power/runtime_pm.rst where it describes why it might
return 1 on success.  It would be awesome if we had an automated way to
find this.

I wish that there were a replacement for cscope which showed results in
a sorted order:

Global Implementation
Documentation
Local Implemenatations
(For me the struct device is my 995th result...  Cscope is terrible.
But it's what I use as my default search in the kernel source.  I just
would like to have one search for everything that would find
documentation as well).

regards,
dan carpenter



_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
