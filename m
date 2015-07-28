Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7EFA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:58:10 +0000 (UTC)
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 63719142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:58:10 +0000 (UTC)
Date: Tue, 28 Jul 2015 10:58:08 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Pavel Machek <pavel@denx.de>
In-Reply-To: <20150728142315.GA17178@amd>
Message-ID: <alpine.DEB.2.11.1507281055450.16348@east.gentwo.org>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
	<alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
	<20150728142315.GA17178@amd>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Alan Tull <atull@altera.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 28 Jul 2015, Pavel Machek wrote:

> Which tools would be that?

FPGA firmware upload. Up/down. State determinations etc? Administrative
tasks first. Lets do easy low hanging fruit first.

That way one can write scripts / tools to administer FPGAs from different
manufacturers with the same commands.
