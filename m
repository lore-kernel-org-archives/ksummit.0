Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D43B68A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:47:52 +0000 (UTC)
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5912324B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:47:52 +0000 (UTC)
Received: by obbfr1 with SMTP id fr1so24327438obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 15:47:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <13252.1439419503@warthog.procyon.org.uk>
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
	<11239.1439403720@warthog.procyon.org.uk>
	<1439405139.3100.147.camel@infradead.org>
	<13252.1439419503@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 12 Aug 2015 15:47:31 -0700
Message-ID: <CALCETrX39atfi=0OyiCPnn_2YB-r9cbP1DhXhW4v3W8CSzWi0w@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, Aug 12, 2015 at 3:45 PM, David Howells <dhowells@redhat.com> wrote:
> David Woodhouse <dwmw2@infradead.org> wrote:
>
>> No. Just use a *hash* of the acceptable signing cert(s)=C2=B9. Note that=
 the
>> SKID is *usually* a hash of the public key, but isn't guaranteed to be
>> so, so using the SKID to specify the acceptable signing cert isn't
>> secure.
>
> True.  That's one of the reasons I don't like SKIDs - the specification i=
s
> very vague and non-enforcing.  We would need a 'standard' for how to hash=
 the
> public key data.  Some types of public key, for example, have more than o=
ne
> integer.  I wonder if we could just take the PGP method as the standard -
> though that does require extra elements.

This is a major benefit of modern (or modernish) ECC schemes: the
public key is pretty much unambiguously represented as a byte string.

(IIRC P-256 has some variable length garbage for part of it, but we
could pick any of the common representations and stick with it.  I
think that pretty much everyone agrees on something along the line of
0x04 plus the big-endian representation of the point in some standard
coordinate system, for 65 unambiguous bytes.)

--Andy
