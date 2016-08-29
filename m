Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6362189F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:18:09 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0226.hostedemail.com
	[216.40.44.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E10041D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:18:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 37C4045A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 18:01:45 +0000 (UTC)
Message-ID: <1472493700.3425.67.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Luck, Tony" <tony.luck@intel.com>, "Levin, Alexander"
	<alexander.levin@verizon.com>
Date: Mon, 29 Aug 2016 11:01:40 -0700
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 17:46 +0000, Luck, Tony wrote:
> > 
> > 80 columns is simply silly when dealing with either
> > long identifiers or many levels of indentation.
> > 
> > One thing that 80 column limit does do is encourage
> > shorter identifiers and fewer levels of indentation.
> > 
> > Generally, both of those are good things.
> I think the main complaint with the limit is that people fix it by simply
> breaking the long line, which often makes for less readable code.
> 
> Perhaps there would be less pushback on this if checkpatch also
> complained about clumsily broken long lines and offered the advice
> to restructure the code with helper functions etc. to avoid deep
> indentation?

It suggests that already for 6+ leading tabs, but some more
intelligence for nominally ugly added line breaks would
definitely help.

Using longish simple identifiers or multiple dereferences
can make the line breaks at 80 columns silly.

Simple things like:

			if (longish_identifier != AN_EVEN_LONGER_DEFINED_CONSTANT_VALUE)
and
			if (some_pointer->member[index].another_member >> shift_constant)

shouldn't really ever be broken into multiple lines,
but I see that submitted by some names I haven't seen
before all the time.

It's not an easy problem to solve with regexes though.

> FWIW I do find checkpatch is helpful enough with useful tips
> that it has value even when it generates some noise. Generally
> the better you are at conforming to kernel style, the more irritating
> it will be, because you only see the questionable output. For
> newbies, and less frequent contributors (especially those who
> work on other projects with other style guides) it is likely still
> doing a good job.
> 
> In the journey from 4.6 to 4.7 we had 13433 commits. 2258 (16%)
> from people with 5 or fewer commits in that release. Those are
> the people most helped by checkpatch (plus the maintainers who
> took those patches didn't have to spend as many cycles complaining
> about style).
> 
> I think the bottom line is whether checkpatch's helpful messages do
> more good than the grey area messages that cause people to make
> questionable changes to shut checkpatch up.
> 
> -Tony
