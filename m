Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EB78273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:03:40 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6AF4C7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:03:38 +0000 (UTC)
Message-ID: <1438121016.5441.233.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 15:03:36 -0700
In-Reply-To: <CALCETrVVtcno1k8L_+LWuBApayUNFJmfG11MJV1hDo_0UjVRBg@mail.gmail.com>
References: <20436.1438090619@warthog.procyon.org.uk>
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2015-07-28 at 12:31 -0700, Andy Lutomirski wrote:
> On Tue, Jul 28, 2015 at 12:19 PM, David Woodhouse <dwmw2@infradead.org> wrote:
> > On Tue, 2015-07-28 at 10:03 -0700, Andy Lutomirski wrote:
> >>
> >> This will require that we take any firmware vendor's key and rewrap it
> >> somehow into a new X.509 blob with a key usage constraint.
> >
> > There are established ways of handling those constraints as external
> > objects (see how NSS does it in its trust tokens, and thus p11-kit
> > -trust does too).
> 
> Wow, I thought X.509 was bad.  Now we get PKCS#11, too?  Ick.
> 
> I have no problem whatsoever with having the userspace tooling support
> PKCS#11 tokens.  I think the kernel should try to minimize the extent
> to which is depends on X.509 on the kernel side.
> 
> If we're going to load keys into the kernel (at compile time, from
> UEFI, whatever), let's just *tell* the kernel, in plain English or C,
> what those keys are for, rather than trying to parse X.509
> constraints.
> 
> I'll point out that the Internet tried to use X.509 name constraints
> to allow CAs to be constrained to subsets of the DNS space, and it
> *still* doesn't work.
> 
> Heck, with the X.509 variant, if Megasoft has an existing key signed
> by SketchyTrust, and we want to trust SketchyTrust to sign firmware
> for SketchyUSB devices (and to delegate to Megasoft using the
> *existing* key), are we supposed to enforce transitive constraints?
> Where are they rooted?  I think this way lies madness.  Let's just
> throw SketchyTrust's key in the "SketchyUSB only" pile and be done
> with it rather than fiddling with OpenSSL to re-wrap SketchyTrust's
> self-signed (?).

I think you're making this too problematic.  There's two things:

     1. Root of trust for firmware keys.  I think having a X509 key with
        a firmware usage signing constraint is fine ... we just have to
        get a CA to issue those.  That would prevent the key from being
        a general trust key, which is useful
     2. Internal kernel policy for how we use the keys (this would not
        be coded in the cert) to say which key we trust for which
        driver.

1 is insufficient and trying to make 2 a general mechanism (or part of
the cert) is a path to madness.  Specifying specific firmware keys we
trust for specific drivers by the public key hash is fine (and actually
obviates 1 which is optional and just ensures that we don't get firmware
only keys into our general root key).  It's a simple per driver table, I
think.

James


> If I'm the unaffiliated author of a driver for a SketchyTrust device,
> I want to throw the cert into my driver and be done with it.  The
> kernel should *figure out on its own* that the cert is associated with
> my driver and my driver only and can't sign for my GPU.  I really
> don't want to muck with the X.509 blob, because I'm going to get it
> wrong.
> 
> [1] If we start rewrapping root keys and shoving the X.509 blobs into
> drivers, who signs those blobs?  We can't self-sign them because we
> don't have the private key, and we don't really want a completely
> pointless "kernel" key that exists solely for the purpose of producing
> well-formed X.509 certs, and we probably don't want to use ill-formed
> unsigned X.509 certs as our root.  So what's the point of using X.509
> at all for this purpose?
> 
> --Andy
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
