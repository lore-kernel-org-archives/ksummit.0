Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FE3C71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 09:01:28 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA2A514B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 09:01:26 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 29 Aug 2016 11:01:08 +0200
Message-ID: <5149968.BflLUdM3a8@wuerfel>
In-Reply-To: <20160829071515.wqlpjccq7a3vk7u6@piout.net>
References: <1472330452.26978.23.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<20160829071515.wqlpjccq7a3vk7u6@piout.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>, Joe Perches <joe@perches.com>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, August 29, 2016 9:15:15 AM CEST Alexandre Belloni wrote:
> > 
> > commiter      commits         issues
> > arnd          858             2155
> > axboe         53              22
> > corbet                15              9
> > davem         55              81
> > grant.likely  2               0
> > gregkh                38              46
> > hch           393             581
> > James.Bottomley       15              15
> > martin.petersen       18              20
> > mchehab       678             1042
> > mgorman       104             256
> > mingo                 58              192
> > paulmck       176             68
> > peterz                226             511
> > rostedt       123             178
> > shuahkh       53              6
> > tglx          200             287
> > torvalds      64              89
> > tytso                 37              77
> > viro          350             256
> > 
> > And for the last 10,000 commits in the log, that script has observed 10,783 issues.
> > 
> > It'll be interesting to hear from these people about their view of checkpatch, but IMO when on average there are more issues than commits I can suggest two possible causes:
> > 
> >  1. People are used to ignore checkpatch warnings.
> >  2. People aren't using checkpatch.
> > 
> 
> Well, Arnd is used to move around old code when refactoring. As the code
> just moves, he rarely solves checkpatch issues when doing so which is
> the right thing to do.

I don't find checkpatch.pl overly useful for my own patches and rarely
run it. I looked over the last few hundred commits and found that almost
all the warnings were for:

- having overly long lines in commit messages when I quoted a long
  compiler warning. I generally don't wrap those to make it easier to
  search for the warnings in the git history

- missing the word "commit" before a reference to another changeset
  in full-text. I'll change that in the future if that makes people
  happy, but it doesn't seem important.

- existing style issues that I did not fix when fixing a bug. In many
  cases I find it better not to change coding style while fixing
  a bug, but there are other cases in which I do.

	Arnd
