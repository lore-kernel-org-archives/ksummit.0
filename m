Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FC37305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 04:47:41 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3037BF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 04:47:39 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180509044732.GA29311@1wt.eu>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508202912.GC8514@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180508202912.GC8514@sasha-vm>
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
Date: Wed, 09 May 2018 04:47:41 -0000

On Tue, May 08, 2018 at 08:29:14PM +0000, Sasha Levin wrote:
> What if, instead, Linus doesn't actually ever release a point release?
> We can make the merge window open more often, and since there's no
> actual release, people won't rush to push fixes in later -rc cycles.

And then what's the purpose of these later -rc cycles if you remove one
release ? You're just removing one step and shifting everything down by
one -rc but the issues are the same.

> We take away the incentive to push poorly tested code. Maintainers still
> free to commit anything they'd like, but there's no reason to commit
> code they're not confident of just to make it to a random release no one
> will use.
> 
> Merge window will happen more often, so there's no real reason to rush
> things in a particular window, and since -stable releases every week
> there's no rush to push a fix in since the next release is just a week
> away.

I'm not sure what model you're having in mind but the description above
reminds me of 2.5 which was constantly had something broken and which
used to be unusable for many developers. Many of us even bought some
SCSI cards and disks by then because for a long time IDE was broken.

The primary purpose of Linus' releases and -rc is to synchronise everyone
on the same goal at the same time. The merge window is "send me your crap,
it must be OK but we know problems happen and you'll be allowed to fix it
later". The -rc ones are there so that everyone fixes their crap in
parallel so that we converge towards something acceptable for everyone.

Your argument that the .0 release is useless is wrong in my opinion. It
is as wrong as saying "statistics show that less people use .3 than .7".
And comparing "stable kernels" to ".0" is wrong because there are roughly
10 times more stable kernels than releases so statistically you'll find
10 times more of them in field. The reality is that deploying .0 always
takes a bit more time for end users so statistically it should be a bit
less common in field :
  - you're never certain when the new version is going to be released
    (will rc8/rc9 exist?)
  - when it's released, you have to update your config and it takes
    some time.
  - by the time you find a quiet moment to do all this, it's not
    unlikely that the end of the week is reached with .1 appearing.

And so what ? The .0 release is a stable release like any other one.
It doesn't deserve to be deployed more than any other specific stable
release. It serves as a reference. Before .0 the code experiences some
possibly breaking changes, even some reverts. After .0 it experiences
only small fixes according to the stable rules.

Overall I think the current model is not that bad, and that what is the
most needed is some education regarding how -stable works to encourage
developers to rush their fixes less (after more tests), and to ensure
that those who generally push good quality fixes can submit them at any
moment in the cycle so that we get them as fast as possible in -stable.

Willy
