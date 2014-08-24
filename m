Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B68EB982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:37:03 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2D5B3201F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 24 Aug 2014 18:37:03 +0000 (UTC)
Message-ID: <53FA30CC.9020404@roeck-us.net>
Date: Sun, 24 Aug 2014 11:37:00 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Grant Likely <grant.likely@secretlab.ca>
References: <20140819163621.GA15109@linux.vnet.ibm.com>	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>	<20140823081245.GA16949@localhost>	<CACxGe6s76N3eL5LK5HnLgMGHp3tJKsBBcsP-JYHFkCH+XjUWWg@mail.gmail.com>
	<CAMuHMdUJhghbOS0JiMidxLjNXe-Gofheb0A1pB_8kJemtak-6w@mail.gmail.com>
In-Reply-To: <CAMuHMdUJhghbOS0JiMidxLjNXe-Gofheb0A1pB_8kJemtak-6w@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/24/2014 11:15 AM, Geert Uytterhoeven wrote:
> On Sun, Aug 24, 2014 at 7:12 PM, Grant Likely <grant.likely@secretlab.ca> wrote:
>> Cross building the kernel isn't the problem. That's easy. Getting a
>> rootfs and the tests into the rootfs can be hard, depending on the
>> platform (a problem for some embedded targets).
>
> In the past, I have used OpenWRT to build the rootfs for the test
> target.
>
I very much prefer Grant's direct method - it ensures that the available
test code is automatically integrated into the root file system, and that
there are no architecture / target dependencies.

For my part I have used various means to create root file systems for my
own tests, depending on the architecture. I see it as significant improvement
to have it all together in a single place, in our control, and to have it
as simple as possible.

Guenter
