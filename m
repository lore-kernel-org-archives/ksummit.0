Return-Path: <heiko.carstens@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7439093E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 11:34:55 +0000 (UTC)
Received: from e06smtp13.uk.ibm.com (e06smtp13.uk.ibm.com [195.75.94.109])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1445BEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 11:34:53 +0000 (UTC)
Received: from /spool/local
	by e06smtp13.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<heiko.carstens@de.ibm.com>; Sat, 11 Jul 2015 12:34:51 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com
	(d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by d06dlp02.portsmouth.uk.ibm.com (Postfix) with ESMTP id 30FD82190046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 12:34:26 +0100 (BST)
Received: from d06av02.portsmouth.uk.ibm.com (d06av02.portsmouth.uk.ibm.com
	[9.149.37.228])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id t6BBYmql36110490
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 11:34:48 GMT
Received: from d06av02.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av02.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id t6BBYmiH031692
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 05:34:48 -0600
Date: Sat, 11 Jul 2015 13:34:47 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20150711113447.GA3508@osiris>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150711093126.GH4289@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711093126.GH4289@mwanda>
Cc: Joe Perches <joe@perches.com>, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] checkpatch.pl stuff...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 11, 2015 at 12:31:26PM +0300, Dan Carpenter wrote:
> On Fri, Jul 10, 2015 at 11:44:09AM -0400, Steven Rostedt wrote:
> > Ug, don't emphasize checkpatch. I see people making patches uglier due
> > to it. I have an old version of checkpatch that I sometimes run, but
> > the new version, IMHO, has more noise than signal.
> 
> I have seen people do some very ugly things to satisfy the 80 character
> limit.  Recently someone sent a patch to make a config description long
> enough for checkpatch and
> the they did it
> by adding by adding
> lots and lots of
> newlines like this.  :)

The 80 character limit warning is the only thing I really dislike about
checkpatch. I've seen so many patches with insane ;) line breaks just to
satisfy this rule.
Unfortunately even experienced developers think this is a hard limit.
Argueing that checkpatch just gives you a hint that something _could_ be
improved are most of the time pointless. "But checkpatch says... therefore
it has be to like that." ;)

Besides that it I think it works just fine.
