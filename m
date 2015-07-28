Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A32841C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:06:07 +0000 (UTC)
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C170F1C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:06:06 +0000 (UTC)
Received: by laah7 with SMTP id h7so72696605laa.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 10:06:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1438101758.5441.169.camel@HansenPartnership.com>
References: <CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<29878.1438100339@warthog.procyon.org.uk>
	<1438101758.5441.169.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 10:05:45 -0700
Message-ID: <CALCETrXe-xH2U6RVuBkpbaps095vCHpRKcRnGrzSc=cy__F2ew@mail.gmail.com>
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

On Tue, Jul 28, 2015 at 9:42 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2015-07-28 at 17:18 +0100, David Howells wrote:
>> Andy Lutomirski <luto@amacapital.net> wrote:
>>
>> > Agreed.  See about.  I don't think the concept of trust should be as
>> > simple as "we trust" or "we don't trust" -- we should trust certain
>> > vendors for certain purposes only.
>>
>> How do you deal with a big vendor, like Intel, that makes lots of different
>> bits for lots of different purposes?
>
> I don't understand what you think the problem is?  What's not clear
> about "we have to trust the vendor".  If they choose to use a single key
> for multiple drivers, it's no more or less a problem than if they choose
> multiple keys, one for each driver.
>
> I think the trust we're investing is in the provenance of the blob, not
> the blob itself, so the firmware can't be substituted with a malicious
> version by an outside entity.  If we don't trust the firmware vendor,
> then all bets are off and the provenance chain is pretty meaningless.

I think we disagree on the scope of the trust.  I trust the USB widget
vendor to provide firmware for the USB widget.  I might as well trust
them to sign the firmware itself and to provide new signed blobs by
any means (web, email, shoved in a directory, whatever).  I have no
choice anyway, since they provided the device in the first place and
they could have burnt anything they wanted into it.

This does not mean that their key should be acceptable for kexec
images, modules, GPU firmware, firmware for different vendors' USB
sticks, firmware for my hard disk, etc.  In fact I flat out distrust
them if they ever try to provide such blobs.

--Andy
