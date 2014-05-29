Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 218D27FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 23:59:21 +0000 (UTC)
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCA031F887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 23:59:20 +0000 (UTC)
Received: by mail-ve0-f179.google.com with SMTP id oy12so1294048veb.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 16:59:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <yq138fscf5o.fsf@sermon.lab.mkp.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
	<yq1lhtldyhz.fsf@sermon.lab.mkp.net>
	<CAPcyv4itiMAzfRp4=msYskfn8ArQ6vE3=JLj9=Vt4mFQmOZWxw@mail.gmail.com>
	<yq138fscf5o.fsf@sermon.lab.mkp.net>
Date: Thu, 29 May 2014 16:59:19 -0700
Message-ID: <CAPcyv4jp_71u+LcnZQ5cn60CtyB2pNAAEApp8BtKM436pV_TjA@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 4:56 PM, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>>>>>> "Dan" == Dan Williams <dan.j.williams@intel.com> writes:
>
> Dan> Yes, ill conceived "value add" is indeed toxic.  Is that the only
> Dan> contributor factor to indefinite patch acceptance latency?  We're
> Dan> missing a mechanism to allow for experimentation without 1/ risking
> Dan> the quality of the rest of the kernel 2/ committing to carrying the
> Dan> experiment upstream indefinitely.
>
> Another problem in the value-add department is what hw vendor FOO is
> unlikely to collaborate with main competitor BAR on a common
> interface. Friendly collaboration works for us Linux folks but is rare
> (although it does happen) in the driver space.

If both vendors put their "experiments" upstream, maybe we as a
community have a better chance of finding commonality to up-level to
libraries?
