Return-Path: <laura@labbott.name>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5E2619A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:49:58 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3359834
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 14:49:57 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d17so18711205qtj.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 07:49:57 -0700 (PDT)
Received: from lauras-mbp.fios-router.home
	(pool-96-235-39-235.pitbpa.fios.verizon.net. [96.235.39.235])
	by smtp.gmail.com with ESMTPSA id
	s134sm6843280qke.51.2019.07.02.07.49.56
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Jul 2019 07:49:56 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <5A0ABD9B-34F3-44FE-838E-D66F3BB5D15B@labbott.name>
Date: Tue, 2 Jul 2019 10:49:53 -0400
To: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- Change in Voting Procedures
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On behalf of the Linux Foundation Technical Advisory Board (TAB), I'd like
to announce that we are making changes to the voting procedures for the
2019 TAB elections. The one-line summary is that we are looking to move
to an electronic voting system instead of paper ballots with the purpose
of giving more members of our community a say in the membership of the TAB.

The longer explanation:

The kernel summit was created as an in-person event for kernel developers to
meet face-to-face and solve problems. When the TAB was created as part of
the Linux Foundation, it made sense to have voting for TAB representation
be part of kernel summit. Today, the kernel community has grown dramatically
in size with a community across the globe. Attending an in-person event may
not always be feasible for reasons such as finances, personal obligations, or
visa issues. This means that developers who cannot attend kernel summit
don't get a chance to vote for TAB representation. Moving to an online
voting system would allow for more participation.

The system we are looking at using is the Condorcet Internet Voting Service
(CIVS) https://civs.cs.cornell.edu . This system was recommended to us
by other communities who use it for similar board representation. It's
designed with security and privacy as a priority and source code is available
under a BSD-like research license (https://github.com/andrewcmyers/civs).
For 2019, we intend to use the version of CIVS hosted on their servers
because of serious concerns about the ability of the TAB to develop,
maintain, and host CIVS. We would welcome support to make this happen in
future years.

One of the biggest changes with using CIVS is that we will be using ranked
choice voting. Previously, the voting instructions were to vote for $m out
of $n candidates. Each vote was treated as equal and the top $m candidates
won. With ranked choice voting, you now express a preference from 1 to $n
on how much you want a candidate. The theory is that this allows for
more accurate and fair voting. The TAB had some discussion about this and
we did discuss options for going back to our old voting method. In order
to do this with CIVS, we would have to host our own infrastructure which
we have decided not to do this year. Condorcet supports multiple voting
methods and the method we plan to use is Condorcet-IRV. You can read more
about the theory at https://civs.cs.cornell.edu/rp.html#runoff

While the ultimate goal is to completely eliminate the need for in person
voting, in the interest of small incremental changes, and avoiding too
many changes at once, the voting pool is going to be approximately that
of past years. Kernel summit is co-located with Linux Plumbers once again
this year. Everyone who is registered for Plumbers will be eligible to
vote in this years TAB election. The goal for future years is to continue
to increase the number of eligible voters.

If you have feedback, feel free to speak up here or privately at
tab@lists.linux-foundation.org. We do intend to do a dry run of the voting
procedure at a future date before the actual elections. If for some reason
we run into unforeseen issues with electronic voting, we will use paper
ballots for voting this year. Our goal is to increase the enfranchisement of
the Linux kernel development community for TAB elections.

Thanks,
Laura
