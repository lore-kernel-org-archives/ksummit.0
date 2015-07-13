Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C3C1CAF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:09:46 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07F85EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:09:45 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 14 Jul 2015 01:10:04 +0300
Message-ID: <1748199.dqQlTAT02s@avalon>
In-Reply-To: <20150713174244.GE14593@io.lakedaemon.net>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<20150713123750.52d8a14d@gandalf.local.home>
	<20150713174244.GE14593@io.lakedaemon.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Stephan Mueller <smueller@chronox.de>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 13 July 2015 17:42:44 Jason Cooper wrote:
> On Mon, Jul 13, 2015 at 12:37:50PM -0400, Steven Rostedt wrote:
> > On Mon, 13 Jul 2015 12:47:23 +0300 Alexey Dobriyan wrote:
> > > Newbies should not write documentation because they, by definition,
> > > have little knowledge of the code. It will lead to many, many useless
> > > and redundant comments like below whose only purpose is stealing
> > 
> > > vertical whitespace:
> > I agree that newbies shouldn't write documentation.
> 
> I semi-disagree.  Assuming you meant newbies here as you defined below.
> 
> Not that an exception should make the rule, but please take a look at
> the Crypto API documentation (with userspace example code!) written by
> Stephan Mueller:
> 
>   git log --author="smueller@chronox.de"
> 
> His first patch was in May 2014.
> 
>   541af946fe13 crypto: drbg - SP800-90A Deterministic Random Bit Generator
> 
> By Nov/Dec 2014 he had documented the entire crypto API.
> 
>   52744af3af97 crypto: doc - document uncovered member variables
>   47ca5be9eb06 crypto: doc - HASH API documentation
>   16e61030aecb crypto: doc - CIPHER API documentation
>   58284f0d6c4a crypto: doc - BLKCIPHER API documentation
>   fced7b02623e crypto: doc - AEAD API documentation
>   f13ec330a787 crypto: doc - ABLKCIPHER API documentation
>   0d7f488f0305 crypto: doc - cipher data structures
>   968ab2910780 crypto: doc - SHASH API documentation
>   90240ffb1277 crypto: doc - AHASH API documentation
>   5d8c723f61f2 crypto: doc - hash data structures
>   aa1b6fbcbeac crypto: doc - RNG API documentation
>   e63b673f601d crypto: doc - userspace interface spec
>   e9a44230dbca crypto: doc - compile crypto API spec
>   7d12993ed890 crypto: doc - crypto API high level spec
> 
> Often the best person to write the docs for a newcomer to understand is
> someone who was just recently a newcomer.

I agree. Not that I want to show off, but there's at least another example.

9cad9c95d7e8 Documentation: DocBook DRM framework documentation

> > But maybe what they
> > can do is to question what a function does. And perhaps poke the
> > maintainer (or author of said function) to write something that
> > explains that function (only for non-static functions).
> 
> Submitting patches is often the *best* way to poke a maintainer. ;-)
> 
> I know I'm not the only one who would find it a lot easier to tweak an
> 80% correct documentation patch as opposed to explaining the function
> call, how it fits in with the others, how it historically evolved that
> way, etc.
> 
> > Now, I say "newbies" but I would really mean experienced developers
> > that are new to a subsystem. We don't need silly questions. Something
> > more on the line of one experienced kernel developer reading some code
> > of the kernel they have no idea about, and if they can't figure out
> > what a function does, ask the question to the author. Perhaps we can
> > get better documentation of internal interfaces out of it.

-- 
Regards,

Laurent Pinchart
