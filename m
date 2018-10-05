Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A962A86
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:50:55 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 666CF12E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 07:50:54 +0000 (UTC)
Date: Fri, 5 Oct 2018 00:50:48 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181005075048.GA24138@localhost>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<20181004203956.GR32577@ZenIV.linux.org.uk>
	<20181004145631.5d1c3fb2@lwn.net>
	<CAMuHMdW6ApCoxAgMEugSBY-4wJpE9AQk6pBT4DR43ELfz3dnpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdW6ApCoxAgMEugSBY-4wJpE9AQk6pBT4DR43ELfz3dnpQ@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 05, 2018 at 09:12:40AM +0200, Geert Uytterhoeven wrote:
> BTW, should we start sending out patches to remedy parts in the CoC that
> are not appropriate/suited/wanted for the Linux kernel project?
> So far I have seen many suggestions to improve it, but no formal patches
> for Documentation/process/code-of-conduct.rst.
> I'm afraid it is already causing a chilling effect...

There have also been very few patches to the top-level COPYING, modulo
some recent SPDX-inspired reordering. The right place for patches is
upstream; the right place for clarifications on application would be in
a separate Documentation/process/code-of-conduct-process.rst or similar.
