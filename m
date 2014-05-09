Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3B67070A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:33:20 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E30102020E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:33:18 +0000 (UTC)
Date: Fri, 9 May 2014 16:33:07 -0400
From: Dave Jones <davej@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140509203307.GA20593@redhat.com>
References: <20140509170709.GA9747@redhat.com>
 <5857276.jy6b86PZuN@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5857276.jy6b86PZuN@wuerfel>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 10:18:40PM +0200, Arnd Bergmann wrote:
 > On Friday 09 May 2014 13:07:09 Dave Jones wrote:
 > > I gave a lightning talk on this last year. This year I have a bit more data
 > > so could probably fill a whole session.
 > > 
 > > Last year I had been doing the coverity scans on an almost daily basis
 > > for 2-3 months.  Now that we're a year in, I'd like to share some
 > > results, and show some of the more common trends and bug patterns that
 > > seem to pop up.
 > > 
 > > [ spoiler: For the most part, it's all pretty positive, but we still suck ]
 > > 
 > > It would also be good to have some more discussion about other tools
 > > we could be making more use of.  (Nomination: Dan Carpenter for smatch).
 > 
 > I'd be interested in this. One thing I'd been meaning to ask you about
 > for ages is what I can do to get scan results for ARM (or any other
 > architecture for that matter) specific code. We have a lot of that these
 > days, and as I understand it, the results on the public website are just
 > for x86 builds.

yeah, right now their tool (definitely front-end, but back-end too iirc)
is x86 only.   So unless it's something that CONFIG_COMPILE_TEST would pick up,
it's not going to be in the scans.

	Dave
