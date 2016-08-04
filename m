Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 26D1671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 07:53:38 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0217.hostedemail.com
	[216.40.44.217])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 284601DABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 07:53:37 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id A550C2058
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 01:23:37 +0000 (UTC)
Date: Wed, 3 Aug 2016 21:23:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160803212332.576bb718@grimm.local.home>
In-Reply-To: <1470233095.2482.46.camel@HansenPartnership.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Trond Myklebust <trondmy@primarydata.com>,
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

On Wed, 03 Aug 2016 10:04:55 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> OK, so how about you only apply stable patches with a cc stable and a
> fixes tag?

While reading this thread, I thought about replying and suggesting
exactly this. But you did it before I could.

I try to make it a habit to find the commit that a fix is for, and add
that as a Fixes tag and even add a # v<stable-version>+ to the Cc tag.

Maybe we ask that all cc stable commits have this, otherwise it should
only be applied to the previous stable and nothing earlier.

IIUC, Greg et.al. will apply a stable tagged commit to all previous
stable trees as long as they apply cleaning. Greg, is that correct?
Perhaps we shouldn't apply them if they don't have a fixes tag or a
label that states what versions they are for.

-- Steve
