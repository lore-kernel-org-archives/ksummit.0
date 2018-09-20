Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 441D3FF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 12:28:19 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A1E163D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 12:28:17 +0000 (UTC)
Received: from in02.mta.xmission.com ([166.70.13.52])
	by out01.mta.xmission.com with esmtps
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
	(envelope-from <ebiederm@xmission.com>) id 1g2y48-00020Z-Ci
	for ksummit-discuss@lists.linuxfoundation.org;
	Thu, 20 Sep 2018 06:28:16 -0600
Received: from [105.184.227.67] (helo=x220.xmission.com)
	by in02.mta.xmission.com with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
	(envelope-from <ebiederm@xmission.com>) id 1g2y47-0005Wx-6p
	for ksummit-discuss@lists.linuxfoundation.org;
	Thu, 20 Sep 2018 06:28:16 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
Date: Thu, 20 Sep 2018 14:28:05 +0200
In-Reply-To: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	(Dave Airlie's message of "Tue, 18 Sep 2018 15:55:23 +1000")
Message-ID: <87h8ik9wve.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
	position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Dave Airlie <airlied@gmail.com> writes:

> I think there might be place for a report from the people who did sign
> off the CoC about the thoughts/process involved in updating it (and/or
> urgency) to the rest of the Maintainer group.

I would very much appreciate that.

> After the past 2-3 days I get the feeling there are maintainers unsure
> about how this affects them and I think assuaging those fears might be
> a good thing.

I definitely uncertain about this proposed code of conduct.  Judging
8a104f8b5867 ("Code of Conduct: Let's revamp it.") as an oridnary patch
I am concerned that we just merged a bad patch.

My least concern is that it is not an obviously correct bug fix making
rc4 an inappropriate time to merge the change.

There has been no discussion that I can see leading up to the new CoC.

No motiviation for the change have presented in the changelog.

The presumably failing remedies (escalation to the TAB) have not
changed.  Which makes me wonder (since there is no description) how
anything will change.

The document appears to be a horrible sign of leadership in the Linux
kernel where the only real power maintainers have is to include or not
to include code.  As has been pointed out we can't police mailing lists
and even if we could maintainers don't have the time.

If the new CoC acts as a legal document as Mauro has suggested those
extra requirements on the edge of being a GPL violation.

This concept of official project anything is just plain strange.  We
have kernel.org but it isn't official, it is just the infrastructure
that HPA put together one day and formed a non-profit to run.  That
makes kernel.org a project in itself but not the linux-kernel project
per se.  Similarly there is the Linux Foundation that exists to support
the work of linux development and give suits someone to interact with,
but is not actually the linux kernel project.  The Linux Foundation
requires the TAB to keep it from getting out of line and harming the
kernel development.

So as a whole I don't think this change has been well explained or well
thought through.  As human beings if we need a change we need some real
communication about what is trying to be fixed and some real discussions
about how to fix things.

Eric

p.s.  As a maintainer I am concerned that the most frequent kind of
abuse I see:  Submitting code endlessly without listening to feedback
is not dealt with.  To my knowledge that is the only kind of abusive
behavior that has every gotten anyone banned from linux mailing lists.

A similar abuse is maintainers pushing too hard for their changes and
pushing code to be included without listening to feedback.  It is very
human but certainly something we should strive to avoid.
