Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE6897AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:22:06 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C49FE1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:22:05 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALCETrV3LZu+e5Atwe2DUYUBhRnu-yEc-aguuco94jnPA2YYxg@mail.gmail.com>
References: <CALCETrV3LZu+e5Atwe2DUYUBhRnu-yEc-aguuco94jnPA2YYxg@mail.gmail.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
	<1438099839.5441.165.camel@HansenPartnership.com>
	<1438100102.26913.183.camel@infradead.org>
	<CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
	<30361.1438101879@warthog.procyon.org.uk>
	<CALCETrXa_hw6tF2SekuQEYd=AHoWW_88dU_LgfXz6ziuRQpO5g@mail.gmail.com>
	<1438111168.26913.189.camel@infradead.org>
	<CALCETrVVtcno1k8L_+LWuBApayUNFJmfG11MJV1hDo_0UjVRBg@mail.gmail.com>
	<1438121016.5441.233.camel@HansenPartnership.com>
	<16035.1439324695@warthog.procyon.org.uk>
To: Andy Lutomirski <luto@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11238.1439403720.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Aug 2015 19:22:00 +0100
Message-ID: <11239.1439403720@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Kyle McMartin <jkkm@jkkm.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Andy Lutomirski <luto@amacapital.net> wrote:

> > The top patch here:
> >
> >         http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.=
git/log/?h=3Dmodsign-pkcs7-2
> >
> > allows demand loading of keys based on their SKID into a special keyri=
ng from
> > which they get erased after an arbitrary 3 minutes of existence.  This=
 key can
> > then be used to verify a signature instead of using the primary system=
 keyring
> > used for module signature checking.
> >
> > Building on this, a driver could have a SKID compiled into it which co=
uld then
> > be used to load a key for request_firmware() to use in verifying the b=
lobs
> > that that driver requires.
> >
> =

> Who signs the vendor key?

=46rom the arguments so far presented, the vendor - but possibly allowing =
the
linux-fimrware manager to sign in lieu if the admin of a machine running t=
his
stuff allows it.

> Why are we bothering loading device vendor keys into a keyring in the
> first place?

Caching.  Some drivers need more than one firmware blob.

> Why not just have an API to request firmware either signed by a literal =
key
> provided by the driver *or* whatever keys the system trusts in general f=
or
> firmware signing?

By "a literal key provided by the driver" I presume you mean that the part=
s of
the key (perhaps an X.509 cert) are actually compiled into the driver.  Ye=
s we
could do this quite easily - key_create_or_update() will turn a binary key
blob into a struct key * that can then be used.  Do we want ~1.5K or more =
of
undiscardable data per key adding to each module that wants to load firmwa=
re,
particularly if it needs to carry several keys just in case one gets revok=
ed?

Objections have been raised against using general keys for firmware signin=
g.

David
