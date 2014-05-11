Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3CCF3681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 03:00:25 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8EA2D1FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 03:00:24 +0000 (UTC)
Date: Sat, 10 May 2014 23:00:09 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
	Kevin Hilman <khilman@linaro.org>
Message-ID: <20140511030009.GO12708@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Rob Herring <robh@kernel.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

All,

Over the past couple of years, the ARM sub-arch maintainers have been
doing a great amount of work migrating to devicetree.

In conjunction with this effort, we've been slowly migrating the
existing legacy platforms (board files) over to devicetree.  For the
small part the mvebu maintainers are responsible for, we can see the
light at the end of the tunnel now. :-)

I imagine several other sub-arches are in a similar situation.  I think
it would be useful for us all to sit down, compare notes, and pool our
resources/experiences to coordinate a final push.

So, I'm proposing a session where each sub-arch gives a brief run-down
of the status of the legacy board conversion, and wraps up with a todo
list.  After all of the sub-arches have given their status (5 - 10
minutes each?), we hash out helping each other with the final pieces.

Also on the agenda, discussing the fate of the legacy sub-arches that
haven't even begun conversion to devicetree.

The intended outcome would be to have a sorted list of remaining
conversions, and who is pitching in to help out for each item.  Also, a
sorted list of unconverted sub-arches, broken down into 'deprecate',
'convert', and 'seek info'.

On a final note, I'd like to include a hobbyist voice or two in here.
Since a lot of the legacy platforms are supported by embedded Debian,
OpenWRT, and similar, getting an idea of which ones we can deprecate
would save quite a bit of work.

I haven't heard word of an ARM mini-summit yet.  If that happens,
obviously this topic would be most appropriate there.

Nominations:

Jason Cooper		(auto-nominated)
Andrew Lunn
Gregory Clement
Sebastian Hesselbarth	(auto-nominated)
Thomas Petazzoni	(auto-nominated)

I can think of several names from the ARM Linux mailinglist, but since I
can't create a conclusive list, I'll leave it up to the individuals to
pipe up if they are interested.

thx,

Jason.
