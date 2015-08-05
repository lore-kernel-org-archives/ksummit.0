Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C6D62486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:19:59 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 448BB14B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:19:59 +0000 (UTC)
Date: Wed, 5 Aug 2015 10:19:54 -0700
From: josh@joshtriplett.org
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20150805171954.GB32266@cloud>
References: <20150801164142.653012af@lwn.net>
	<1438672367.9418.3.camel@ellerman.id.au>
	<9B190076-263A-4C51-AFA4-A1D7FD403BC3@holtmann.org>
	<BC939929-C5D1-4239-A9B8-E9D49CD4E04E@gmx.de>
	<55C242F4.7090005@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55C242F4.7090005@gmail.com>
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

On Wed, Aug 05, 2015 at 07:08:04PM +0200, Michael Kerrisk (man-pages) wrote:
> From a man-pages point of view, the discussion of tooling is interesting.
> For some years now I've contemplated a switch from groff's man macros,
> since some people do not like to work with them (although the basics are
> pretty simple, IMO). If there was a concerted movement to Asciidoc or
> Markdown for kernel docs, I'd be willing to invest some effort in the
> feasibility of switching man-pages to the same format. I'm not
> knowledgeable in either of those tools, but at a first glance,
> Asciidoc seems more interesting, since it seems to embrace a wider
> variety of output formats, in particular, PDF and Linux man-page
> macros (and also TeX). It doesn't appear that Markdown can do that.
> I know even less about Sphinx, although its output capabilities,
> as described at http://sphinx-doc.org/index.html , seem interesting also.

I've seen multiple scripts to convert mdwn to groff for manual pages.
And once you have groff, you can typeset PDFs from that, right?

The biggest thing I've noticed about asciidoc is that it seems to be
incredibly *slow*.  For all the projects I know of that use it, building
the documentation is by far the slowest part of the build process.

Honestly, groff isn't *that* hard to deal with.

- Josh Triplett
