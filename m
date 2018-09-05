Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2F8421700
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 17:41:35 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98901786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 17:41:34 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id g197-v6so5455322qke.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 10:41:34 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
References: <1536142432.8121.6.camel@HansenPartnership.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <f5c3a8c7-b1bc-2566-59be-619d637c1293@redhat.com>
Date: Wed, 5 Sep 2018 10:41:30 -0700
MIME-Version: 1.0
In-Reply-To: <1536142432.8121.6.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/05/2018 03:13 AM, James Bottomley wrote:
> I'm seeing a lot of wasted effort by our customers on kernel bugs and
> trying to engage the distribution to fix them.  As a caveat, I'm
> working in the cloud, so the distributions in question are usually
> community ones not enterprise ones.  However, we do have a fair few
> customers on LTS kernels from Distributions.
> 
> Mostly they find a cloud performance regression, they try to engage the
> distro, spend ages working on it or submitting bugs and usually end up
> with an unsatisfactory result.  By the time they call my team in, we've
> likely only got a week to fix the issue.  However, step one is always
> confirming whether upstream works (95% of the time it does) and then
> finding the fix by bisection (usually assisted by knowledge of where
> the bug is).  To do the bisection we usually have to build a kernel
> package with our guesses and get them to try it, so it can be a bit
> slow.  Once we have the backport, we send it to stable and notify the
> distribution to include it in their next kernel release.
> 
> Here's the rub: community distributions (even LTS ones) don't have the
> resources even to triage cloud bugs in environments they likely can't
> reproduce, so we really need to develop assistive tools for customers
> to perform bisections to identify what caused the bug or (in the 95%
> case) what fixed it.  Having a bugzilla and using it as first line of
> support implies a service expectation (usually coming from Enterprise)
> that simply isn't met, so distributions need to fix this at the point
> of interaction: bugzilla.
> 
> The first suggestion is that kernel builds are pretty much automated
> and we try to make every commit buildable, so could we automate the
> machinery that allows a customer to do bisection simply by installing a
> kernel package? (we here, obviously means the distro, but going from
> git bisect to kernel package would be the useful link).
> 

As mentioned further down, I did try having scripts to do this but
it was ultimately fairly fragile. I think a better approach is
leveraging the existing in tree support for building a distro
package and using that with regular git bisect.

> Second suggestion is that the bugzillas need to say much more strongly
> that the reporter really needs to confirm the fix in upstream and do
> the bisection themselves (and ideally request the backport to stable
> themselves).
> 

At least in Fedora this is something we hit fairly frequently. We
do strongly encourage people to report bugs and bisect. This runs
into a number of problems:

- Bisecting on local machines is slow and people often don't want
to give up their machine resources.
- If people give me a test case I can reproduce, I'm usually
okay to run a bisect myself but it's pretty rare to get a
test case.
- People are hesitant to run bisections and build kernels.
There's a lot of steps involved. We try and point people to wiki
pages with instructions but many times we end up having to
go back and forth explaining how to do the setup.
- People are hesitant to report bugs to the upstream. I end up
having to explain where to report bugs or run get_maintainer.pl
for people otherwise they just file it against kernel.org
bugzilla or just e-mail LKML. I started a skeleton of a web
project to make a web interface for get_maintainer.pl but it
never got very far.

Tooling can certainly help with a lot of this but some of
this may also just be more documentation and needing to
guide people.

Thanks,
Laura
