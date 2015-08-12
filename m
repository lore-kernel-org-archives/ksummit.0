Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E3338DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 19:15:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2CF9514B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 19:15:33 +0000 (UTC)
Message-ID: <1439406931.2825.74.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 12 Aug 2015 12:15:31 -0700
In-Reply-To: <CALCETrXJ6MMQs6s_PqZKbd36Q-V_PMXK_Kg_tQb7bre4jF_WfQ@mail.gmail.com>
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
	<CALCETrXJ6MMQs6s_PqZKbd36Q-V_PMXK_Kg_tQb7bre4jF_WfQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Luis Rodriguez <mcgrof@gmail.com>,
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

On Wed, 2015-08-12 at 12:09 -0700, Andy Lutomirski wrote:
> On Wed, Aug 12, 2015 at 11:45 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> > On Wed, 2015-08-12 at 19:22 +0100, David Howells wrote:
> >> By "a literal key provided by the driver" I presume you mean that the parts of
> >> the key (perhaps an X.509 cert) are actually compiled into the driver.  Yes we
> >> could do this quite easily - key_create_or_update() will turn a binary key
> >> blob into a struct key * that can then be used.  Do we want ~1.5K or more of
> >> undiscardable data per key adding to each module that wants to load firmware,
> >> particularly if it needs to carry several keys just in case one gets revoked?
> >
> > No. Just use a *hash* of the acceptable signing cert(s)¹. Note that the
> > SKID is *usually* a hash of the public key, but isn't guaranteed to be
> > so, so using the SKID to specify the acceptable signing cert isn't
> > secure.
> >
> > The actual signing cert doesn't need to be present in full because we
> > can require it to be present in the PKCS#7 signature.
> 
> Screw the cert.  It doesn't certify anything -- it's just a bloated
> wrapper around a public key.  It's not even worth the space in /lib it
> takes up.

I don't think we can entirely do that.  I agree the kernel only needs to
know that the owner of the firmware root of trust is happy with the
public key to verify the firmware signature.  However, the owner of the
firmware root of trust might like to satisfy themselves that the key was
genuinely issued by the people who should be providing the firmware.  To
do that, they need to check the certificate chain.  I agree this can be
done in userspace and doesn't have to be done by the kernel.

> Once we're talking real, modern public keys, there's no point in even
> hashing them.  A good cryptosystem will have 32-byte public keys, and
> a sufficiently strong hash will be 32 bytes.  Maybe hashing makes a
> little bit of sense if we're stuck with RSA for some reason.

I'm slightly confused by this comment: If you're thinking of Elliptic
Curve Cryptography, then it is simply RSA, just done over a more funky
mathematical structure that yields shorter keys.

James
