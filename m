Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AFF0192F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:10:46 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B84A201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:10:46 +0000 (UTC)
Date: Fri, 9 May 2014 11:10:43 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Ben Hutchings <ben@decadent.org.uk>
Message-ID: <20140509151043.GC15523@thunk.org>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org> <20140506203337.GE21332@cloud>
	<20140506205052.GF5012@thunk.org> <53695CE3.5090005@linaro.org>
	<20140507020743.GA6461@thunk.org>
	<1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399581426.11946.12.camel@deadeye.wl.decadent.org.uk>
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

On Thu, May 08, 2014 at 09:37:06PM +0100, Ben Hutchings wrote:
> 
> LFS is far from universally supported by applications, 17 years after it
> was standardised.  In fact, many applications recently regressed due to
> a broken test for LFS in autoconf <https://bugs.debian.org/742780>.  It
> doesn't seem like a good example to follow.

Yes, that was my point.

> However this is done, almost every library that includes time_t in its
> API will change ABI.  I say 'almost' because glibc will probably use
> symbol versioning or mangling to maintain binary compatibility, but most
> library maintainers won't go to that trouble.

Agreed.  This is why I'm not sure anything other than a hard ABI break
is realistic.  Yes, it's incredibly painful, and the distro's will
probably be very unhappy, but I suspect the alternatives are worse.
The only real question is do we start trying to deal with the pain
now, or in 2020, or in 2030, or 2035, or even worse, in 2037....

Given what what I saw with Y2K, if I was going to participate in a
betting pool on the question, I'd probably put my money down for 2035
or so.  :-/

     	   	       	     	      	 - Ted
