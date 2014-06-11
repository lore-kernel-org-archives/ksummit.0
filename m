Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BD720A04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:52:10 +0000 (UTC)
Received: from blackbird.sr71.net (www.sr71.net [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 922362024C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 20:52:10 +0000 (UTC)
Message-ID: <5398C178.7080704@sr71.net>
Date: Wed, 11 Jun 2014 13:52:08 -0700
From: Dave Hansen <dave@sr71.net>
MIME-Version: 1.0
To: Christoph Lameter <cl@gentwo.org>,
	ksummit-discuss@lists.linuxfoundation.org
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
In-Reply-To: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

On 06/11/2014 12:03 PM, Christoph Lameter wrote:
> 4. Swap: No one really wants to swap today. This needs to be replaced with
> something else. Going heavily into swap is akin to locking up the system.
> There are numerous band aid solutions but nothing appealing. Maybe the
> best idea is the Android idea of the saving app state and removing it from
> memory.

Yeah, our entire approach is getting a bit dated, and I think it's
really designed around the fact that our swap devices have historically
been (relatively) painfully slow to access.

There are some patches in mm to _help_, but currently if you throw a
really fast swap device in a system and try to swap heavily to it, you
don't get anywhere near saturating the device.

We'd probably be better off if we just blasted data at the device and
just ignored the LRU.
