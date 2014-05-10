Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 66F8C8AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 00:16:56 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 11803201F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 00:16:56 +0000 (UTC)
Message-ID: <536D6FE2.5050503@zytor.com>
Date: Fri, 09 May 2014 17:16:34 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Josh Triplett <josh@joshtriplett.org>, Arnd Bergmann <arnd@arndb.de>
References: <5367D989.1000504@linaro.org>	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>	<20140509151043.GC15523@thunk.org>
	<4440149.cMfuUKn6MV@wuerfel> <20140509223315.GA5725@thin>
In-Reply-To: <20140509223315.GA5725@thin>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/09/2014 03:33 PM, Josh Triplett wrote:
>>
>> I think an important distinction is that the majority of systems that
>> will be seriously affected are embedded machines, which run a custom
>> user space anyway.
>>
>> x86-32 PCs and end-user distros are going to be largely extinct
>> in a couple of years and replaced by x64-64 or arm64 depending
>> on who you ask, and arm32 Android phones are going to be
>> replaced with arm64 hardware shortly after, or they see an ABI
>> break before then anyway.
>> The typical embedded machines don't even use glibc, and they
>> cross-build everything from source.
> 
> In particular, even systems that want some of the properties of 32-bit
> on 64-bit hardware can use x32; the concern is with new systems that
> don't support 64-bit at all.  Hence why we need to solve the problem
> *today*, so that the devices we're building in the next few years will
> survive 2038.
> 

I used to think 32-bit devices would be extinct by the mid-2020s.  It is
now obvious that not only will that be wrong, it will be wrong in the
most dramatic way possible... simply because all the places where we
currently have $0.25 8-bit microcontrollers running trivial operating
systems we'll have $0.25 32-bit microcontrollers and a fair chunk of
them will run Linux.  As we're getting to the point where the most
expensive part of the microcontroller is the package, there is simply no
reason to not have a powerful CPU with a real OS and minimize the amount
of time spent programming the damned thing.

Not to mention that the Internet of Things is going to mean many of them
are going to want to be Internet-connected.

	-hpa
