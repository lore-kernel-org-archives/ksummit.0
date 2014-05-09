Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 34504A89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:07:18 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CEBB020259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:07:17 +0000 (UTC)
Received: from int-mx13.intmail.prod.int.phx2.redhat.com
	(int-mx13.intmail.prod.int.phx2.redhat.com [10.5.11.26])
	by mx1.redhat.com (8.14.4/8.14.4) with ESMTP id s49H7G18020141
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK) for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 9 May 2014 13:07:17 -0400
Received: from gelk.kernelslacker.org ([10.3.113.11])
	by int-mx13.intmail.prod.int.phx2.redhat.com (8.14.4/8.14.4) with ESMTP
	id s49H7AWx005832
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NO) for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 9 May 2014 13:07:15 -0400
Received: from gelk.kernelslacker.org (localhost [127.0.0.1])
	by gelk.kernelslacker.org (8.14.8/8.14.7) with ESMTP id s49H79Vw009926
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 9 May 2014 13:07:09 -0400
Received: (from davej@localhost)
	by gelk.kernelslacker.org (8.14.8/8.14.8/Submit) id s49H79TJ009925
	for ksummit-discuss@lists.linuxfoundation.org;
	Fri, 9 May 2014 13:07:09 -0400
Date: Fri, 9 May 2014 13:07:09 -0400
From: Dave Jones <davej@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140509170709.GA9747@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I gave a lightning talk on this last year. This year I have a bit more data
so could probably fill a whole session.

Last year I had been doing the coverity scans on an almost daily basis
for 2-3 months.  Now that we're a year in, I'd like to share some
results, and show some of the more common trends and bug patterns that
seem to pop up.

[ spoiler: For the most part, it's all pretty positive, but we still suck ]

It would also be good to have some more discussion about other tools
we could be making more use of.  (Nomination: Dan Carpenter for smatch).

	Dave
