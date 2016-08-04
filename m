Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0F6871
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 18:44:37 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0180.hostedemail.com
	[216.40.44.180])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 848571DABD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 18:44:37 +0000 (UTC)
Date: Thu, 4 Aug 2016 14:44:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20160804144433.0fdaad3e@gandalf.local.home>
In-Reply-To: <CAMuHMdWi0ij=umCqckG3gQP8+ySTT16v_fdpQ7d5XNNLDgj21g@mail.gmail.com>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<20160804121414.2466c31f@gandalf.local.home>
	<CAMuHMdWi0ij=umCqckG3gQP8+ySTT16v_fdpQ7d5XNNLDgj21g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 4 Aug 2016 20:16:45 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Would publishing statistics help, like the top 10 of Ackers and Reviewers?
> 
> E.g. Hall of Fame of bug fixers, based on the presence of Fixes tags, and
> Hall of Shame, based on patches CCed to stable lacking Fixes tags?

I would not have the Hall of Shame, as people just like seeing there
name in print, they may not care if it is fame or shame.

As for the Hall of Fame, I'm not sure what I would think if I made that
list. As most of my Fixes is for code that I originally wrote. Thus it
just points out all the bad code I made in the past.

Reminds me of a story I heard a long time ago, about a manager that
wanted to help encourage his programmers to find more bugs. He gave
them a $20 bonus for every bug they found and fixed. What he forgot to
take into consideration was that these were the same programmers that
were writing the code they would be finding bugs in. I heard that one
programmer racked up $10,000 before they fixed their mistake ;-)

-- Steve
