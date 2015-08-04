Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC64F68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 07:12:53 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14FF8E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 07:12:49 +0000 (UTC)
Message-ID: <1438672367.9418.3.camel@ellerman.id.au>
From: Michael Ellerman <mpe@ellerman.id.au>
To: Jonathan Corbet <corbet@lwn.net>
Date: Tue, 04 Aug 2015 17:12:47 +1000
In-Reply-To: <20150801164142.653012af@lwn.net>
References: <20150801164142.653012af@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2015-08-01 at 16:41 +0200, Jonathan Corbet wrote:
> As your relatively new documentation subsystem maintainer, I think there
> might be reason to talk about docs for a bit at the summit.
> 
> Currently, we have two major branches to our docs.  One, the bulk of
> Documentation/, is a haphazard collection of text files of varying quality
> and applicability to current kernels.  The other is a set of more
> organized DocBook documents.
> 
> Despite their disorganized nature, the plain-text docs get the bulk of the
> attention.  Anybody can manage to work with a text file.  The DocBook
> stuff, instead, is kind of a pain.  Working in DocBook itself is less
> than fun, few people dare to delve into the code that builds the docs,
> and the whole thing is rather fragile.  Changing a struct to a union in
> the wireless subsystem a few months back broke the docs build, for
> example; few people test for such things and even fewer seem to know how
> to fix them.
...
> 
> I am not convinced that DocBook is really the right tool for the job
> here.  It is complex, finicky, and it's a real pain to have to replace an
> entire laptop because you've worn out your shift key.  It is, I believe, an
> impediment to improvements to our docs in general.  If, instead, we used
> something more plain-text-like, I think life might get a lot easier; it
> could also enable the integration of all of our docs into something a bit
> more cohesive.

Yeah +1 from me on getting rid of DocBook.

I looked at it a bit in terms of asking people to write docs, and decided it
was too painful to impose on people.

I know it's not *that* hard, but it's harder than it needs to be for the value
it brings IMHO.

> Markdown in one of its many forms might be a good alternative here.  I'm
> also somewhat attracted by Sphinx, which is designed for documenting code
> already and could probably be made to work well with our existing kerneldoc
> comments without a whole lot of trouble.  The Sphinx idea, though, is
> hobbled by the inconvenient fact that I've not had the time to develop it
> far enough to even have a vague idea of whether it would make real-world
> sense.

I'd vote for Markdown. It's very unobtrusive, reads nicely as plain text, and
all the young kids know it from writing Github README.md files.

cheers
