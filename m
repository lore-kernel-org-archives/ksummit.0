Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D892A71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:13:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0090.hostedemail.com
	[216.40.44.90])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 76F3A1DAC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:13:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id A9CE5211935
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 03:06:17 +0000 (UTC)
Date: Wed, 3 Aug 2016 23:06:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160803230613.2e92e2fe@grimm.local.home>
In-Reply-To: <alpine.LNX.2.00.1608032333020.22028@cbobk.fhfr.pm>
References: <87a8guq9y8.fsf@intel.com> <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<57A21F88.7000504@roeck-us.net> <20160803172015.GA36266@dtor-ws>
	<20160803182105.GA11395@roeck-us.net>
	<20160803185902.GB36266@dtor-ws>
	<alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
	<CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
	<alpine.LNX.2.00.1608032333020.22028@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Wed, 3 Aug 2016 23:36:11 +0200 (CEST)
Jiri Kosina <jikos@kernel.org> wrote:


> I understand that, but I intentionally proposed the rule a little bit more 
> "exact", because meaning of "latest stable" might potentially be different 
> at the time of the patch being commited to subsystem tree, and at the time 
> of the commit actually appearing in Linus' tree (which is the point at 
> which -stable notices).

So what if it is committed into a tree with a newer stable then when it
was posted? A naked "stable" tag should *only* go into the most recent
stable when it gets into Linus tree.

Now, a stable maintainer can look at that commit and decide for
themselves if it should go in or not, but it's not guaranteed to be for
that tree. Basically, if unsure, then leave it alone (unless there's a
bug report in your branch that the commit fixes).

I agree that only commits marked with Fixes or explicit stable ranges
should be backported further than the latest stable branch.

-- Steve
