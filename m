Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0DD74927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:13:12 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 252CE20242
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:13:10 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Roland Dreier <roland@kernel.org>, Josh Triplett <josh@joshtriplett.org>
Date: Fri, 9 May 2014 20:13:08 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
	<CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
In-Reply-To: <CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 9, 2014 at 12:37 PM, Josh Triplett <josh@joshtriplett.org> wrot=
e:
> I'm interested in a related topic: we should systematically use IOMMUs
> and similar hardware features to protect against buggy or *malicious*
> hardware devices

Defending against buggy hardware is interesting from a RAS perspective.
You don't want a card with a stuck address line scribbling on memory
that you didn't want it to touch.

-Tony
=20
