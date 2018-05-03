Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 905568E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:57:07 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 72D764FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:57:05 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180503155658.GG23311@1wt.eu>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<877eol808s.fsf@intel.com>
	<1525357984.3225.12.camel@HansenPartnership.com>
	<20180503144850.GC23311@1wt.eu> <20180503150608.GM18390@sasha-vm>
	<1525361268.3225.17.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1525361268.3225.17.camel@HansenPartnership.com>
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
Date: Thu, 03 May 2018 15:57:07 -0000

On Thu, May 03, 2018 at 08:27:48AM -0700, James Bottomley wrote:
> It's also a sad fact that a lot of things which look like obvious fixes
> actually turn out not to be so with later testing.  This is why the
> user visibility test is paramount.  If a bug fix has no real user
> visible effects, it's often better to defer it no matter how obvious it
> looks, which is why the static code checkers often get short shrift
> before a merge window.
> 
> A script measuring user visibility would be nice, but looks a bit
> complex ...

I totally agree with this and it matches my experience in haproxy. We
have had series of fixes that broke something else in very subtle ways
that made us want to improve non-reg, but many of the times we noted
that reg testing would hardly spot them given that the failures require
so many conditions to happen only once every million that it's hopeless.
It's just that some users are (un)lucky enough to meet all the conditions
at once very often and to be very sensitive to one error per million.

User exposure is needed. Having multiple stable release ensures everyone
gets their expected level of trust. Those on -rc want to see bugs before
they hit their users. Regressions are bad and require self-moderation and
self-estimation of the amount of trust in one's code, but they're better
in -rc than in -stable. I do happen to write some fixes I'm not totally
sure about and prefer not to backport them immediately. Users value
transparency because that helps them take safe decisions. If I say "this
is my fix, but I'd love more testing as I'm not yet sold on it", I'll get
some testers, but not the ones complaining that I broke their setup. Only
later it makes sense to progressively backport.

I have broken stable releases many times with failed backports. Almost
every time it was my fault due to incomplete testing. I could argue that
once you've built one hundred times in a week-end you're probably a bit
more lenient about next builds, or whatever. But in the end I was the
one breaking a working version. Seeing my branches picked up by Guenter
was a huge relief and it started to spot many build issues that I could
not figure myself. It doesn't make remaining bugs less important but at
least they are easier to swallow, to spot and to address.

What's not acceptable is rushed fixes that have obvious side effects that
could have been caught by closer analysis or better testing. It always
happens but it must not happen too often for the same person/subsystem.
This I think is where the line must be drawn. When Linus shouts once in
a while, it's a reminder for all others. Tune the potentiometer of his
detection threshold a bit lower and we'll get less regressions because
it's never pleasant to be called stupid in public like he does.

Willy
