Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 034388B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 23:15:53 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D00EAA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 23:15:51 +0000 (UTC)
Date: Sun, 12 Jul 2015 19:15:32 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
To: =?ISO-8859-15?Q?Peter_H=FCwe?= <PeterHuewe@gmx.de>
In-Reply-To: <201507130038.01474.PeterHuewe@gmx.de>
Message-ID: <alpine.DEB.2.10.1507121910290.2657@hadrien>
References: <201507130038.01474.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> So this leads me to following questions:
> - How can we easily identify missing documentation?
> -- Maybe Julia can come up with some coccinelle magic?
> -- Maybe even mark non-extractable documentation and convert it.
> -- In the document it mentions scripts/basic/doproc.c checks for missing
> documentation, but this file does not exist anymore :/

Interesting idea.  I had not thought of this.  Coccinelle doesn't really
process comments, but one can always use grep.  So the idea would be to
find function definitions that don't have anything that looks like a
comment in the lines above (ie, the lines since the end of the previous
function definition).  One could furthermore rank the results by the
number of non-local calls to the function.  I guess there would be a lot
of reports, and it would be most productive to start with functions that
are commonly used,

julia
