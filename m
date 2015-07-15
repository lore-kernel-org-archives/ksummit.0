Return-Path: <prvs=4638c16bc6=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FA78BF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:37:30 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7EE91BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:37:28 +0000 (UTC)
Received: from pps.filterd (m0044010 [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.14.5/8.14.5) with SMTP id
	t6FFZSjZ006119 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 08:37:28 -0700
Received: from mail.thefacebook.com ([199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 1vns6ar55t-1
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 08:37:28 -0700
Date: Wed, 15 Jul 2015 11:37:25 -0400
From: Chris Mason <clm@fb.com>
To: <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <20150715153725.GA12601@ret.masoncoding.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi everyone,

I know I never get bored of graphs comparing old/new, but I feel guilty
suggesting this one yet again.  Still, I think it's important for the
people trying to push new kernels into production to have a chance to
talk about the problems we've hit, and/or the changes that have made
life easier.

We're starting to push 4.0 into prod (122 hosts almost counts), and I'm
sure we'll backport some wins from 4.2+.  I'm hoping to make this a
collection point for other benchmarking war stories.  Our biggest gains
right now are coming from scsi-mq, and early benchmarks show 4.2 has a
boost that I'm hoping are from the futex locking improvements.

It ties in a little with the new interfaces applications may be able to use
(restartable sequences etc topic), and I want to ask the broad question of
"are we doing enough to prevent performance regressions".

We have a long list of people involved on the Facebook side, Jens at the
very least can talk about the scsi/block-mq benchmarks.  I'd love to hear
Fengguang's thoughts as well.

-chris
