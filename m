Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68C4D942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 01:27:34 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 79B7F201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 01:27:33 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 10 May 2014 03:44:14 +0200
Message-ID: <1630933.kUUcsJjp2H@vostro.rjw.lan>
In-Reply-To: <536D6FE2.5050503@zytor.com>
References: <5367D989.1000504@linaro.org> <20140509223315.GA5725@thin>
	<536D6FE2.5050503@zytor.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: John Stultz <john.stultz@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 09, 2014 05:16:34 PM H. Peter Anvin wrote:
> On 05/09/2014 03:33 PM, Josh Triplett wrote:
> >>
> >> I think an important distinction is that the majority of systems that
> >> will be seriously affected are embedded machines, which run a custom
> >> user space anyway.
> >>
> >> x86-32 PCs and end-user distros are going to be largely extinct
> >> in a couple of years and replaced by x64-64 or arm64 depending
> >> on who you ask, and arm32 Android phones are going to be
> >> replaced with arm64 hardware shortly after, or they see an ABI
> >> break before then anyway.
> >> The typical embedded machines don't even use glibc, and they
> >> cross-build everything from source.
> > 
> > In particular, even systems that want some of the properties of 32-bit
> > on 64-bit hardware can use x32; the concern is with new systems that
> > don't support 64-bit at all.  Hence why we need to solve the problem
> > *today*, so that the devices we're building in the next few years will
> > survive 2038.
> > 
> 
> I used to think 32-bit devices would be extinct by the mid-2020s.  It is
> now obvious that not only will that be wrong, it will be wrong in the
> most dramatic way possible... simply because all the places where we
> currently have $0.25 8-bit microcontrollers running trivial operating
> systems we'll have $0.25 32-bit microcontrollers and a fair chunk of
> them will run Linux.  As we're getting to the point where the most
> expensive part of the microcontroller is the package, there is simply no
> reason to not have a powerful CPU with a real OS and minimize the amount
> of time spent programming the damned thing.
> 
> Not to mention that the Internet of Things is going to mean many of them
> are going to want to be Internet-connected.

Yeah.  And there's a good chance that some of them will still be kind of
doing something in 2038.

Rafael
