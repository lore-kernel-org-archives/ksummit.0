Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1783183D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:10:20 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0084.hostedemail.com
	[216.40.44.84])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 907831DABC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:10:19 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id BCED7211140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:10:17 +0000 (UTC)
Date: Thu, 28 Jul 2016 20:10:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160728201010.6d1ef149@gandalf.local.home>
In-Reply-To: <367437209.fSUZRCC4cu@avalon>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<57976941.2040308@roeck-us.net>
	<1469543609.120686.319.camel@infradead.org>
	<367437209.fSUZRCC4cu@avalon>
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

On Fri, 29 Jul 2016 00:02:12 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:


> - The lack of a test infrastructure was a major reason for not developing 
> tests earlier. If we want developers to write and even submit test cases we 
> need to lower the barrier to entry. A proper infrastructure (with libraries, 
> locations where to submit test cases, documentation, examples, ...) will not 
> only make it more likely that test cases will be created and published, but 
> should also hopefully avoid the proliferation of incompatible test frameworks. 

Does tools/testing/selftests/ not satisfy this?

-- Steve
