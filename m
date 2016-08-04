Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AC6A413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:26:58 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com
	[216.40.44.122])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 280EB1DB09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 16:26:55 +0000 (UTC)
Date: Thu, 4 Aug 2016 12:26:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20160804122649.3137ff19@gandalf.local.home>
In-Reply-To: <s5hd1lo7bix.wl-tiwai@suse.de>
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
	<alpine.LNX.2.00.1608041746120.22028@cbobk.fhfr.pm>
	<s5hd1lo7bix.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 04 Aug 2016 18:18:46 +0200
Takashi Iwai <tiwai@suse.de> wrote:


> Yes, I didn't mean a non-fix.  The oft-seen addition of PCI IDs or
> addition of device-specific quirks are actually "fixes", but not a
> regression fix one can point to a certain commit.  The driver code
> itself is fine until the new hardware.  It's just a new device that
> came up after the driver code.

I still call that an "enhancement" and not a "fix". That is, adding
support for new hardware is an enhancement to the driver. But because
it's such a trivial change where there's only benefit and not really
any chance of a bug, there's no reason not to add it, and this
"enhancement" becomes the exception to the rule. The only real risk is
that someone adds a wrong number. But even that can be quickly
remedied.

-- Steve
