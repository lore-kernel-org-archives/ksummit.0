Return-Path: <Bart.VanAssche@sandisk.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3181D279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 17:50:33 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0046.outbound.protection.outlook.com [104.47.34.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09339A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 17:50:29 +0000 (UTC)
From: Bart Van Assche <Bart.VanAssche@sandisk.com>
To: Jonathan Corbet <corbet@lwn.net>, Linus Torvalds
	<torvalds@linux-foundation.org>
Date: Sat, 19 Nov 2016 17:50:25 +0000
Message-ID: <BLUPR02MB16835F79106D7369139069DC81B30@BLUPR02MB1683.namprd02.prod.outlook.com>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Linux Media
	Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 11/19/16 09:15, Jonathan Corbet wrote:=0A=
> Might there be a tool or an extension out there that would allow us=0A=
 > to express these diagrams in a text-friendly, editable form?=0A=
=0A=
How about using the graphviz languages for generating diagrams that can =0A=
be described easily in one of the graphviz languages? The graphviz =0A=
programming languages are well suited for version control. And the =0A=
graphviz software includes a tool for converting diagrams described in a =
=0A=
graphviz language into many formats, including png, svg and pdf. =0A=
Examples of diagrams generated with graphviz are available at =0A=
http://www.graphviz.org/Gallery.php.=0A=
=0A=
Bart.=0A=
=0A=
