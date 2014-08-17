Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BBC88A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 00:21:00 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20E611F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 00:20:59 +0000 (UTC)
Received: from mfilter30-d.gandi.net (mfilter30-d.gandi.net [217.70.178.161])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 96F61A80B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 02:20:56 +0200 (CEST)
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by mfilter30-d.gandi.net (mfilter30-d.gandi.net [10.0.15.180])
	(amavisd-new, port 10024) with ESMTP id o8N+2PPsFfMG
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 02:20:55 +0200 (CEST)
Received: from thin (static-50-43-15-134.bvtn.or.frontiernet.net
	[50.43.15.134]) (Authenticated sender: josh@joshtriplett.org)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id AA474A80AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 02:20:54 +0200 (CEST)
Date: Sat, 16 Aug 2014 17:20:52 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140817002051.GA25397@thin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] Unconference session on getting LTO into the
	kernel?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There's been a lot of discussion about link-time optimization of the
Linux kernel.  However, as of yet the patches have not yet gone in.
I've seen objections on the grounds that it increases build time and
memory usage, but those objections don't seem like reasons to omit the
patches, just reasons to keep LTO optional and disabled by default (and
potentially to prevent "allyesconfig" from enabling it).

Anyone interested in a session to hammer out the last details to get the
patches merged?

(If this mail ends up prompting discussion that settles this via email,
that'd be a fine result too.)

- Josh Triplett
