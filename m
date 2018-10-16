Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A65E2C76
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 19:53:13 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 860B8FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 19:53:12 +0000 (UTC)
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9GJn42T121831 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 15:53:11 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97] (may
	be forged)) by mx0a-001b2d01.pphosted.com with ESMTP id 2n5jw6t0re-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 15:53:11 -0400
Received: from localhost
	by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Tue, 16 Oct 2018 20:53:09 +0100
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20181016021254.GA21220@thunk.org>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Tue, 16 Oct 2018 21:53:06 +0200
MIME-Version: 1.0
In-Reply-To: <20181016021254.GA21220@thunk.org>
Content-Language: en-US
Message-Id: <3af0bf1d-6dea-2736-b4f0-171db8a2d447@de.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] new topic: regression test infrastructure? (was
 Draft Maintainer's Summit Agenda and Attendees - )
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 10/16/2018 04:12 AM, Theodore Y. Ts'o wrote:
> This is the draft agenda for the Maintainer's Summit which I and the
> program committee have come up with:
> [..] 
> 2:30 TBD
> [..]
> 4:30 TBD

Does it make sense to talk about existing test infrastructure 
(like syzbot,Geert Uytterhoeven and Guenter Roecks reports as well as all the others)
What architectures are missing? Is it ok to run tests in-house and only report errors?
What test scenarios are missing?

Christian
