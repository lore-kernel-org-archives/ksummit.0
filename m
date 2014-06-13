Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A574DB00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:41:15 +0000 (UTC)
Received: from qmta11.emeryville.ca.mail.comcast.net
	(qmta11.emeryville.ca.mail.comcast.net [76.96.27.211])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 458FD201D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:41:15 +0000 (UTC)
Date: Fri, 13 Jun 2014 13:41:12 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1402682146.2224.44.camel@dabdike.int.hansenpartnership.com>
Message-ID: <alpine.DEB.2.10.1406131338520.8092@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
	<1402682146.2224.44.camel@dabdike.int.hansenpartnership.com>
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

On Fri, 13 Jun 2014, James Bottomley wrote:

> The point here is that lots of people say "just get your operating
> system out of my way" most realise they actually didn't mean it when
> presented with the reality.

Right. Exactly. What I would like to see is the OS doing its part to make
things nice and provide a convenient abstraction of the ugly details.

> The abstractions most people who say this want are a zero delay data
> path with someone else taking care of all of the metadata and setup
> problems ... effectively a MPI type interface.  Is that what you're
> looking for, Christoph?

Ideally the setup/metadata should be handled by the OS while the data
path would go direct. The get-out-of-the-way piece is restricted only to
the performance critical portion which is the actual data transfer.
