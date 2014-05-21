Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3DD6B8A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 17:17:46 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EA34200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 17:17:43 +0000 (UTC)
Message-ID: <537CDFA4.3030400@zytor.com>
Date: Wed, 21 May 2014 10:17:24 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Konstantin Ryabitsev <mricon@kernel.org>, josh@joshtriplett.org
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
	<537BF61A.5010700@kernel.org>
In-Reply-To: <537BF61A.5010700@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/20/2014 05:40 PM, Konstantin Ryabitsev wrote:
> On 20/05/14 06:53 PM, josh@joshtriplett.org wrote:
>> How feasible is it to support git hooks that want to construct
>> and send (significant volumes of) email, while retaining the
>> security and sandboxing currently being applied to git
>> repositories?
> 
> It's feasible, but I can't make this a free-for-all, for obvious 
> reasons. :) With gitolite, hooks execute as the same user "git"
> and therefore any code running inside a hook has unfettered access
> to all git repositories regardless of in-gitolite repository
> permissions.
> 
> What we can do is have a peer-reviewed collection of "blessed"
> hooks available to developers. Not being a kernel dev myself, I'm
> not the one to put such a collection together, though -- I'm not
> even sure if such a cookie-cutter approach would be suitable.
> 
> I guess what I'm really trying to say is that I'd rather avoid
> having to continuously review code written by people to whom "you
> write perl like it's C" is a compliment. ;) If we can get by with a
> handful of standard hooks, I'm for it, though.
> 

Hmm... I resemble that remark.

That being said, there is no fundamental reason that email generator
have to be run on the master copy.  It can be run on an entirely
different box, which doesn't even need any kind of privileged access
to the machinery; this is how the tip-bot runs: it is just a "regular
puller" of the tip tree, using the publicly accessible git port.  This
does add some latency, but has the advantage that it sends out the
emails once the commits are actually visible to general users upstream.

Generalizing the tip-bot is probably not that hard.  I already use
variants of it for multiple projects.  It does have a *lot* of
configuration options, though, some of which are in the form of
scripts.  This pretty much means that in its current form it is
equivalent to a shell account and would have to be sandboxed accordingly.

	-hpa
