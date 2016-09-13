Return-Path: <joe@perches.com>
Message-ID: <1473794336.32273.2.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>,
	ksummit-discuss@lists.linux-foundation.org
Date: Tue, 13 Sep 2016 12:18:56 -0700
In-Reply-To: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
	trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2016-09-13 at 20:58 +0200, Christian Borntraeger wrote:
> A very late proposal, maybe related to Joe Perches thread about checkpatch and
> previous discussions about getting new people.
>
> There are a decent amount of patches just dealing with checkpatch warnings or
> Codingtyle things and sometimes the quality of these patches is not the best.
>
> 1. What is the general opinion about this patch class? It seems to be trade of
> between attracting new developers vs. letting people create a huge amount of
> patches for no good reason. The acceptance of these patches seems to differ from
> maintainer to maintainer. Are there ideas how to improve things for newbies
> without inviting patch bombers?

checkpatchg is just fine for drivers/staging, but for almost
everything else, it can lead to a lot of whitespace churn and
patches with niggling to some maintainers style-only changes.

I would like to avoid almost all of these by restricting the
checkpatch --file|-f option.

I like the undocumented "--force" option I proposed a couple
years ago:

Reference threads:
https://lkml.org/lkml/2014/7/17/427
https://patchwork.kernel.org/patch/5814071/

>  2. Some patches are created due to the CodingStyle document, e.g. just
> changing the name of labels for gotos. Does it make sense to make CodingStyle
> less specific again to avoid these change? Or maybe add some rules in
> SubmittingPatches to always think twice before sending patches to existing code.
> Any better ideas?

Get Markus Elfing to send fewer style only changes?

> 3. CodingStyle seems to get changes which have no ACK or Reviewed-by that seem
> to be controversial.  e.g.
> https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/Documentation/CodingStyle?id=865a1caa4b6b886babdd9d67e7c3608be4567a51
> suggested to indent labels with a space, and was then immediately followed by
> patches. Is there a process in place to verify and challenge such changes?

Perhaps more review of these proposed style changes?

In a lot of cases, the CodingStyle document, in either the
.txt form or the new .rst style, is overly detailed.

Style consistency is good, but there's nothing fundamentally
wrong with developers using different styles as long as the
code produced is intelligible and maintainable.

> 4.  Does it make sense to make checkpatch less agressive on files than on
> patches to avoid a big chunk of changes on existing code?

Mostly that's a checkpatch message type classification problem.

> 
