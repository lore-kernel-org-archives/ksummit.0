Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77FE7480
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 15:37:04 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9B4FB6B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 15:37:02 +0000 (UTC)
Date: Thu, 10 May 2018 08:36:58 -0700
From: Tony Lindgren <tony@atomide.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <20180510153658.GE98604@atomide.com>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<20180508023439.GA8514@sasha-vm> <20180508034820.GE999@thunk.org>
	<20180508144958.GU98604@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180508144958.GU98604@atomide.com>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Tony Lindgren <tony@atomide.com> [180508 14:52]:
> * Theodore Y. Ts'o <tytso@mit.edu> [180508 03:50]:
> > Would I pull down linux-next, and fire up a VM running gce-xfstests?
> > Sure.  But that's not a real-life use case; that's just running canned
> > test cases.  And more often than not, linux-next will be broken while
> > Linus's -rcX tree is just fine; which is why I do most of my ext4
> > testing using patches based on top of -rcX, not based on top of
> > linux-next.
> 
> Ideally we would somehow always end up with an -rc1 that people dare
> to use though for the "prosumer" testing :)

BTW, the reason why I think we all should test Linux next on regular
basis is that it's often "some other people's branches(tm)" that cause
the regressions :) Maybe because their own test cases did not show
any regressions, or because they were unable to test the patches.
Or it's because of some "clean-up" work that's completely untested
on some systems.

And that's how we end up with regressions getting merged into -rc1.

Regards,

Tony
