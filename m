Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20D8F483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 18:10:18 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43365136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 18:10:17 +0000 (UTC)
Date: Sat, 19 Nov 2016 18:38:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20161119173846.GB25398@lunn.ch>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161119101543.12b89563@lwn.net>
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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

> Rather than beating our heads against the wall trying to convert between
> various image formats, maybe we need to take a step back.  We're trying
> to build better documentation, and there is certainly a place for
> diagrams and such in that documentation.  Johannes was asking about it
> for the 802.11 docs, and I know Paul has run into these issues with the
> RCU docs as well.  Might there be a tool or an extension out there that
> would allow us to express these diagrams in a text-friendly, editable
> form?

Hi Jonathan

A lot depends on what the diagram is supposed to show. I've used
graphviz dot in documents which get processes with Sphinx. That works
well for state machine, linked lists, etc. It uses a mainline Sphinx
extension.

It does however increase the size of your documents toolchain, you
need graphviz. But i doubt there is a distribution which does not have
it.

If you are worried about getting all these needed tools installed, i
think tools/perf might be a useful guide. When you compile it, it
gives helpful hints:

No libdw DWARF unwind found, Please install elfutils-devel/libdw-dev >= 0.158
No sys/sdt.h found, no SDT events are defined, please install systemtap-sdt-devel or systemtap-sdt-dev

     Andrew
