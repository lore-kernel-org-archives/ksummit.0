Return-Path: <prvs=60101c977b=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6AA46892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 13:55:57 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B716F116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 13:55:56 +0000 (UTC)
Received: from pps.filterd (m0001255.ppops.net [127.0.0.1])
	by mx0b-00082601.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6LDs0EM009212 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 06:55:55 -0700
Received: from maileast.thefacebook.com ([199.201.65.23])
	by mx0b-00082601.pphosted.com with ESMTP id 249wja0r0y-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 06:55:55 -0700
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <578F36B9.802@huawei.com> <20160721100014.GB7901@quack2.suse.cz>
From: Chris Mason <clm@fb.com>
Message-ID: <577236a8-2921-842a-2243-b8ecfe467381@fb.com>
Date: Thu, 21 Jul 2016 09:54:53 -0400
MIME-Version: 1.0
In-Reply-To: <20160721100014.GB7901@quack2.suse.cz>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel tracing and end-to-end
 performance breakdown
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/21/2016 06:00 AM, Jan Kara wrote:
>
> So I think improvements in performance analysis are always welcome but
> current proposal seems to be somewhat handwavy so I'm not sure what outcome
> you'd like to get from the discussion... If you have a more concrete
> proposal how you'd like to achieve what you need, then it may be worth
> discussion.
>
> As a side note I know that Google (and maybe Facebook, not sure here) have
> out-of-tree patches which provide really neat performance analysis
> capabilities. I have heard they are not really upstreamable because they
> are horrible hacks but maybe they can be a good inspiration for this work.
> If we could get someone from these companies to explain what capabilities
> they have and how they achieve this (regardless how hacky the
> implementation may be), that may be an interesting topic.

At least for facebook, we're moving most things to bpf.  The most 
interesting part of our analysis isn't so much from the tool used to 
record it, it's from being able to aggregate over the fleet and making 
comparisons at scale.

For example, Josef setup the off-cpu flame graphs such that we can 
record stack traces for a latency higher than N, and then sum up the 
most expensive stack traces over a large number of machines.  It makes 
it much easier to find those happens-once-a-day problems.

-chris
