Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF567D1A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:13:09 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 810A4786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:13:09 +0000 (UTC)
Date: Mon, 10 Sep 2018 17:13:05 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1536592110.4035.5.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.1809101709371.15880@cbobk.fhfr.pm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Mon, 10 Sep 2018, James Bottomley wrote:

>    1. How do reviews happen?  Non email projects tend to have only one
>       review mechanism (gerrit, github, gitlab, etc.) and stick to it.  Do
>       we want to pick a technology or allow multiple?  I don't think this
>       is kernel wide, it could be a sybsystem choice.

Yeah, but OTOH even now I've heard a lot of feedback about the irregular 
contributors / newcomers being confused by different subsystems having 
different processess and requirements; and those are basically just rather 
"minor" things currently (bugzilla usage, patchwork usage, subscriber-only 
mailinglists, etc), but it's still enough to confuse the hell out of 
people.

-- 
Jiri Kosina
SUSE Labs
