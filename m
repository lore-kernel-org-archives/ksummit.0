Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFEEC4CED7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 11:00:44 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DC10208C2
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 11:00:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DC10208C2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EFE1ED98;
	Thu, 12 Sep 2019 11:00:43 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2035DD85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 11:00:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E87F89B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 11:00:41 +0000 (UTC)
Received: from callcc.thunk.org (38.85.69.148.rev.vodafone.pt [148.69.85.38]
	(may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x8CB0cYD014606
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 12 Sep 2019 07:00:40 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 8726242049E; Thu, 12 Sep 2019 07:00:37 -0400 (EDT)
Date: Thu, 12 Sep 2019 07:00:37 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190912110037.GA24843@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Ksummit-discuss] Maintainer's Summit Agenda (V2)
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

			 Maintainer's Summit
	     Ametista Room at the Corinthia Hotel Lisbon
			  September 12, 2019


9:00  Hot breakfast and morning refreshments (sponsored by IBM)
      <Room available for hacking and informal discussions>
12:00 Lunch (sponsored by Intel)
13:00 Agenda Bashing
13:15 Reflections on Kernel Development Process (Dmitry Vyukov)
14:00 Dealing with the high volume of automated bug finders (Shuah Kahn)
14:30 Stable Kernel Process Automation and Improvement (Sasha Levin)
15:00 Afternoon Break (Sponsored by IBM)
15:30 Is Linus Happy?
16:30 Depth of the "pull network" (James Bottomley)
17:00 HW Security Update
17:15 Maintainer Summit: What went well, what can we do better?
17:30 Group Photo
18:30 Bus Transportation to Evening Event


Attendee List
-------------
Alexei Starovoitov
Andrew Morton
Bjorn Helgaas
Christoph Hellwig
Dan Williams
Daniel Borkmann
David Airlie
David Miller
Dmtiry Vyukov
Greg Kroah-Hartman
Jan Kara
Jiri Kosina
Jonathan Corbet
Kees Cook
Konstantin Ryabitsev
Laura Abbott
Linus Torvalds
Linus Walleij
Michael Ellerman
Olof Johansson
Peter Zijlstra
Rafael Wysocki
Sasha Levin
Shuah Khan
Stephen Rothwell
Steven Rostedt
Takashi Iwai
Theodore Ts'o
Thomas Gleixner
Vasily Gorbik
Will Deacon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
