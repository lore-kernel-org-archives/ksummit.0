Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC88AB88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 15:01:31 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 105517C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 15:01:29 +0000 (UTC)
Received: from mlsv3.hitachi.co.jp (unknown [133.144.234.166])
	by mail7.hitachi.co.jp (Postfix) with ESMTP id 27B11B1D382
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 00:01:28 +0900 (JST)
Received: from vshuts02.hitachi.co.jp (vshuts02.hitachi.co.jp [10.201.6.84])
	by mfilter05.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	t6CF1RNv030213 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 00:01:27 +0900
Message-ID: <55A28142.90409@hitachi.com>
Date: Mon, 13 Jul 2015 00:01:22 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <55A1407E.5080800@oracle.com>
In-Reply-To: <55A1407E.5080800@oracle.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/07/12 1:12, Sasha Levin wrote:
> Hi folks,
> 
> I'd like to propose a topic discussing issues that are caused as a result of the
> way development happens upstream, and the way we integrate with distros that affect
> the quality of stable trees:
> 
[...]
>  2. The review cycle: I've *never* ended up receiving comments during review cycle
> of a stable release. I've received comments either when I've sent my "added to the..."
> mails when I've added a patch in, which usually came from the authors of the patch
> or the maintainers of the subsystem, and I've received comments after the tree has
> shipped - when it actually broke something.
> 
> We need to explore ways to integrate the review process better with the end users,
> possibly by extending it to allow distributions to ship "proposed" review kernels
> rather than waiting for us to finalize a stable kernel before they start working
> on shipping it.

Hmm, it sounds like distro's business...

> 
>  3. Cross tree verification and auditing: There seems to be a fair amount of LTS
> kernels that are maintained openly on the stable@ ML, and even a bigger amount
> if the Canonical folks decide to play ball at any stage. While ideally each tree
> should contain (if required, correctly backported) patches that are relevant only
> to that given tree, we have no standard way to verify that.
> 
> We need a mechanism that would let us audit the existence (and non-existence) of
> patches in an easy way, and to compare backports between stable trees to help verify
> their correctness.

Agreed. Can't we use bugzilla.kernel.org for this purpose? Of course, more automated-way
is better :)

>  4. Upstream monitoring: I've suggested to Greg that we have a bot looking at
> commits going upstream, and for every commit marked as for stable it would attempt
> to apply it to all relevant stable trees and build them, and on failure would
> notify the author.
> 
> Greg objected for two main reasons: the first is that we should put more effort
> into trying to fix any possible issues which arise from failure to build and
> backport before we send mails out, which I accepted. The other issue was that he
> doesn't want to generate too much noise, and if the patch doesn't look important
> enough and only applies to the latest stable it's enough, and no need to bother
> people to backport it.

Hmm, I think it depends on how many stable trees to be maintained officially.
We can see 2 stables and 7 longterms on www.kernel.org, porting each bugfix to
all of them is hard...

Thank you,

> 
> So this is mostly an open discussion: what do people expect to do (if anything)
> as a result of marking a patch for stable? What do people think about the increased
> noise? Is there a better way to do it rather than by mails?
> 
> 
> Thanks,
> Sasha
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 


-- 
Masami HIRAMATSU
Linux Technology Research Center, System Productivity Research Dept.
Center for Technology Innovation - Systems Engineering
Hitachi, Ltd., Research & Development Group
E-mail: masami.hiramatsu.pt@hitachi.com
