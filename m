Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D7767E8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:15:29 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73260A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:15:29 +0000 (UTC)
Date: Wed, 5 Sep 2018 15:15:25 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <20180905130512.GA5601@kroah.com>
Message-ID: <nycvar.YFH.7.76.1809051509100.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
	<20180905130512.GA5601@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, Greg KH wrote:

> For these specific ones, I trusted that the maintainer of the subsystem
> knew what they were doing when they marked them for the stable tree.

And do you honestly think they should be marked for stable tree in the 
first place?

> Which is what we do in kernel development, we trust others that their 
> stewardship of their code subsystems is in the best interest of their 
> users.  

Sure, I wholeheartedly agree. For Linus' tree, all the web of trust is 
there so that changes can be propagated up the maintainership structure, 
and we trust the maintainers and developers that they did all the 
development and testing as well as they possibly could, and that eventual 
bugs in the code will be responsibly fixed.

For stable, there is another aspect that needs to be trusted -- that the 
relevance for stable has been properly considered, so that we ideally 
avoid the need for "eventual bugs will be fixed" much more pro-actively 
than in Linus' tree (that's "stable", right?).

And I think we simply could improve there (well, again, this all very much 
depends on the target audience I guess).

*Especially* with the automatic selection thing -- who exactly is the 
entity you trust there?

-- 
Jiri Kosina
SUSE Labs
