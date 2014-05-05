Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4FD9599F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:08:13 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DCF3720114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:08:12 +0000 (UTC)
Date: Tue, 6 May 2014 00:08:10 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1405060005290.3969@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
	<CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 5 May 2014, Andy Lutomirski wrote:

> > Tons of interest in this topic here, mostly for the in-memory database
> > workloads.
> 
> Would in-memory databases be happier if there were a way to kexec
> without losing your data?

Well, that's basicaly what criu-based aproach is doing. With the drawback 
that dumping during checkpointing can take a while for large tasks (such 
as in-memory databases) I guess.

-- 
Jiri Kosina
SUSE Labs
