Return-Path: <SRS0=kjsK=XO=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD8C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 06:57:10 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E64D21848
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 06:57:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="CnqHXzbt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7E64D21848
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D3483D9A;
	Thu, 19 Sep 2019 06:57:09 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C9BCD9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 06:57:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A38E676D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 06:57:08 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8J6roDM092821; Thu, 19 Sep 2019 06:56:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
	h=date : from : to : cc
	: subject : message-id : references : mime-version : content-type :
	in-reply-to; s=corp-2019-08-05;
	bh=ty/R+tqGV2wRl7yqxixcHvAVmjcsptBtUQFz1cn/vUQ=;
	b=CnqHXzbtrH0O8kUBDgw64RY0nnK4Sq/qL/j1OjHOydCfzaqEOtL4NXQZgfn/EMeEJHzb
	/ElfIg+rRbVVkPWqlfHItkiPxKNTs8nHZci++7bcZfWdAJyMRPXjgv9ZsQJgnREKV3i1
	scg5CGFu/Dt81tRZWQ9H/QueX6zhhQvWKKh6Y61WpLOmi3ZNVyKMrCAZDSFhwnK0xbQW
	YX+mb9ImzNfg4yzwgz0fO9j+Czhlndu3RAX2/W2wV2KnfgP7jsJp1g+mF8HYUaX1hO31
	Ke54OMzK9sptk3OENQqLm4Wxx3fLDTugXkWaVG7jj6BBuvyUPZHlM8CHzRIhXDMFwYIV
	bg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 2v3vb51r96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 06:56:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x8J6roZM168035; Thu, 19 Sep 2019 06:56:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 2v3vb4x2v8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Sep 2019 06:56:56 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8J6urfI021115;
	Thu, 19 Sep 2019 06:56:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Sep 2019 06:56:53 +0000
Date: Thu, 19 Sep 2019 09:56:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190919065447.GF2959@kadam>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918105728.24e7eb48@coco.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1908290000 definitions=main-1909190064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9384
	signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
	definitions=main-1909190064
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> > > +Patches for the media subsystem should be sent to the media mailing list
> > > +at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > +HTML will be automatically rejected by the mail server. There's no need
> > > +to copy the maintainer or sub-maintainer(s).  
> > 
> > There's too much traffic on mailing lists for me to follow everything, I
> > much prefer being CC'ed on patches.
> 
> Well, by using patchwork, the best is to take a look on it at least for
> the patches that you're interested. You could script something using
> pwclient in order to make it easier.
> 
> Anyway, not sure if the other sub-maintainers see the same way. From my side,
> I prefer not to be c/c, as this is just more noise, as I just rely on
> patchwork for media patches. What about changing this to:
> 
> 	Patches for the media subsystem should be sent to the media mailing list
> 	at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> 	HTML will be automatically rejected by the mail server. It could be wise 
> 	to also copy the sub-maintainer(s).

The documentation should say "Use get_maintainer.pl" and do what it
says.  Everything else is too complicated.

Occasionally staging maintainers will complain that they aren't CC'd
even though the staging/driver/README says to CC them and I am tell them
"No, the responsibility is for you to add yourself to MAINTAINERS.  It
doesn't matter what the documentation says, you messed up so you need to
stop getting annoyed with newbies for not reading the documentation when
it's your fault you weren't CC'd."

When I sent a patch, I use get_maintainer.pl then I add whoever the
wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
Cook from the CC list because they worked all over the tree and I know
them.  I also normally remove LKML if there is another mailing list but
at least one subsystem uses LKML for patchwork so this isn't safe.

So the safest instructions are "Use get_matainer.pl and add the person
who wrote the commit in the Fixes tag".

regards,
dan carpenter


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
