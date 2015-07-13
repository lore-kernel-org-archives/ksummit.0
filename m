Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C82BABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 04:28:03 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE431A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 04:28:02 +0000 (UTC)
Message-ID: <55A33E48.2040202@oracle.com>
Date: Mon, 13 Jul 2015 00:27:52 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: NeilBrown <neilb@suse.com>
References: <55A1407E.5080800@oracle.com>	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>	<55A26C5B.8060007@oracle.com>
	<20150713105210.6e367f4b@noble>
In-Reply-To: <20150713105210.6e367f4b@noble>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/12/2015 08:52 PM, NeilBrown wrote:
> My proposal would be to change the default timing.
> Currently patches tagged for 'stable' go into the next -stable release
> after they get into Linus's tree.  You can ask for an exception
> (sooner, later, different patch) and Greg (or any other stable
> maintainer) tries to be accommodating.  But you have to remember to ask.
> 
> I would rather that the default was that patches don't go into -stable
> until they have
>   - been in a full release from Linus and
>   - been in a Linus's tree for at least 2 weeks.
>     (or 1 week times the age of the target in releases.
>      So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
>      after 2 weeks etc .... maybe I'm going over-board here).
> 
> Many fixes are important but simply aren't that urgent so the two or
> more weeks is no great cost.

I'd actually argue that Linus shouldn't be pulling *anything* that wasn't in
-next for 2+ weeks. There's no good excuse to want something pulled immediately
as the only benefit Linus's tree provides in that aspect is the wider testing
it receives, so it would make sense to weed out more bugs in -next before they
get to Linus.

I think that this is a small mind-shift from thinking about Linus's tree as
an integration tree to considering it as mostly bug-free code, and stop
merging in risky patches. We already have -next for that.

> If a developer/maintainer thinks a fix is urgent, then they need to
> explicitly ask for a quick release, and that could be as easy as saying:
> 
>   Cc: stable@vger.kernel.org (URGENT v3.0 and later)
> 
> An 'URGENT' fix *should* come with an independent
> "Reviewed-by:"  (well ... everything should of course, but if URGENT
> stable patches with no Reviewed-by got some push-back, I think that
> would be a "very good thing" all around).

I suppose that this is something Linus/maintainers would need to enforce? No
patch unless it lived in -next unless it was acked by the maintainer of that
subsystem?

> I don't think that tightening the criteria for going into any
> particular tree will really help.  I'm not sure there is even real
> agreement on what is or is not allowed in -stable (we have clearly
> written rules, but the practice is really whatever a maintainer
> chooses).
> -rc prereleases for -stable would only help if people tested them.
> Given that the same bugs are in -linus, the testing done there should
> be sufficient providing it is given enough time.

My reasoning for -rc prereleases for stable was to test out the backports that
go into stable kernels: they don't see the light of day until they're shipped
out to folks who want *stable* kernels, but end up being the first testers of
a backport.

I don't want to suggest that we do a few of those per stable kernel, but even
one -rc release that would end up in distros (marked as "proposed/devel") and
would let users test that would be a great step forward.

The reason I've suggested it for Ksummit rather than hashing it out on stable@
is that I believe that the solution is more complex and would need more discussion
than just slapping a "cooldown period" on patches. We need to make sure less
bugs/untested code ends up in Linus's tree to begin with, and we need a way to
validate proposed stable releases before releasing them, since -stable users
aren't interested in being testers.


Thanks,
Sasha
