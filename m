Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0BE38D4D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 08:41:40 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3D5D8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 08:41:38 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Jiri Kosina <jikos@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
Date: Tue, 11 Sep 2018 11:41:39 +0300
Message-ID: <87a7oo2zp8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 10 Sep 2018, Jiri Kosina <jikos@kernel.org> wrote:
> On Mon, 10 Sep 2018, James Bottomley wrote:
>
>>    1. How do reviews happen?  Non email projects tend to have only one
>>       review mechanism (gerrit, github, gitlab, etc.) and stick to it.  Do
>>       we want to pick a technology or allow multiple?  I don't think this
>>       is kernel wide, it could be a sybsystem choice.
>
> Yeah, but OTOH even now I've heard a lot of feedback about the irregular 
> contributors / newcomers being confused by different subsystems having 
> different processess and requirements; and those are basically just rather 
> "minor" things currently (bugzilla usage, patchwork usage, subscriber-only 
> mailinglists, etc), but it's still enough to confuse the hell out of 
> people.

MAINTAINERS is supposed to be the central database about all this. IMO
maintainers should be more active in getting their data updated. We have
folks who don't document their preferences or expectations, at all, and
then go on to rant at random contributors about how their corner of the
kernel community is supposed to operate. For example, that they never
look at bugzilla etc. If the current entries don't cover everything, one
can use W: to add a link to more details, or we can add new entries.

And that's just the obvious prerequisite to actively telling
contributors to look at MAINTAINERS.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
