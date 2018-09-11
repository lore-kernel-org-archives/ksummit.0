Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A10A5DA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:10:38 +0000 (UTC)
Received: from blackbird.sr71.net (unknown [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 630FE7D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:10:38 +0000 (UTC)
To: Greg KH <greg@kroah.com>, Eduardo Valentin <edubezval@gmail.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
	<20180910232652.GC1764@localhost.localdomain>
	<20180911084536.GB23570@kroah.com>
From: Dave Hansen <dave@sr71.net>
Message-ID: <d11c38ae-2ea7-7d26-befa-3973ae9e4353@sr71.net>
Date: Tue, 11 Sep 2018 10:10:37 -0700
MIME-Version: 1.0
In-Reply-To: <20180911084536.GB23570@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/11/2018 01:45 AM, Greg KH wrote:
> What do you feel we could have done "better" given the constraints
> placed on us?

Hindsight is 20/20.  But, here are a few things I wish we would have had
in place a year or two ago.  These are utterly _minor_ nits in the grand
scheme of things.  Intel had the most room for improvement here, not the
community.  But, here's what the community could have done better:

1. Have a documented procedure for submitting issues that the submitter
   perceives can not go to security@.  Folks are always going to think
   they are a special snowflake.  This will get them talking to
   *someone* at least.
2. Document that stable updates require stable maintainers to be
   involved.  If you want fixes in mainline, tell Linus.  If you want
   stable fixes, tell the stable maintainers.  Also document the time
   required to integrate a fix, even if it is a worst-case estimate.
   (The distros who consume stable can help here, too)

Why?  From what I've seen, the folks controlling the embargo respect
*processes*.  A written-down document is a process that's hard to argue
with and represents the weight of the community.  But if I tell them,
it's just "one person's opinion".

Giving timelines is also very important.  Folks spend a lot of time
counting months and weeks back on the calendar from a disclosure date.
The timeline gives them a discrete date to *do* something.
