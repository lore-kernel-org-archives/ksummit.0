Return-Path: <prvs=4643167d28=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45009487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 17:59:43 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1E3B1C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 17:59:42 +0000 (UTC)
Date: Mon, 20 Jul 2015 13:58:51 -0400
From: Chris Mason <clm@fb.com>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150720175851.GG8274@ret.masoncoding.com>
References: <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
	<20150717135313.6b917e1a@gandalf.local.home>
	<20150717193013.GB8274@ret.masoncoding.com>
	<20150717154633.51804e6e@gandalf.local.home>
	<20150717200247.GD8274@ret.masoncoding.com>
	<55AD32A7.2070608@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <55AD32A7.2070608@sonymobile.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Jul 20, 2015 at 10:40:55AM -0700, Tim Bird wrote:
> 
> 
> On 07/17/2015 01:02 PM, Chris Mason wrote:
> > The first patch really doesn't seem to be a problem.  At least from
> > the stats I've seen so far.  How do we get the 10..100th patches,
> > hopefully without 90% of them being whitespace fixes?
> > 
> > We're not going to be able to answer these without
> > actual data.  This means surveys and talking with
> > new developers that we really hope to turn into
> > long term members of the community.
> 
> I may have a data set that is relevant here.
> Last year I surveyed developers, targeting those who
> 1) had made a change to the kernel that shipped in a commercial product,
> (defined as "qualified" in the survey analysis)
> and
> 2) did not make contributions to mainline
> 
> There were 93 out of 278 "qualified" developers who never submitted a
> patch.  That's about 33% of the developers who responded to the survey.
> I suspect that the no-submission rate for developers who either did
> not see the survey or did not respond to it is much, much higher.
> This survey was focused on developers in the consumer electronics field.
> 
> 25% of all survey respondents (not just the "qualified" ones) reported
> they did not know how to contribute a patch.
> 
> The survey was not detailed enough to determine what parts
> of the submission process caused the most reluctance to contribute.
> 
> I would guess (not very scientifically) that although we have thousands
> of developers contributing to mainline, the pool of developers paid by their
> companies to make products is in the range of 10s of thousands, and
> our rate of conversion to contributors is under 10%.  (I'm not sure
> if that's good or bad.)

I love hard data on this topic, and I really like the idea of trying to find
the pool of actual kernel developers vs the pool of people visible on
the mailing list. 10:1 makes me sad, but I'm not that surprised.

Still, I'll channel Greg for a minute and google "how to send a patch to
the linux kernel".  I'd definitely believe people don't know how to get
their employer to prioritize (allow?) sending the patches in, but I
can't stretch to they don't know how to do it at all.

-chris
