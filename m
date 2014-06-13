Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9C5E399A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 23:04:55 +0000 (UTC)
Received: from qmta01.emeryville.ca.mail.comcast.net
	(qmta01.emeryville.ca.mail.comcast.net [76.96.30.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D028B201B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 23:04:54 +0000 (UTC)
Date: Fri, 13 Jun 2014 18:04:52 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Benjamin Herrenschmidt <benh@au1.ibm.com>
In-Reply-To: <1402695366.20360.14.camel@pasglop>
Message-ID: <alpine.DEB.2.11.1406131802590.25815@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<53994FED.1080106@lougher.demon.co.uk>
	<alpine.DEB.2.10.1406131158490.913@gentwo.org>
	<1402695366.20360.14.camel@pasglop>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 14 Jun 2014, Benjamin Herrenschmidt wrote:

> > It is solvable if the objects are inherent movable. If any object
> > allocated provides a function that makes an object movable then
> > defragmentation is possible and therefore large contiguous area of memory
> > can be created at any time.
>
> Another interesting thing is migration of pages with mapped DMA on
> them :-)
>
> Our IOMMUs support that, but there isn't a way to hook that up into
> Linux page migration that wouldn't suck massively at this point.

Well yes that would require a  major rethink. While we are at it we may
as well try to get more done. Maybe we can do that just for a limited
region within the existing memory management. Something like OSV, cgroups
or cpuset that restricts it to certain nodes or cpus where we would allow
this to occur while the rest still runs the standard kernel.

A kind of sidecar approach.
