Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA09925A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 07:56:39 +0000 (UTC)
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C45DF87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 07:56:37 +0000 (UTC)
Received: by mail-lf0-f68.google.com with SMTP id f93so5651157lfi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 00:56:37 -0700 (PDT)
Date: Sun, 28 Aug 2016 10:56:33 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Message-ID: <20160828075632.GA1852@p183.telecom.by>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160828005636.GB19088@sasha-lappy>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 27, 2016 at 09:06:13PM -0400, Levin, Alexander via Ksummit-discuss wrote:
> 3. This one is somewhat subjective: scripts/checkpatch.pl is a massive blob of
> perl code that a fair amount of people don't know how to deal with. In 4.8 it's
> 6142 lines, making it the 124th largest source file in the kernel, well within
> the top 1% of source files in the kernel.
> 
> This combination of size/language pushes people away from being involved in
> what is supposed to be a central tool and gives them a reason to never use
> it again after they see results they don't agree with (rather than fixing it).

It is a textbook example of what's wrong with Perl. Instead of parsing
C code like compilers do, the script is one big pile of regexes.
It mostly works ("doing its job" in perlspeak) because people mostly
follow the coding style.

Regarding individual warnings: some are good (RETURN_VOID, DATE_TIME,
USE_NEGATIVE_ERRNO), some are OK given kernel style of allocating memory
but the rationale is bogus (UNNECESSARY_CASTS, linking to userspace
example of malloc() returning "int"!).

And then there is ALLOC_SIZEOF_STRUCT which advocates "kmalloc(sizeof(*p))".

The problem is that c-h.pl generates noise in the commit history and
makes git-blame less useful than it can be.

I for one given up on it more or less since its introduction.
