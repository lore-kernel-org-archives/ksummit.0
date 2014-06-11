Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D9391A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:08:53 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6FFD42024C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:08:53 +0000 (UTC)
Date: Wed, 11 Jun 2014 13:08:49 -0700
From: josh@joshtriplett.org
To: Christoph Lameter <cl@gentwo.org>
Message-ID: <20140611200849.GC16477@cloud>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
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

On Wed, Jun 11, 2014 at 02:03:05PM -0500, Christoph Lameter wrote:
> Well this is likely to be a bit of a hot subject but I have been thinking
> about this for a couple of years now. This is just a loose collection of
> some concerns that I see mostly at the high end but many of these also are
> valid for more embedded solutions that have performance issues as well
> because the devices are low powered (Android?).

On the low end, we could also reasonably ask how much overhead Linux
memory management adds.  Does it make sense to run the standard Linux
mm subsystem on a system with, say, 1MB of RAM?

- Josh Triplett
