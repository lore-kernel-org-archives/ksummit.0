Return-Path: <SRS0=i5gH=7Z=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68C9C433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 09:19:59 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91240207D8
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 09:19:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91240207D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7AA2D26423;
	Fri, 12 Jun 2020 09:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xHIxQeUS5N4G; Fri, 12 Jun 2020 09:19:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 268AA20130;
	Fri, 12 Jun 2020 09:19:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F0021C0178;
	Fri, 12 Jun 2020 09:19:53 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E1176C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 09:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFFBF8784F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 09:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zgJrz8xWmQWB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 09:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F1A5882F5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 09:19:50 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05C92i7t113781; Fri, 12 Jun 2020 05:19:46 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31m07burya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 12 Jun 2020 05:19:46 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 05C9Bc6V006659;
 Fri, 12 Jun 2020 09:19:44 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com
 (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
 by ppma03ams.nl.ibm.com with ESMTP id 31g2s831s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 12 Jun 2020 09:19:44 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 05C9Jfw164094346
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jun 2020 09:19:41 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C9C984204B;
 Fri, 12 Jun 2020 09:19:41 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 464AD42042;
 Fri, 12 Jun 2020 09:19:41 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.145.86])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Fri, 12 Jun 2020 09:19:41 +0000 (GMT)
Date: Fri, 12 Jun 2020 12:19:39 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20200612091939.GG2051223@linux.ibm.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
 <20200612081852.GC5957@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612081852.GC5957@pendragon.ideasonboard.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-11_23:2020-06-11,
 2020-06-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011
 lowpriorityscore=0 adultscore=0 spamscore=0 impostorscore=0
 cotscore=-2147483648 mlxscore=0 bulkscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 suspectscore=1 priorityscore=1501 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006110174
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jun 12, 2020 at 11:18:52AM +0300, Laurent Pinchart wrote:
> H Shuah,
> 
> On Thu, Jun 11, 2020 at 01:44:45PM -0600, Shuah Khan wrote:
> > On 6/11/20 12:28 PM, Joe Perches wrote:
> > > On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
> > >> People that know the sub-systems well might not
> > >> have time to document and more importantly keeping the documents
> > >> updated.
> > > 
> > > So you somehow expect people that do _not_ know the
> > > sub-system well to produce good and useful documentation?
> > 
> > I didn't suggest anything like that. I merely mentioned that
> > lack of bandwidth is a reason for outdated documentation.
> 
> I think it may be more of a priority issue than a bandwidth issue.

Second that. Writing code usually seems more rewarding :)

> Most subsystems have traditionally not put lots of effort in documenting
> designs and APIs, and very few of them, even today, enforce
> documentation rules. I don't disagree that some area of the kernel have
> little available bandwidth, we have some very small subsystems, or niche
> areas where only a handful of people would be able to understand what's
> going on (and if you ask me, that's a reason to have more documentation,
> not less :-)). We also have large subsystems where policies have been
> put in place over time to get developers to write documentation. I'm
> thinking about V4L2 or DRM for instance, where the former has extensive
> documentation of the userspace API, and the latter extensive
> documentation of the in-kernel API. I believe other subsystems could
> follow if maintainers considered lack of documentation to be a blocker
> on patch submission.
>
> This would however leave some developers in an uncomfortable situation.
> While writing documentation is no fun for most of us, it gets much worse
> for developers who are less fluent in English. Learning how to write
> good documentation is hard enough without having to also learn a new
> language. I think this is a problem that needs to be addressed on its
> own.

I think we should make a distinction between adding new documentation
and updating the existing one. I agree that writing documentation is not
easy, especially when you need to write it from scratch. But making
small amends to the existing documentation along with the code changes
so that docs and code would still much is not that difficult. 
For such cases a request to have documentation update as a part of the
changes wouldn't be too much to ask.

> Another issue that I also believe is important is where to put the bar
> when it comes to documentation quality. I've reviewed many documentation
> patches where I wasn't completely happy with the proposal (as I'm prone
> to nit-picking during review I'll take blames here). Something that is
> clear to the author of the code won't be to someone who has less
> knowledge in that area, and more often that not patch authors don't
> write documentation from the point of view of the reader. This is
> something that can be learnt though, and I believe the kernel would
> benefit from involving more technical writers who could help reviewing
> documentation submissions and point out inconsistencies. There's a
> matter of budget there though, it may be difficult to attract technical
> writers who would help just for the fun of it.
> 
> > As for solutions, I am hoping one or two viable options will
> > bubble up as we talk about the issue on this thread and at
> > the kernel summit.
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Sincerely yours,
Mike.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
