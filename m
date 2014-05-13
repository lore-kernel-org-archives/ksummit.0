Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6ED5296D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:31:52 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F0478201F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:31:51 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 07D1BAC47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:31:49 +0000 (UTC)
Date: Tue, 13 May 2014 16:31:49 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5htx8tizaf.wl%tiwai@suse.de>
Message-ID: <alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
References: <s5htx8tizaf.wl%tiwai@suse.de>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 13 May 2014, Takashi Iwai wrote:

> While posting to different subsystem areas, I noticed various ways of
> responses and communications.  Some picks up quick, some urges more
> reviews, sometimes a patch gets merged silently after months later,
> etc.  Although the variety is one strength of OSS development, it made
> me also wonder whether we need some baseline guidance for subsystem
> maintenance in order to give a better appeal to casual developers.
> 
> Is such a thing too much burden to maintainers?  Or, is it just a
> bikeshedding?

I am afraid that any attempt to force any working style on maintainers is 
pre-destined to fail.

As an example, there are folks who love patchwork and others wouldn't dare 
to touch it with a 10m pole.

Even such a "core" thing as git is explicitly claimed optional by Linus.

Is there perhaps anything more concrete you had on mind?

-- 
Jiri Kosina
SUSE Labs
