Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33EE689C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:50:25 +0000 (UTC)
Received: from outbound1.eu.mailhop.org (outbound1.eu.mailhop.org
	[52.28.251.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A9D511C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:50:24 +0000 (UTC)
Date: Wed, 3 Aug 2016 17:50:16 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160803175016.GO4541@io.lakedaemon.net>
References: <20160801233036.GH4541@io.lakedaemon.net>
	<CALCETrWDsMdU2-AWQC4wYvotnNd2ydWT15Ckq0nZaNRJZOtZ-g@mail.gmail.com>
	<CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
	<CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
	<20160802122005.GI4541@io.lakedaemon.net>
	<CALCETrVEY=opRPGKy=P9h8s+TC_K19WnBJ2svXT+=_FnqRF1Mw@mail.gmail.com>
	<CALCETrVZtn_SmeN1YX9_+2g+bEAHsfJJ7KQH7-eC_mU3O+0x2w@mail.gmail.com>
	<CALCETrX+-iD6=yECjZqG3Zfc2QnGxhom4tyUCUu5Kz3G4Y2Uxw@mail.gmail.com>
	<20160803164452.GM4541@io.lakedaemon.net>
	<CALCETrUUrYJk-WoTEMinxJyLG7TfJJAh+v3bZ1XsoufyjR99xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrUUrYJk-WoTEMinxJyLG7TfJJAh+v3bZ1XsoufyjR99xg@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 03, 2016 at 10:20:17AM -0700, Andy Lutomirski wrote:
> On Wed, Aug 3, 2016 at 9:44 AM, Jason Cooper <jason@lakedaemon.net> wrote:
> > On Tue, Aug 02, 2016 at 08:07:17AM -0700, Andy Lutomirski wrote:
...
> >> But we do need the kernel to verify the "iwlwifi-whatever.ucode" string to
> >> prevent an attack in which someone does:
> >>
> >> cp other-signed-thing.ucode iwlwifi-whatever.ucode
> >
> > How so?  The sha256 of the blob won't match, the signature will fail.
> >
> 
> I'm assuming the attacker has the ability to validly sign
> other-signed-thing.ucode.  For example, suppose that Eviltel wanted to
> compromise Intel hardware and released a firmware blob that worked
> correctly on Eviltel hardware but did bad things if loaded into an
> Intel card.  The verification scheme should prevent Kyle's signature
> on the Eviltel blob from being abused to load it into the Intel
> device.

Ah, now I see.  I was missing the Eviltel bit. ;-)  So you're attempting
to mitigate one of the key weaknesses of the CA system.  I still don't
think the filename is the correct mechanism for what you're trying to
do.  Although, I agree that it does need to be addressed and mitigated.

Perhaps the PCI ids and USB ids would be a better discriminator?  So,
your signature struct would contain one or more vendor/product
identifiers for which the signed blob is valid.  On embedded, the
devicetree compatible string may be sufficient for non-discoverable
busses.

In a realistic scenario, I could see Intel just signing the firmware,
then 'we' counter-sign with the added metadata restricting the firmware
to a specific subset of devices.  iow, we need to make sure to separate
veracity "Intel did create this" from policy "Debian/LKML says this
firmware should only be loaded into [device list]"

thx,

Jason.
