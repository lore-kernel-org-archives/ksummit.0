Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66F3171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 06:04:06 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CE82168
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 06:04:05 +0000 (UTC)
In-Reply-To: <20160728233812.GG1494@piout.net>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<20160728233812.GG1494@piout.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Fri, 29 Jul 2016 07:04:03 +0100
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>,
	Jonathan Cameron <jic23@kernel.org>
Message-ID: <3266EC6A-EE44-4770-AB78-F638EE737378@jic23.retrosnub.co.uk>
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
	interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 29 July 2016 00:38:12 BST, Alexandre Belloni <alexandre.belloni@free-electrons.com> wrote:
>Hi,
>
>On 20/07/2016 at 22:18:11 +0100, Jonathan Cameron wrote :
>> A few suggestions for people:
>> 
>> Guenter Roeck (hmwon)
>> Dmitry Torokhov (input)
>> Me (Jonathan Cameron - IIO)
>> 
>> Someone thermal related (not sure who would be most interested)
>> Someone power supply related? (Guenter, any suggestions?)
>> 
>> Someone device tree related (Mark Rutland? Rob Herring?)
>> 
>> Linus Waleij (gpio)
>> 
>> Mark Brown - as some of concepts of IIO bridging and how far it
>> can be taken (everything via a bridge driver) came from
>> discussions with him on SoC ADC handling.
>> 
>> Lar-Peter Clausen for generally doing insane things with ADCs +
>having
>> one foot in the userspace side of things.
>> 
>
>I'm pretty interested in that discussion as I've been writing/using
>some
>of the ADC/touch drivers (at91, mxs) and I've been involved in the
>sunxi
>ones.
>
>Also, I've recently been seeing people using GP ADCs wanting to get an
>ALSA interface and others using audio ADCs wanting the IIO interface.

So here is another case where it looks like we ultimately need bridges.

Hopefully the hardware usecase is obvious enough here that bindings
will be straight forward anyway...

Fits in well with Lars' point about everything is going more generic and
we need to be ready for it. Sounds like we are a bit late already...

I am beginning to wonder why I opened this can of worms! 

Jonathan
>
>Regards,

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
