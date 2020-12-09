Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9CAC433FE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 10:30:55 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D170123B6B
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 10:30:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D170123B6B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3780E87635;
	Wed,  9 Dec 2020 10:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pkpyxYi38WRx; Wed,  9 Dec 2020 10:30:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FBF6877EA;
	Wed,  9 Dec 2020 10:30:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 07454C0FA7;
	Wed,  9 Dec 2020 10:30:52 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C401DC013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 10:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2144866C8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 10:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAwWh3Lc7YgW
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 10:30:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D935866A9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 10:30:48 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9ATao2128032;
 Wed, 9 Dec 2020 10:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=OksspaGjPuFf4DB6wu1ypZZhywmIYxJ9IAHMFgvOtwM=;
 b=ljaGQawJU7IpvhND5+dnVqHbkHhHHIOzPud6PGsmNBMT50t1MKtOQhQHxOuHgvO0t2Da
 n0VqYsXmXl4yjRNgypb229cj7nXISl8ILhx8pxws4fpf8kbSuO/4Wc//SFVp0ABsHWP0
 uRZIxzqlK7ZAZBib0X/y37r6CFO83TYFVIrL+KDhoh28YwekQ+e8fmRnUTlbicmt5yBb
 OvRv7edncITmBmfViisASCBZRdlWXKxNVVViRtJrGi1wSYifmIJhGg0ZeeYGs+vpg/7+
 ptolQK6K9IPjRJRw5w/Nhwpsnnsbouo0FEzGCkhN5D2AjH1Ih0+J7up4qnh6N7tDVBlO 7A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 357yqbyhs7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Dec 2020 10:30:44 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9AUhJO092612;
 Wed, 9 Dec 2020 10:30:43 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 358kyue1k2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Dec 2020 10:30:43 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B9AUY57010634;
 Wed, 9 Dec 2020 10:30:34 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Dec 2020 02:30:33 -0800
Date: Wed, 9 Dec 2020 13:30:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20201209103026.GF2767@kadam>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam>
 <42a599d0f5e4c677648b5e6de8083feb8723a558.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42a599d0f5e4c677648b5e6de8083feb8723a558.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 clxscore=1015 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090072
Cc: Vlastimil Babka <vbabka@suse.cz>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Colin Ian King <colin.king@canonical.com>
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

On Wed, Dec 09, 2020 at 12:54:30AM -0800, Joe Perches wrote:
> On Wed, 2020-12-09 at 10:58 +0300, Dan Carpenter wrote:
> > On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> > > On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> > > 
> > > > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> > > > "Corrected-by"?
> > > 
> > > Improved-by: / Enhanced-by: / Revisions-by: 
> > > 
> > 
> > I don't think we should give any credit for improvements or enhancements,
> > only for fixes.
> 
> Hey Dan.
> 
> I do.  If a patch isn't comprehensive and a reviewer notices some
> missing coverage or algorithmic performance enhancement, I think that
> should be noted.
> 
> > Complaining about style is its own reward.
> 
> <chuckle, maybe so. I view it more like coaching...>
> 
> I believe I've said multiple times that style changes shouldn't require
> additional commentary added to a patch.
> 
> I'm not making any suggestion to comment for style, only logic or defect
> reduction/improvements as described above.

How about we make the standard, "Would this fix be backported to stable?"

> 
> > Having to redo a patch is already a huge headache.  Normally, I already
> > considered the reviewer's prefered style and decided I didn't like it.
> 
> Example please.  We both seem to prefer consistent style.
> 

For example, if you have a signedness bugs:

 	ret = frob(unsigned_long_size);
-	if (ret < unsigned_long_size)
+	if (ret < 0 || ret < unsigned_long_size)
vs:
+	if (ret < (int)unsigned_long_size)
		goto whatever;

To me, whoever fixes the bug gets to choose their prefered style but
maybe some reviewers have strong feelings one way or the other.

> > Then to make me redo the patch in an ugly style and say thank you on
> > top of that???  Forget about it.
> 
> Not a thing I've asked for.
> 
> >  Plus, as a reviewer I hate reviewing patches over and over.
> 
> interdiff could be improved.
> 
> > I've argued for years that we should have a Fixes-from: tag.  The zero
> > day bot is already encouraging people to add Reported-by tags for this
> > and a lot of people do.
> 
> It's still a question of what fixes means in any context.
> 
> https://www.google.com/search?q=%27fixes-from%3A%27%20carpenter%20site%3Alore.kernel.org
> gives:
> It looks like there aren't many great matches for your search
> 

No, I mean people add Reported-by tags for fixes to the original commit
like in commit f026d8ca2904 ("igc: add support to eeprom, registers and
link self-tests").

regards,
dan carpenter

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
