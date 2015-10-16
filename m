Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D314267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 13:10:14 +0000 (UTC)
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA98D126
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 13:10:13 +0000 (UTC)
Received: by ykfy204 with SMTP id y204so84083361ykf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 06:10:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151016075735.GC11271@zurbaran.home>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
	<20151016075735.GC11271@zurbaran.home>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 16 Oct 2015 08:09:53 -0500
Message-ID: <CAL_JsqKkCd1+V=DU8i+f8w_YJHQg=mpEA7tDJq=2P3-kK_bwjQ@mail.gmail.com>
To: Samuel Ortiz <sameo@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 16, 2015 at 2:57 AM, Samuel Ortiz <sameo@linux.intel.com> wrote:
> Rob,
>
> On Thu, Oct 15, 2015 at 07:41:15PM -0500, Rob Herring wrote:
>> - Gaps in driver subsystems:
>>   - WiFi - Android gaps: mode switching, P2P, Chromecast, roaming,
>> ePNO, Passpoint
>>   - DRM/Graphics
>>   - BT/GPS/NFC - proper kernel drivers for serial devices
> Could you elaborate by what you mean by "proper" drivers in that
> context?

Exactly what was discussed on the thread early for this topic.
Creating in kernel drivers for serial attached devices like BT to
handle all the chip and board specific bits rather than do this in
userspace.

Rob
