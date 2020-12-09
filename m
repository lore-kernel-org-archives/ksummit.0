Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 024C6C433FE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:01:12 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67C7623B45
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 08:01:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67C7623B45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0578E84D42;
	Wed,  9 Dec 2020 08:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-xOIEsilj2o; Wed,  9 Dec 2020 08:01:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 599EB8768E;
	Wed,  9 Dec 2020 08:01:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 34FA7C0893;
	Wed,  9 Dec 2020 08:01:10 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 187E4C013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0509786CCF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfLZkUFxqr4Q
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91C2286CC0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 08:01:06 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B97xu5N183566;
 Wed, 9 Dec 2020 08:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=0Lki9NGQpmR9mKfLYz22nD8e4XYLkisaaFThAETfzls=;
 b=oOGdSRt+RIyi6nMnwYQoI7JQX93yUe1PhOR6UGwgXjQVCBhc+kTuXvwc7zOCXBQQCBO9
 SmPES2/GabVS5f/6SlYsi+e5qAm/TBaF1xcY5ThcJmdhJ86xTO9yUVX4+EWFl7pBVY2I
 F6brhQiqoYgdyFgBy5OS9vlre7aTAQG9FyD3fcEVbKkLYhrBVSERPZx/mvjw9O9C6Ct1
 EYChvBPRBjkFURiLo8U9zM+DFXgQHXwjSz2Y7u+pvoQAMnX4nztaTQ1DEm5r6Jn7hft5
 MdC13o4bhGO0MHjVHfyVkT0sb6+R6kAC/K0jHx5J2NNXMibIhvGQV403OdKP5nUhrDVg 6Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 3581mqxnh3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Dec 2020 08:01:00 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B97tjt8003308;
 Wed, 9 Dec 2020 07:58:59 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 358m505axn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Dec 2020 07:58:59 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B97wvt5005154;
 Wed, 9 Dec 2020 07:58:57 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Dec 2020 23:58:56 -0800
Date: Wed, 9 Dec 2020 10:58:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20201209075849.GD2767@kadam>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090055
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090056
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>, Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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

On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> 
> > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> > "Corrected-by"?
> 
> Improved-by: / Enhanced-by: / Revisions-by: 
> 

I don't think we should give any credit for improvements or enhancements,
only for fixes.  Complaining about style is its own reward.

Having to redo a patch is already a huge headache.  Normally, I already
considered the reviewer's prefered style and decided I didn't like it.
Then to make me redo the patch in an ugly style and say thankyou on
top of that???  Forget about it.  Plus, as a reviewer I hate reviewing
patches over and over.

I've argued for years that we should have a Fixes-from: tag.  The zero
day bot is already encouraging people to add Reported-by tags for this
and a lot of people do.

regards,
dan carpenter

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
