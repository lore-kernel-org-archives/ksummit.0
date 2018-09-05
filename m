Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 704A8D2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:14:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A17570D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:14:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 5190D8EE108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 03:13:59 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id tBy8n_CnHd0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 03:13:57 -0700 (PDT)
Received: from [192.168.1.74] (host81-136-19-214.range81-136.btcentralplus.com
	[81.136.19.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id B65418EE104
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 03:13:56 -0700 (PDT)
Message-ID: <1536142432.8121.6.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 05 Sep 2018 11:13:52 +0100
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel bugzillas
	considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'm seeing a lot of wasted effort by our customers on kernel bugs and
trying to engage the distribution to fix them.  As a caveat, I'm
working in the cloud, so the distributions in question are usually
community ones not enterprise ones.  However, we do have a fair few
customers on LTS kernels from Distributions.

Mostly they find a cloud performance regression, they try to engage the
distro, spend ages working on it or submitting bugs and usually end up
with an unsatisfactory result.  By the time they call my team in, we've
likely only got a week to fix the issue.  However, step one is always
confirming whether upstream works (95% of the time it does) and then
finding the fix by bisection (usually assisted by knowledge of where
the bug is).  To do the bisection we usually have to build a kernel
package with our guesses and get them to try it, so it can be a bit
slow.  Once we have the backport, we send it to stable and notify the
distribution to include it in their next kernel release.

Here's the rub: community distributions (even LTS ones) don't have the
resources even to triage cloud bugs in environments they likely can't
reproduce, so we really need to develop assistive tools for customers
to perform bisections to identify what caused the bug or (in the 95%
case) what fixed it.  Having a bugzilla and using it as first line of
support implies a service expectation (usually coming from Enterprise)
that simply isn't met, so distributions need to fix this at the point
of interaction: bugzilla.

The first suggestion is that kernel builds are pretty much automated
and we try to make every commit buildable, so could we automate the
machinery that allows a customer to do bisection simply by installing a
kernel package? (we here, obviously means the distro, but going from
git bisect to kernel package would be the useful link).

Second suggestion is that the bugzillas need to say much more strongly
that the reporter really needs to confirm the fix in upstream and do
the bisection themselves (and ideally request the backport to stable
themselves).

James
