Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 597EE89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 16:24:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0233.hostedemail.com
	[216.40.44.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 339CBA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 16:24:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 2DEF1B18BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 12:48:05 +0000 (UTC)
Message-ID: <1472474879.3425.30.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Arnd Bergmann <arnd@arndb.de>, ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 29 Aug 2016 05:47:59 -0700
In-Reply-To: <5149968.BflLUdM3a8@wuerfel>
References: <1472330452.26978.23.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<20160829071515.wqlpjccq7a3vk7u6@piout.net>
	<5149968.BflLUdM3a8@wuerfel>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 11:01 +0200, Arnd Bergmann wrote: 

> I don't find checkpatch.pl overly useful for my own patches and rarely
> run it.

I mostly run checkpatch to test new checkpatch rules.

I generally don't run it on my own patches, mostly out
of possibly misplaced confidence in my own adherence to
the nominal kernel style.  It sometimes leads to mild
regret over things like whitespace defects.

I get over it quickly.

But I also think checkpatch's overall false positive
reporting rate is relatively low.  Most all of what
it does to report possible defects is nominally correct.

If anyone has examples of bad reporting by checkpatch,
please send it.
