Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 083468A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 18:12:24 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6709E1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 18:12:23 +0000 (UTC)
Date: Wed, 21 May 2014 11:12:14 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140521181214.GA4518@jtriplet-mobl1>
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
	<537BF61A.5010700@kernel.org> <537CDFA4.3030400@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <537CDFA4.3030400@zytor.com>
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

On Wed, May 21, 2014 at 10:17:24AM -0700, H. Peter Anvin wrote:
> On 05/20/2014 05:40 PM, Konstantin Ryabitsev wrote:
> > On 20/05/14 06:53 PM, josh@joshtriplett.org wrote:
> >> How feasible is it to support git hooks that want to construct
> >> and send (significant volumes of) email, while retaining the
> >> security and sandboxing currently being applied to git
> >> repositories?
> > 
> > It's feasible, but I can't make this a free-for-all, for obvious 
> > reasons. :) With gitolite, hooks execute as the same user "git"
> > and therefore any code running inside a hook has unfettered access
> > to all git repositories regardless of in-gitolite repository
> > permissions.
> > 
> > What we can do is have a peer-reviewed collection of "blessed"
> > hooks available to developers. Not being a kernel dev myself, I'm
> > not the one to put such a collection together, though -- I'm not
> > even sure if such a cookie-cutter approach would be suitable.
> > 
> > I guess what I'm really trying to say is that I'd rather avoid
> > having to continuously review code written by people to whom "you
> > write perl like it's C" is a compliment. ;) If we can get by with a
> > handful of standard hooks, I'm for it, though.
> > 
> 
> Hmm... I resemble that remark.
> 
> That being said, there is no fundamental reason that email generator
> have to be run on the master copy.  It can be run on an entirely
> different box, which doesn't even need any kind of privileged access
> to the machinery; this is how the tip-bot runs: it is just a "regular
> puller" of the tip tree, using the publicly accessible git port.  This
> does add some latency, but has the advantage that it sends out the
> emails once the commits are actually visible to general users upstream.
> 
> Generalizing the tip-bot is probably not that hard.  I already use
> variants of it for multiple projects.  It does have a *lot* of
> configuration options, though, some of which are in the form of
> scripts.  This pretty much means that in its current form it is
> equivalent to a shell account and would have to be sandboxed accordingly.

That's exactly the kind of approach I had in mind: let's not run this on
git.kernel.org or gitolite.kernel.org, but rather in a separate sandbox.

However, I don't think we need the full generality of tip-bot's shell
configuration; I'd personally be fine with Konstantin's proposal of a
curated set of hook scripts, perhaps enabled/disabled and configured via
a git branch in each repository.

- Josh Triplett
