Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A700D0D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:08:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3837E2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:08:33 +0000 (UTC)
Message-ID: <1536592110.4035.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Daniel Vetter
	<daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 08:08:30 -0700
In-Reply-To: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Mon, 2018-09-10 at 04:53 -1000, Linus Torvalds wrote:
>   "Live without email - possible?"

Can I propose one small alteration to the topic:

	"Patches without Email - Possible?"

The reason is I've had too much experience with other open source
projects who religiously oppose email based interaction (some of them
because the kernel uses it) and have seen the amount of difficulty and
friction it causes and I really don't think we want to go down that
exclusionary road.  I think we always need a way of accepting patches
by email because it's the easiest communication mechanism for people
who aren't contributors.  However, I think we could discuss not having
email for our main workflows.

Some issues this brings up that various other communities solve in
different ways

   1. How do reviews happen?  Non email projects tend to have only one
      review mechanism (gerrit, github, gitlab, etc.) and stick to it.  Do
      we want to pick a technology or allow multiple?  I don't think this
      is kernel wide, it could be a sybsystem choice.
   2. Do we want to look at other review concepts like the core reviewers,
      since reviewers will now at least need accounts on whatever system
      it is ... it could finally be the way we give proper credit to
      reviewers.
   3. Pull requests to Linus ... what technology do you want to choose?

Note we don't even have to have a big bang on this: we could start with
non-email pull requests to Linus and then extend outwards.

James
