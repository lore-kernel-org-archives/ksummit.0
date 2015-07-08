Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C00DFBC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:09:00 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0767BAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 15:08:59 +0000 (UTC)
Date: Wed, 8 Jul 2015 17:08:50 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20150708145910.GA11945@kroah.com>
Message-ID: <alpine.LNX.2.00.1507081704380.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
	<20150708145910.GA11945@kroah.com>
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

On Wed, 8 Jul 2015, Greg KH wrote:

> > For example, please correct me if I am wrong, but I believe that if I send 
> > you a patch that would have authorship
> > 
> > 	Jiri Kosina <jkosina`rm -rf .`@suse.com>
> > 
> > and you wouldn't notice prior to applying it using the above do.sh, I 
> > think your precious tree is gone.
> 
> Note, I don't have "precious" trees, nor "precious" development systems,
> that's what git is for :)

Oh, sure, that was just an example because I was too lazy to construct a 
command that would send me your ssh keys :)

> > This would be caught immediately if it's properly maintained "project".
> 
> Hm, ok, but different maintainers have different needs.  James's git
> hooks are also really nice, and work for some workflows (note, I use
> them for some stable workflows).  Wolfram has published his scripts that
> he uses for applying and testing patches in the past as well, and while
> they were great for him, they didn't fit mine at the time.

Yes, my main point really was that I personally would find it super-nice 
to just mark particular branches in my kernel.org repositories as "send 
notifications for these", and author (and anyone else in "-by:" lines) 
would automatically receive nice notification once commit appears there. 
Without any need of wrapping simple git-am + git push with more and more 
bloated scripting.

Thanks,

-- 
Jiri Kosina
SUSE Labs
