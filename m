Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEEBC4CEC5
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 15:34:39 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DF1C2075C
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 15:34:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9DF1C2075C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2FDC9CAB;
	Thu, 12 Sep 2019 15:34:39 +0000 (UTC)
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C9C9C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 15:34:37 +0000 (UTC)
X-Greylist: delayed 04:58:12 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0204.hostedemail.com
	[216.40.44.204])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 242E81DD19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 15:34:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id D7F1618027FF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 15:34:32 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id E876C18224D65;
	Thu, 12 Sep 2019 15:34:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: room66_4419114b8213b
X-Filterd-Recvd-Size: 2754
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Thu, 12 Sep 2019 15:34:27 +0000 (UTC)
Message-ID: <44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Bart Van Assche <bvanassche@acm.org>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, Dan Williams <dan.j.williams@intel.com>
Date: Thu, 12 Sep 2019 08:34:26 -0700
In-Reply-To: <6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
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

On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:
> On 9/11/19 5:40 PM, Martin K. Petersen wrote:
> > * Do not use custom To: and Cc: for individual patches. We want to see the
> >   whole series, even patches that potentially need to go through a different
> >   subsystem tree.

That's not currently feasible when cc'ing any vger.kernel.org list
as those lists have a maximum email header size and patches that
span multiple subsystems can have very long to: and cc: lists.

> > * The patch must compile without warnings (make C=1 CF="-D__CHECK_ENDIAN__")
> >   and does not incur any zeroday test robot complaints.
> 
> How about adding W=1 to that make command?

That's rather too compiler version dependent and new
warnings frequently get introduced by new compiler versions.

> How about existing drivers that trigger tons of endianness warnings,
> e.g. qla2xxx? How about requiring that no new warnings are introduced?

Adding a sparse clean C=2 requirement might be useful.

> > * The patch must have a commit message that describes, comprehensively and in
> >   plain English, what the patch does.
> 
> How about making this requirement more detailed and requiring that not
> only what has been changed is document but also why that change has been
> made?

I believe the "why" is rather more important than the "how"
and should be the primary thing described in the commit message.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
