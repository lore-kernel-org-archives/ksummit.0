Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49D2795D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:40:10 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5DFFC463
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 10:40:09 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Joe Perches <joe@perches.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>
In-Reply-To: <1508290061.6530.40.camel@perches.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
	<1508163175.7571.2.camel@HansenPartnership.com>
	<8760bfmaoz.fsf@intel.com> <1508170057.6530.13.camel@perches.com>
	<87lgkakwa8.fsf@intel.com> <1508290061.6530.40.camel@perches.com>
Date: Wed, 18 Oct 2017 13:41:37 +0300
Message-ID: <878tg8lov2.fsf@intel.com>
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

On Tue, 17 Oct 2017, Joe Perches <joe@perches.com> wrote:
> On Tue, 2017-10-17 at 11:34 +0300, Jani Nikula wrote:
>> On Mon, 16 Oct 2017, Joe Perches <joe@perches.com> wrote:
>> > On Mon, 2017-10-16 at 17:25 +0300, Jani Nikula wrote:
>> > > On Mon, 16 Oct 2017, James Bottomley <James.Bottomley@HansenPartners=
hip.com> wrote:
>> > > > On Wed, 2017-10-11 at 21:51 +0300, Jani Nikula wrote:
>> > > > > On Mon, 09 Oct 2017, James Bottomley <James.Bottomley@HansenPart=
nersh
>> > > > > ip.com> wrote:
>> > > > > >=20
>> > > > > > On Mon, 2017-10-09 at 18:49 +0200, Julia Lawall wrote:
>> > > > > > >=20
>> > > > > > > Do you suggest one big patch, that goes to who?=C2=A0=C2=A0O=
r lots of
>> > > > > > > little
>> > > > > > > patches that go out at once to the individual maintainers of=
 the
>> > > > > > > affected code?
>> > > > > >=20
>> > > > > > I was actually thinking we validate the script and if there ar=
e no
>> > > > > > problems, apply it at -rc1 ... so effectively one big patch.
>> > > > >=20
>> > > > > By -rc1 we (drm in general, drm/i915 in particular) will already=
 have
>> > > > > accumulated easily 4-5 weeks' worth of commits for the *next* me=
rge
>> > > > > window. Applying treewide stuff to Linus' tree at -rc1 forces a
>> > > > > backmerge and potentially conflicts galore
>> > > >=20
>> > > > If we're applying a semantic patch script (and we've verified it w=
orks
>> > > > well enough to use the script on the -rc1 main tree), couldn't you
>> > > > simply apply it to your tree at the same time?
>> > >=20
>> > > If we did, the fixes would show up in a later kernel release. Which =
is
>> > > just fine for us. In other words, just let subsystems and drivers ha=
ndle
>> > > this as they see fit?
>> >=20
>> > Scheduling and acceptance rates are the issue.
>> >=20
>> > Also some scripted patches require complete treewide
>> > application to allow things like API changes.
>>=20
>> As described in https://lwn.net/Articles/735468/ we have a pretty
>> extensive and growing CI system in place. We don't apply a single patch
>> without a pre-merge green light from CI, no exceptions. I take issue
>> with applying any patches to our driver that didn't go through our CI
>> first, let alone bypassing our repositories.
>>=20
>> If an API change requires a flag day treewide change in a 15M+ line
>> hierarchically developed codebase, you're just plain doing it wrong.
>
> THe size of the codebase is not particularly relevant and

Sure it is. It translates to the amount of people and subsystems and the
pain you're causing them.

> that's simply not always possible.

That something is not always possible is not a reason to change the
usual process to cater for the rare outlier case. Making it easier to do
treewide changes encourages people to do just that, and discourages them
from finding the ways to not cause trouble to subsystems.


BR,
Jani.

--=20
Jani Nikula, Intel Open Source Technology Center
