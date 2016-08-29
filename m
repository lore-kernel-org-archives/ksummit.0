Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD2C9902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:46:52 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48C661A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 17:46:52 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Joe Perches <joe@perches.com>, "Levin, Alexander"
	<alexander.levin@verizon.com>
Date: Mon, 29 Aug 2016 17:46:50 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
In-Reply-To: <1472404557.26978.84.camel@perches.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

> 80 columns is simply silly when dealing with either
> long identifiers or many levels of indentation.
>
> One thing that 80 column limit does do is encourage
> shorter identifiers and fewer levels of indentation.
>
> Generally, both of those are good things.

I think the main complaint with the limit is that people fix it by simply
breaking the long line, which often makes for less readable code.

Perhaps there would be less pushback on this if checkpatch also
complained about clumsily broken long lines and offered the advice
to restructure the code with helper functions etc. to avoid deep
indentation?

FWIW I do find checkpatch is helpful enough with useful tips
that it has value even when it generates some noise. Generally
the better you are at conforming to kernel style, the more irritating
it will be, because you only see the questionable output. For
newbies, and less frequent contributors (especially those who
work on other projects with other style guides) it is likely still
doing a good job.

In the journey from 4.6 to 4.7 we had 13433 commits. 2258 (16%)
from people with 5 or fewer commits in that release. Those are
the people most helped by checkpatch (plus the maintainers who
took those patches didn't have to spend as many cycles complaining
about style).

I think the bottom line is whether checkpatch's helpful messages do
more good than the grey area messages that cause people to make
questionable changes to shut checkpatch up.

-Tony
