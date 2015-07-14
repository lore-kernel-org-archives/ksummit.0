Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42BCAA04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:59:38 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A352515B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 11:59:37 +0000 (UTC)
Date: Tue, 14 Jul 2015 08:59:28 -0300
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150714085928.25a90f17@recife.lan>
In-Reply-To: <alpine.DEB.2.10.1507121910290.2657@hadrien>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<alpine.DEB.2.10.1507121910290.2657@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sun, 12 Jul 2015 19:15:32 -0400 (EDT)
Julia Lawall <julia.lawall@lip6.fr> escreveu:

> > So this leads me to following questions:
> > - How can we easily identify missing documentation?
> > -- Maybe Julia can come up with some coccinelle magic?
> > -- Maybe even mark non-extractable documentation and convert it.
> > -- In the document it mentions scripts/basic/doproc.c checks for missing
> > documentation, but this file does not exist anymore :/
> 
> Interesting idea.  I had not thought of this.  Coccinelle doesn't really
> process comments, but one can always use grep.  So the idea would be to
> find function definitions that don't have anything that looks like a
> comment in the lines above (ie, the lines since the end of the previous
> function definition).  One could furthermore rank the results by the
> number of non-local calls to the function.  I guess there would be a lot
> of reports, and it would be most productive to start with functions that
> are commonly used,

I guess it should first try to classify the type of the exported symbols,
in order to check either if they're used only internally inside a subsystem or
global wide, and report, by default, just the global wide undocumented ones,
sorted by number of occurrences.

Maybe the tool could be based on LXR[1] or use some output of it.

[1] http://free-electrons.com/pub/source/lxr-0.3.1-fe1.tar.bz2

Regards,
Mauro
