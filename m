Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEC0FC9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 22:33:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6383D8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 22:33:45 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B8F512086E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 22:33:44 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id j26-v6so18219893wre.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 08 Sep 2018 15:33:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1536441899.22308.11.camel@HansenPartnership.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<CA+55aFwiW9eeC0Z1+HnhCVzH=LmfBQfpdFZ0eYSuHdp5U6bpEg@mail.gmail.com>
	<1536441899.22308.11.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Sat, 8 Sep 2018 15:33:22 -0700
Message-ID: <CALCETrXwqgX41dmZhG55wGoZvmsn8qUdYMHG5_ne2hH7Oa65=A@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Sep 8, 2018 at 2:24 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Sat, 2018-09-08 at 12:49 -0700, Linus Torvalds wrote:
>> On Sat, Sep 8, 2018, 08:54 James Bottomley <
>> James.Bottomley@hansenpartnership.com> wrote:
>>
>> >
>> > OK, let me make it more specific: there exists no individual
>> > contributing to open source in a leadership capacity for whom a
>> > signable NDA cannot be crafted.
>> >
>>
>> No.
>>
>> I don't sign NDA's. I just don't do it.
>>
>> It's that simple.
>
> But that's you're choice; it's not because legally you can't.
>
>> It's actually worked pretty well. It started because I worked for a
>> direct competitor to Intel, and couldn't sign an NDA for the really
>> old f0 0f lockup issue.
>>
>> Not having an NDA back then turned out to be a good thing, because it
>> made it a non-issue when leaks happened. So I started the policy that
>> I never want to be in the position that I had to worry legally about
>> being in the position of being under an NDA and knowing things
>> outside of the leaks.
>>
>> Instead, I've had a gentleman's agreement with companies - nothing
>> legally binding, but over the years people have come to realize that
>> the leaks don't come from me.
>>
>> So I don't do NDA's. Maybe some Linux Foundation NDA agreement
>> technically covers me, but at least with the Intel cases, Intel is
>> actually aware of my non-NDA situation and is fine with it.
>
> I'm fine with all of this as an argument.  If we believe that signing
> NDAs would eventually lead to worse disasters because agreeing to them
> now means corporations never change and never take our views into
> account, then we should have the debate and make the decision for sound
> policy reasons not because there's some spurious legal bar.
>

My NDA is through my company.  I would *love* to cancel it and set up
a replacement arrangement through LF or a similar entity, or to just
not replace it at all.  My company is not equipped for the kind of
wrangling that would have helped during Meltdown and a couple of other
situations, whereas anything reasonable set up for the purpose would
work much better.
