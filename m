Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0B4B53C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 22:12:46 +0000 (UTC)
Received: from mho-02-ewr.mailhop.org (mho-02-ewr.mailhop.org [204.13.248.72])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FD581F977
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 22:12:45 +0000 (UTC)
Date: Sun, 18 May 2014 18:12:42 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Christian Couder <chriscool@tuxfamily.org>
Message-ID: <20140518221242.GV27822@titan.lakedaemon.net>
References: <s5hvbt9izdm.wl%tiwai@suse.de>
	<20140516030708.GV27822@titan.lakedaemon.net>
	<s5h1tvuf4ov.wl%tiwai@suse.de>
	<20140518.212315.1001026942354195075.chriscool@tuxfamily.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140518.212315.1001026942354195075.chriscool@tuxfamily.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 18, 2014 at 09:23:15PM +0200, Christian Couder wrote:
> From: Takashi Iwai <tiwai@suse.de>
...
> > I tried a hackish way once ago: keeping simple text files named with
> > $SHAID in a separate branch, and refers to it at git log or bisect
> > time.  There must be much elegant way, I suppose, though.
> 
> Yeah, using "git replace" is more elegant. And there will be hopefully
> soon the --edit option that will make it very easy to use git replace.

Yikes.  Sorry, but I don't like that at all.  I hope that feature is
disabled by default (git replace).

I guess my first question is: Does the PGP signature verification of a
signed tag fail if there are replaced commits in the history?  And if
so, is that a cryptographic failure, or a logical failure?

thx,

Jason.
