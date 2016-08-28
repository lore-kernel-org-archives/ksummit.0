Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0408D6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 09:59:42 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0DF8BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 09:59:40 +0000 (UTC)
Date: Sun, 28 Aug 2016 11:59:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Alexey Dobriyan <adobriyan@gmail.com>
In-Reply-To: <20160828075632.GA1852@p183.telecom.by>
Message-ID: <alpine.DEB.2.10.1608281152080.3321@hadrien>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<20160828075632.GA1852@p183.telecom.by>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>, Joe Perches <joe@perches.com>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 28 Aug 2016, Alexey Dobriyan wrote:

> On Sat, Aug 27, 2016 at 09:06:13PM -0400, Levin, Alexander via Ksummit-discuss wrote:
> > 3. This one is somewhat subjective: scripts/checkpatch.pl is a massive blob of
> > perl code that a fair amount of people don't know how to deal with. In 4.8 it's
> > 6142 lines, making it the 124th largest source file in the kernel, well within
> > the top 1% of source files in the kernel.
> >
> > This combination of size/language pushes people away from being involved in
> > what is supposed to be a central tool and gives them a reason to never use
> > it again after they see results they don't agree with (rather than fixing it).
>
> It is a textbook example of what's wrong with Perl. Instead of parsing
> C code like compilers do, the script is one big pile of regexes.
> It mostly works ("doing its job" in perlspeak) because people mostly
> follow the coding style.

Parsing is slow.  Perfect parsing is impossible due to configuration
options.  There is definitely a place for regexps in checking code.
Perhaps there is a better way to express the regexps, or to provide
regexps for integration into the checkpatch infrastructure.

> Regarding individual warnings: some are good (RETURN_VOID, DATE_TIME,
> USE_NEGATIVE_ERRNO), some are OK given kernel style of allocating memory
> but the rationale is bogus (UNNECESSARY_CASTS, linking to userspace
> example of malloc() returning "int"!).
>
> And then there is ALLOC_SIZEOF_STRUCT which advocates "kmalloc(sizeof(*p))".
>
> The problem is that c-h.pl generates noise in the commit history and
> makes git-blame less useful than it can be.

Could it be that this is a problem with git blame, rather than with
checkpatch?  Last year there was a discussion on this list about how there
is an option to git blame that will cause it to step through the history,
and not show only the most recent patch that has modified a given line.

julia

>
> I for one given up on it more or less since its introduction.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
