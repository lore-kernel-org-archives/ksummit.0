Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D225B899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:11:16 +0000 (UTC)
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67E1BCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 00:11:16 +0000 (UTC)
Received: by mail-io0-f178.google.com with SMTP id h134so27221718iof.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:11:16 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170627231011.GA10543@mail.hallyn.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 27 Jun 2017 17:11:15 -0700
Message-ID: <CA+55aFyu4OXPcggG2_9XCPxHJrFC_vXz-Afdp1trHgU9VnPBpg@mail.gmail.com>
To: "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 4:10 PM, Serge E. Hallyn <serge@hallyn.com> wrote:
> Quoting Linus Torvalds (torvalds@linux-foundation.org):
>> For example, how about a script that takes a list of PCI devices, and
>
> Or uses lspci and lsusb output?

Well, you'd probably want to do "cross configurations" in many
situations, but yes, have the script fall back to just doing the local
thing.

That said, I really think that for hotpluggable things (ie usb, but
also obviously hotpluggable PCIe through
USB-C/TB3/whateveritscalledtoday), you should strive to not just look
at "right now" but also history. That's where a log of historical udev
events or whatever could be very useful.

            Linus
