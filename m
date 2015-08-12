Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C86868F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:51:39 +0000 (UTC)
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 521E5258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 22:51:39 +0000 (UTC)
Received: by oip136 with SMTP id 136so17499451oip.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 15:51:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <13275.1439419600@warthog.procyon.org.uk>
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
	<13275.1439419600@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 12 Aug 2015 15:51:18 -0700
Message-ID: <CALCETrWeTMz7-J_uC-oG4jA6GY_ZdMa37E41dHztA1Wfy=h4og@mail.gmail.com>
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

On Wed, Aug 12, 2015 at 3:46 PM, David Howells <dhowells@redhat.com> wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
>
>> Once we're talking real, modern public keys, there's no point in even
>> hashing them.  A good cryptosystem will have 32-byte public keys, and
>> a sufficiently strong hash will be 32 bytes.
>
> And likely non-compliant with various security certifications.

Humor me: what security certification would not be okay with 65 bytes
of ECDSA/P-256 public key?  And what security certification would not
be okay with the SHA-256 (or SHA3-256) hash of something appropriate?

Even with compression, the standards should accept any representation
whatsoever that is *decompressed* to the correct 65-byte octet string
prior to calling into any crypto code.  Of course, there are (or were
or something) those who claim to have or have had patents on that,
from my extremely vague memory.

--Andy
