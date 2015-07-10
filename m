Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 698E2BD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:47:43 +0000 (UTC)
Received: from delay-1y.bbox.fr (delay-1y.bbox.fr [194.158.98.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E8F511F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:47:42 +0000 (UTC)
Received: from mail-3y.bbox.fr (bt8sssoh.cs.dolmen.bouyguestelecom.fr
	[172.24.208.141])
	by delay-1y.bbox.fr (Postfix) with ESMTP id C8AF84BA29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 19:33:02 +0200 (CEST)
Date: Fri, 10 Jul 2015 19:32:55 +0200 (CEST)
Message-Id: <20150710.193255.181692772319686216.chriscool@tuxfamily.org>
To: rostedt@goodmis.org
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <20150710114409.638582c0@gandalf.local.home>
References: <2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: jason@lakedaemon.net, ksummit-discuss@lists.linuxfoundation.org,
	robertotyley@gmail.com
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers, Maintainers, Hobbyists)
Date: Fri, 10 Jul 2015 11:44:09 -0400

> On Thu, 9 Jul 2015 12:37:18 -0700
> Darren Hart <dvhart@infradead.org> wrote:
> 
>> I've come to believe that this is one of many side effects of our dependency on
>> a completely free form mechanism for the management of our patches, a mechanism
>> which is becoming harder and harder to setup "correctly" with modern tooling
>> (since the industry is killing "real email").
>> 
>> I spend a highly disproportionate amount of my time, relative to measurable
>> quality impact to the kernel, going over the nuances of submitting patches.
>> 
>> 1) Must have a complete commit message
>> 2) DCO goes above the ---
>> 3) Include a patch changelog, do so below ---
>> 4) Cc maintainers :-)
>> 5) Checkpatch... checkpatch... checkpatch...
> 
> Ug, don't emphasize checkpatch. I see people making patches uglier due
> to it. I have an old version of checkpatch that I sometimes run, but
> the new version, IMHO, has more noise than signal.
> 
>> 6) Compiler warnings
>> 7) CodingStyle :-)
>> 8) Use ascii or utf8 character encodings
>> 
> 
> 
>> Looking forward a bit, I would love to see some tooling in place for people to
>> submit patches either via a web form (which eliminates all the email tooling for
>> submitting patches - which is where the formatting is especially critical) or
>> through one of the more managed git systems, like gerrit, etc.
> 
> You mean like a web page that has a bunch of entries (like submitting a
> paper to a LF conference), and you need to fill out.

To send patch emails created from git repos on GitHub to the Git
mailing list, there is now submitGit:

https://submitgit.herokuapp.com/
https://github.com/rtyley/submitgit

Maybe Roberto, its author (cced), could be convince to do something
for the kernel?
