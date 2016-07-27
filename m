Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C3EC954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:46:07 +0000 (UTC)
Received: from outbound1a.ore.mailhop.org (outbound1a.ore.mailhop.org
	[54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDCB5120
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:46:05 +0000 (UTC)
Date: Wed, 27 Jul 2016 13:46:02 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20160727134602.GO4541@io.lakedaemon.net>
References: <20160727044631.GA75806@f23x64.localdomain>
	<CACRpkdZmXsYGBTP=AntbHts=ZfuG_HuPMi=5s+bQHZuLmQK10Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZmXsYGBTP=AntbHts=ZfuG_HuPMi=5s+bQHZuLmQK10Q@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Nicolas Pitre <nico@fluxnic.net>
Subject: [Ksummit-discuss] Linux and Safety Industry reviews,
	was: Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Linus, Darren,

I'm also tangentially interested in this discussion from a security point
of view.  Failing in a deterministic way is a desirable trait in both
the security and safety industries.

On Wed, Jul 27, 2016 at 11:25:52AM +0200, Linus Walleij wrote:
> On Wed, Jul 27, 2016 at 6:46 AM, Darren Hart <dvhart@infradead.org> wrote:
> 
> >   - Developing a "safety culture" and any overlap that may have with security
...
> My loose thoughts on the issue is twofold:
> 
> - We will have an influx of professional safety reviewers that do not
>   share their review comments with us, instead apply fixes locally and
>   not upstream. This is potentially dangerous if the next reviewer for
>   a safety-critical system misses the same bug. 

I thought the safety reviewers were an independent third party?  Wouldn't
the company attempting to get the product certified be the one making
the changes?

Regardless, identifying these third party reviewers and asking them to
'Cc linux-safety@v.k.o' or similar on bugs they find may be a good place
to start.  The trick is increasing our awareness of bugs with the least
impact to their workflow.

We would also need to anticipate that a significant number of those
reports would be located in non-upstreamed vendor drivers/features.

> - Can we record external inspection-only code reviews done by these
>   independent code reviewers (post-minimization) into the kernel (etc) git?
>   That I guess is pretty useful for building formal trust for the code,
>   but I never heard of git annotations to some random code lines like
>   that.

How do they mark up $codebase currently?  It would be helpful to hear a
walk through of their typical workflow.

> - Should minimization be a part of the kernel standard tooling for use
>   cases like this?

I think so.  This also has other benefits.  I've been putting some
thought towards "how to make the engineers job easier when justifying a
kernel update"  If a vendor has a minimal config for their current
version, I could imagine a 'git diff v4.6..v4.7 | ./scripts/configdiff
...' that would trim the diff between two kernel versions down to only
the config-enabled code.  Bonus points for taking 'git log --oneline
v4.6..v4.7' output and trimming to relevant commits.

This would reduce hours needed to review the changes, help focus QA
testing, and quantify the benefits of upgrading.  All of which makes it
easier for vendors to update kernels instead of getting 'stuck'.

thx,

Jason.
