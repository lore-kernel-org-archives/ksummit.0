Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 69F5BBC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:40:59 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B2683121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:40:58 +0000 (UTC)
Date: Wed, 8 Jul 2015 16:40:39 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <20150708140155.GA20551@thunk.org>
Message-ID: <alpine.LNX.2.00.1507081638310.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708093511.GL11162@sirena.org.uk>
	<20150708140155.GA20551@thunk.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 8 Jul 2015, Theodore Ts'o wrote:

> 1) It will require a lot of configuration --- just because a commit 
> shows up on a branch does not mean it is guaranteed that it will hit 
> mainline.  
>
> In fact, a maintainer might push a commit onto a throwaway branch on 
> kernel.org just so that the zero-day testing systems can give the commit 
> a spin.  So that means it's not just enough to throw a bunch of git hook 
> scripts on master.kernel.org, because maintainers will need to have to 
> configure, if not customize, them.
> 
> This leads to my second concern which is:

Yeah, some kind of pattern matching would be very useful (like "send mails 
only for commits that newly appar in 'for-next' branch", or some such).

> 2) Having shell scripts run on master.kernel.org can be a significant
> security concern; this is *especially* true if customization or
> configuration is required.

I don't think there is any principal reason this needs to run on master. 
It can be on any kind of scratch one-purpose system that would just be a 
slave git mirror.

-- 
Jiri Kosina
SUSE Labs
