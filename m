Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E00C2942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:39:19 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35D391FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:39:19 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 09 May 2014 22:39:13 +0200
Message-ID: <4440149.cMfuUKn6MV@wuerfel>
In-Reply-To: <20140509151043.GC15523@thunk.org>
References: <5367D989.1000504@linaro.org>
	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
	<20140509151043.GC15523@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

On Friday 09 May 2014 11:10:43 Theodore Ts'o wrote:
> On Thu, May 08, 2014 at 09:37:06PM +0100, Ben Hutchings wrote:
> > 
> > LFS is far from universally supported by applications, 17 years after it
> > was standardised.  In fact, many applications recently regressed due to
> > a broken test for LFS in autoconf <https://bugs.debian.org/742780>.  It
> > doesn't seem like a good example to follow.
> 
> Yes, that was my point.
> 
> > However this is done, almost every library that includes time_t in its
> > API will change ABI.  I say 'almost' because glibc will probably use
> > symbol versioning or mangling to maintain binary compatibility, but most
> > library maintainers won't go to that trouble.
> 
> Agreed.  This is why I'm not sure anything other than a hard ABI break
> is realistic.  Yes, it's incredibly painful, and the distro's will
> probably be very unhappy, but I suspect the alternatives are worse.
> The only real question is do we start trying to deal with the pain
> now, or in 2020, or in 2030, or 2035, or even worse, in 2037....
> 
> Given what what I saw with Y2K, if I was going to participate in a
> betting pool on the question, I'd probably put my money down for 2035
> or so.  :-/

I think an important distinction is that the majority of systems that
will be seriously affected are embedded machines, which run a custom
user space anyway.

x86-32 PCs and end-user distros are going to be largely extinct
in a couple of years and replaced by x64-64 or arm64 depending
on who you ask, and arm32 Android phones are going to be
replaced with arm64 hardware shortly after, or they see an ABI
break before then anyway.
The typical embedded machines don't even use glibc, and they
cross-build everything from source.

While I'm sure there will be the odd case where people run into the
2038 problem on existing software, we can for now solve a lot of
problems just by getting the kernel interfaces in place and making
it as easy as possible to build a user space that uses the new types.

	Arnd
