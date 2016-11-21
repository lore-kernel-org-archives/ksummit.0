Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C59F728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 10:39:47 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90EFE110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 10:39:46 +0000 (UTC)
Message-ID: <1479724781.8662.18.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Jonathan Corbet <corbet@lwn.net>, Linus Torvalds
	<torvalds@linux-foundation.org>
Date: Mon, 21 Nov 2016 11:39:41 +0100
In-Reply-To: <20161119101543.12b89563@lwn.net>
References: <20161107075524.49d83697@vento.lan>
	<11020459.EheIgy38UF@wuerfel> <20161116182633.74559ffd@vento.lan>
	<2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2016-11-19 at 10:15 -0700, Jonathan Corbet wrote:
> 
> I don't know what the ultimate source of these images is (Mauro,
> perhaps you could shed some light there?).

I'd argue that it probably no longer matters. Whether it's xfig, svg,
graphviz originally etc. - the source is probably long lost. Recreating
these images in any other format is probably not very difficult for
most or almost all of them.

> Rather than beating our heads against the wall trying to convert
> between various image formats, maybe we need to take a step
> back.  We're trying to build better documentation, and there is
> certainly a place for diagrams and such in that
> documentation.  Johannes was asking about it for the 802.11 docs, and
> I know Paul has run into these issues with the RCU docs as
> well.  Might there be a tool or an extension out there that would
> allow us to express these diagrams in a text-friendly, editable
> form?
> 
> With some effort, I bet we could get rid of a number of the images,
> and perhaps end up with something that makes sense when read in the
> .rst source files as an extra benefit. 

I tend to agree, and I think that having this readable in the text
would be good.

You had pointed me to this plugin before
https://pythonhosted.org/sphinxcontrib-aafig/

but I don't think it can actually represent any of the pictures.

Some surely could be represented directly by having the graphviz source
inside the rst file:
http://www.sphinx-doc.org/en/1.4.8/ext/graphviz.html

(that's even an included plugin, no need to install anything extra)

graphviz is actually quite powerful, so I suspect things like
dvbstb.png can be represented there, perhaps not pixel-identically, but
at least semantically equivalently.


However, I don't think we'll actually find a catch-all solution, so we
need to continue this discussion here for a fallback anyway - as you
stated (I snipped that quote, sorry), a picture describing the video
formats will likely not be representable in text.


As far as my use-case for sequence diagrams is concerned, I'd really
like to see this integrated with the toolchain since the source format
for them is in fact a text format.

johannes
