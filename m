Return-Path: <prvs=020938f6e0=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BF092AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:30:30 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 42F6820271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:30:30 +0000 (UTC)
Received: from pps.filterd (m0044008 [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.14.5/8.14.5) with SMTP id
	s4CEQAos022231 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 07:30:29 -0700
Received: from mail.thefacebook.com (mailwest.thefacebook.com [173.252.71.148])
	by mx0a-00082601.pphosted.com with ESMTP id 1ktray938p-1
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=OK)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 07:30:29 -0700
Message-ID: <5370DB7B.2040706@fb.com>
Date: Mon, 12 May 2014 10:32:27 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TOPIC] Application performance: regressions,
	controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi everyone,

We're in the middle of upgrading the tiers here from older kernels 
(2.6.38, 3.2) into 3.10 and higher.

I've been doing this upgrade game for a number of years now, with 
different business cards taped to my forehead and with different target 
workloads.

The result is always the same...if I'm really lucky the system isn't 
slower, but usually I'm left with a steaming pile of 10-30% regressions.

The KS dates should put us right at the end of our regression hunt, I 
can talk through the main problems we hit, how (if) we fixed them and 
hopefully offer tests to keep them from coming back.

We've split the tiers up between Josef Bacik, Jens Axboe, myself and a 
few others.  I'd nominate Josef and Jens to come share their findings as 
well.

Another topic here is controlling preemption from userland without 
needing to go full real time.  CPU intensive in-memory databases are 
leaving a ton of performance on the floor in context switches.  I'm 
hoping to experiment with better preemption controls and the userland 
RCU project to improve things.

-chris
