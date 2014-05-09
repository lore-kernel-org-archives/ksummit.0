Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CF016AB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:18:44 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F77F2022C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:18:44 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 09 May 2014 22:18:40 +0200
Message-ID: <5857276.jy6b86PZuN@wuerfel>
In-Reply-To: <20140509170709.GA9747@redhat.com>
References: <20140509170709.GA9747@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 09 May 2014 13:07:09 Dave Jones wrote:
> I gave a lightning talk on this last year. This year I have a bit more data
> so could probably fill a whole session.
> 
> Last year I had been doing the coverity scans on an almost daily basis
> for 2-3 months.  Now that we're a year in, I'd like to share some
> results, and show some of the more common trends and bug patterns that
> seem to pop up.
> 
> [ spoiler: For the most part, it's all pretty positive, but we still suck ]
> 
> It would also be good to have some more discussion about other tools
> we could be making more use of.  (Nomination: Dan Carpenter for smatch).

I'd be interested in this. One thing I'd been meaning to ask you about
for ages is what I can do to get scan results for ARM (or any other
architecture for that matter) specific code. We have a lot of that these
days, and as I understand it, the results on the public website are just
for x86 builds.

	Arnd
