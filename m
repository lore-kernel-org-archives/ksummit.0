Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 605888D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:45:58 +0000 (UTC)
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D23451FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:45:57 +0000 (UTC)
Received: by oiev193 with SMTP id v193so17310914oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 15:45:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <13213.1439419198@warthog.procyon.org.uk>
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
	<1438121016.5441.233.camel@HansenPartnership.com>
	<16035.1439324695@warthog.procyon.org.uk>
	<CALCETrV3LZu+e5Atwe2DUYUBhRnu-yEc-aguuco94jnPA2YYxg@mail.gmail.com>
	<11239.1439403720@warthog.procyon.org.uk>
	<CALCETrWPp3YW-b0=YxxntaMsc3eF_+rP-U4AT3JhWbEHj=Lzcw@mail.gmail.com>
	<13213.1439419198@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 12 Aug 2015 15:45:37 -0700
Message-ID: <CALCETrUcgKeT+CYWnHkJCFBGwqX+hT_OuQGWVrtPokMsBUrR0Q@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Aug 12, 2015 at 3:39 PM, David Howells <dhowells@redhat.com> wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
>
>> 1.5K?  I'm talking about an actual raw public key, which is 65 bytes
>> or less in reasonable implementations.  (64 or 65 bytes for P-256
>> depending on encoding and 32 bytes for compressed schemes like EdDSA.)
>
> Various bodies that define security criteria with which one must comply to be
> able to supply software mandate key lengths of at least 2048 bits - that is
> min 256 bytes.
>

Really?  Doesn't even FIPS prefer ECDSA on P-256 these days?  Your
employer has decided that the patent situation is acceptable. :)

Any standards body that says "minimum key length of 2048 bits" as
opposed to "minimum RSA or DSA key length of 2048 bits" with separate
criteria for EC groups is just nuts.

> But yes, we could even take a raw public key and just fill in a public_key
> structure for it and then use it.

I prefer that over certificates.  Smaller and simpler.

--Andy
