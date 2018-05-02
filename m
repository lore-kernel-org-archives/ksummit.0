Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0B77258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 20:02:33 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BF4D4F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 20:02:32 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180502200229.GA12729@1wt.eu>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180502194139.GA18390@sasha-vm>
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
Date: Wed, 02 May 2018 20:02:33 -0000

On Wed, May 02, 2018 at 07:42:33PM +0000, Sasha Levin wrote:
> I'm not advocating to keep bugs in. If there is a fix, but the developer
> can't indicate that proper testing was done on the fix we should revert
> the new feature rather than merge the untested fix in.

If you're exclusively talking about newly merged features, I agree. But
I think that the initial point was not just about newly merged features.
Sometimes it will not work because other changes rely on this new feature
but the way I see it is that this kind of back-pressure should work well
enough to encourage developers to show they have valid reasons to trust
their fix.

> The way I see it, if a commit can get one or two tested-by, it's a good
> alternative to a week in -next.

Agreed. Even their own actually. And I'm not kidding. Those who run large
amounts of tests on certain patches could really mention is in tested-by,
as opposed to the most common cases where the code was just regularly
tested.

> >After all, the person proposing a fix always knows better than anyone
> >else if this fix was done seriously or not. Developers who do lots of
> >testing before sending should not be penalized, and should get their
> >fix merged immediately. Those who just send untested patches should be
> >trusted much less.
> 
> I'm a bit worried about (social) side effects of a scheme like this.

Me as well, because it's still a bit early for this, people might not
be prepared to this yet. But if it were at least discussed and presented
as one of the possibilities for the long term, newcomers would arrive
here with this possibility in mind and would possibly join in better
conditions and possibly that ultimately this solution would only exist
as a threat against bad players but would never be used. Also there are
more and more places where people find it normal to be noted by others,
maybe it will really end up like this over the long term, who knows. At
the very least a first note for a contractor is "I contributed X commits
last year, my work never got reverted for bad quality".

> >> From what I see, the same number of bugs-per-line-of-code applies for
> >> commits accross all -rc releases, so while it makes sense to get a fix
> >> in quickly at -rc1 to allow testing to continue, the same must not
> >> happen during -rc8, but unfourtenately it does now.
> >
> >That's where I strongly disagree, since it would mean releasing with even
> >more bugs than today.
> 
> Just don't release it. If we don't have a tested fix for a reported
> regression either extend the release cycle (-rc10+) or just revert the
> new feature and get it in the next merge window.

I agree in general, but the reality will often be different (think about
contractors for a limited time as I suggested). It should be considered
as a penalty against improper testing so that we don't even have to reach
this situation.

Willy
