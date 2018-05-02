Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 290545AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 04:30:24 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 24DB44FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 04:30:22 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180502043017.GA11938@1wt.eu>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180501220228.GD7397@sasha-vm>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Wed, 02 May 2018 04:30:24 -0000

On Tue, May 01, 2018 at 10:02:30PM +0000, Sasha Levin wrote:
> On Tue, May 01, 2018 at 04:54:48PM -0400, Theodore Y. Ts'o wrote:
> >Post -rc3 or -rc4, in my opinion bug fixes should wait until the next
> >merge window before they get merged at all.  (And certainly features
> >bugs should be Right Out.)  And sure, bug fixes should certainly get
> >more testing.  So I guess my main objection is your making a blanket
> >statement about all fixes, instead of breaking out regression fixes
> >versus bug fixes.  Since in my opinion they are very different animals...
> 
> I understant your point, you want to make fixes available to testers as
> soon as possible. This might make sense, as you've mentioned, in < -rc3.
> 
> So yes, maybe the solution isn't to force -next, but rather add more
> "quiet time" at the end of the cycle? Make special rules for -rc7/8? Or
> even add a "test"/"beta" release at the end of the cycle?

I disagree with the proposals above, and for multiple reasons :
  - leaving a known bug on purpose automatically degrades the quality of
    each release. Given that less than 100% of the fixes introduce
    regressions, by not merging any of these fixes, we'll end up with
    more bugs. That's a very bad idea.

  - this will give a worse image of dot-0 releases, and users will be
    even less interested in testing them, prefering to wait for the
    first stable version. In this case what's the point of dot-0 if it
    is known broken and nobody uses it ?

  - letting fixes rot longer on the developer side will send a very bad
    signal to developers : "we don't care about your bugs". Companies
    relying on contractors will have a harder time including fixes in
    the contract, as it will only cover what's needed to get the feature
    merged. Again this will put the focus on extremely fast and dirty
    development, given that fixes will not be considered during the same
    window.

I'd rather do the exact opposite except for those who introduce too many
regressions : set up a delay penalty to developers who create too many
regressions and make this penalty easy to check. I think it will generally
not affect subsystem maintainers, unless they pull and push lots of crap
without checking, of course. But it could prove very useful for those
developing under contract, because companies employing them will want to
ensure that their work will not be delayed due to a penalty. Thus is will
be important for these developers to be more careful.

After all, the person proposing a fix always knows better than anyone
else if this fix was done seriously or not. Developers who do lots of
testing before sending should not be penalized, and should get their
fix merged immediately. Those who just send untested patches should be
trusted much less.

> From what I see, the same number of bugs-per-line-of-code applies for
> commits accross all -rc releases, so while it makes sense to get a fix
> in quickly at -rc1 to allow testing to continue, the same must not
> happen during -rc8, but unfourtenately it does now.

That's where I strongly disagree, since it would mean releasing with even
more bugs than today.

Willy
