Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FF07488
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 17:41:04 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0613F21E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 17:41:03 +0000 (UTC)
Message-ID: <55AD32A7.2070608@sonymobile.com>
Date: Mon, 20 Jul 2015 10:40:55 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716094125.16cdda73@lwn.net>	<1437063875.18768.59.camel@HansenPartnership.com>	<20150717101151.5d5bc86d@lwn.net>	<20150717133712.42c82add@gandalf.local.home>	<22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>	<20150717135313.6b917e1a@gandalf.local.home>	<20150717193013.GB8274@ret.masoncoding.com>	<20150717154633.51804e6e@gandalf.local.home>
	<20150717200247.GD8274@ret.masoncoding.com>
In-Reply-To: <20150717200247.GD8274@ret.masoncoding.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 07/17/2015 01:02 PM, Chris Mason wrote:
> The first patch really doesn't seem to be a problem.  At least from
> the stats I've seen so far.  How do we get the 10..100th patches,
> hopefully without 90% of them being whitespace fixes?
> 
> We're not going to be able to answer these without
> actual data.  This means surveys and talking with
> new developers that we really hope to turn into
> long term members of the community.

I may have a data set that is relevant here.
Last year I surveyed developers, targeting those who
1) had made a change to the kernel that shipped in a commercial product,
(defined as "qualified" in the survey analysis)
and
2) did not make contributions to mainline

There were 93 out of 278 "qualified" developers who never submitted a
patch.  That's about 33% of the developers who responded to the survey.
I suspect that the no-submission rate for developers who either did
not see the survey or did not respond to it is much, much higher.
This survey was focused on developers in the consumer electronics field.

25% of all survey respondents (not just the "qualified" ones) reported
they did not know how to contribute a patch.

The survey was not detailed enough to determine what parts
of the submission process caused the most reluctance to contribute.

I would guess (not very scientifically) that although we have thousands
of developers contributing to mainline, the pool of developers paid by their
companies to make products is in the range of 10s of thousands, and
our rate of conversion to contributors is under 10%.  (I'm not sure
if that's good or bad.)
 -- Tim
