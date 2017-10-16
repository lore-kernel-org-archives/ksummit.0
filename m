Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7E79BCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:24:04 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 74A374D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 14:24:03 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>
In-Reply-To: <1508163175.7571.2.camel@HansenPartnership.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
	<1508163175.7571.2.camel@HansenPartnership.com>
Date: Mon, 16 Oct 2017 17:25:32 +0300
Message-ID: <8760bfmaoz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 16 Oct 2017, James Bottomley <James.Bottomley@HansenPartnership.com=
> wrote:
> On Wed, 2017-10-11 at 21:51 +0300, Jani Nikula wrote:
>> On Mon, 09 Oct 2017, James Bottomley <James.Bottomley@HansenPartnersh
>> ip.com> wrote:
>> >=20
>> > On Mon, 2017-10-09 at 18:49 +0200, Julia Lawall wrote:
>> > >=20
>> > > Do you suggest one big patch, that goes to who?=C2=A0=C2=A0Or lots of
>> > > little
>> > > patches that go out at once to the individual maintainers of the
>> > > affected code?
>> >=20
>> > I was actually thinking we validate the script and if there are no
>> > problems, apply it at -rc1 ... so effectively one big patch.
>>=20
>> By -rc1 we (drm in general, drm/i915 in particular) will already have
>> accumulated easily 4-5 weeks' worth of commits for the *next* merge
>> window. Applying treewide stuff to Linus' tree at -rc1 forces a
>> backmerge and potentially conflicts galore
>
> If we're applying a semantic patch script (and we've verified it works
> well enough to use the script on the -rc1 main tree), couldn't you
> simply apply it to your tree at the same time?

If we did, the fixes would show up in a later kernel release. Which is
just fine for us. In other words, just let subsystems and drivers handle
this as they see fit?


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Technology Center
