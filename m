Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9F2A8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 19:45:36 +0000 (UTC)
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F977181
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 19:45:36 +0000 (UTC)
Received: by obbop1 with SMTP id op1so21136477obb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 12:45:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1439408625.2825.79.camel@HansenPartnership.com>
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
	<1439406931.2825.74.camel@HansenPartnership.com>
	<CALCETrXMdYL9ca1Rjh8LAe9zbOCAqWhUXm6-AbGBzdeu7ur6DA@mail.gmail.com>
	<1439408625.2825.79.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 12 Aug 2015 12:45:15 -0700
Message-ID: <CALCETrVpan_mzh-EHziskuMTM0q31w3vyc11p7OwBiuPJ-KAnA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Aug 12, 2015 at 12:43 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2015-08-12 at 12:25 -0700, Andy Lutomirski wrote:
>> All that's moot, though.  IMO the only reason we should support RSA
>> here is if there are vendor keys already out there (or Authenticode,
>> sigh) that use RSA.  RSA keys and signatures are rather large.
>
> In either case security rests on the discrete log problem.

RSA is based on factoring, not discrete log.

(With a caveat:
http://crypto.stackexchange.com/questions/802/would-the-ability-to-efficiently-find-discrete-logs-have-any-impact-on-the-secur)

--Andy
