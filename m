Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3028E481
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 02:00:27 +0000 (UTC)
Received: from namei.org (tundra.namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D117D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 02:00:26 +0000 (UTC)
Date: Wed, 29 Jul 2015 12:00:19 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <CALCETrXe-xH2U6RVuBkpbaps095vCHpRKcRnGrzSc=cy__F2ew@mail.gmail.com>
Message-ID: <alpine.LRH.2.20.1507291158030.28703@namei.org>
References: <CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<29878.1438100339@warthog.procyon.org.uk>
	<1438101758.5441.169.camel@HansenPartnership.com>
	<CALCETrXe-xH2U6RVuBkpbaps095vCHpRKcRnGrzSc=cy__F2ew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 28 Jul 2015, Andy Lutomirski wrote:

> This does not mean that their key should be acceptable for kexec
> images, modules, GPU firmware, firmware for different vendors' USB
> sticks, firmware for my hard disk, etc.  In fact I flat out distrust
> them if they ever try to provide such blobs.

Limiting key use is generally a good idea, even if we trust the vendor, 
keys get stolen.  We want to limit the damage that can be done with those 
keys.


-- 
James Morris
<jmorris@namei.org>
