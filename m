Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62EFDACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 12:50:38 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E9B69195
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 12:50:37 +0000 (UTC)
Date: Sat, 11 Jul 2015 08:51:19 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Message-ID: <20150711085119.2f03e6ae@grimm.local.home>
In-Reply-To: <20150711113447.GA3508@osiris>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150711093126.GH4289@mwanda> <20150711113447.GA3508@osiris>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Joe Perches <joe@perches.com>, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] checkpatch.pl stuff...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 11 Jul 2015 13:34:47 +0200
Heiko Carstens <heiko.carstens@de.ibm.com> wrote:

> The 80 character limit warning is the only thing I really dislike about
> checkpatch. I've seen so many patches with insane ;) line breaks just to
> satisfy this rule.
> Unfortunately even experienced developers think this is a hard limit.
> Argueing that checkpatch just gives you a hint that something _could_ be
> improved are most of the time pointless. "But checkpatch says... therefore
> it has be to like that." ;)
> 
> Besides that it I think it works just fine.

I'll admit, as Dan said, that my patches are somewhat "special". But
what I really hate, is that argument I have had with people where I
comment on a patch, and they argue the "but checkpatch says". Yeah,
that can get annoying.

-- Steve
