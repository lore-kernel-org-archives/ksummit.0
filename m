Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A23371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:58:29 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com
	[216.40.44.122])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 77D441DABD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:58:28 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 945312122C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:41:07 +0000 (UTC)
Date: Thu, 4 Aug 2016 11:40:58 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20160804114058.3e0836ea@gandalf.local.home>
In-Reply-To: <s5hh9b07dnj.wl-tiwai@suse.de>
References: <3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<s5hh9b07dnj.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 04 Aug 2016 17:32:48 +0200
Takashi Iwai <tiwai@suse.de> wrote:


> Agreed that it's a good practice.  But what if a fix isn't a
> regression fix?  Many stable patches are trivial ones like PCI ID
> additions.
> 
> We may point any of the commit to the corresponding code, but does it
> make sense at all?

I agree that non-bug fixes don't need the Fixes tag. Because a missing
PCI ID is not a bug fix, it really is an enhancement (supporting new
hardware). Those are fine.

-- Steve
