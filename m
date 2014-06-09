Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 77B288E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Jun 2014 17:54:16 +0000 (UTC)
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE7352027A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Jun 2014 17:54:15 +0000 (UTC)
Received: by mail-wi0-f173.google.com with SMTP id cc10so360793wib.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Jun 2014 10:54:14 -0700 (PDT)
Message-ID: <5395F4C3.80005@gmail.com>
Date: Mon, 09 Jun 2014 19:54:11 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: chrubis@suse.cz, James Bottomley <James.Bottomley@HansenPartnership.com>
References: <537F3551.2070104@hitachi.com>
	<20140528153702.GU23991@suse.de>	<20140528185748.GA30673@kroah.com>	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>	<20140605002331.GB24037@kroah.com>
	<20140605065455.GM10819@suse.de>	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>	<1401977409.2207.7.camel@dabdike.int.hansenpartnership.com>
	<20140609144415.GA3947@rei>
In-Reply-To: <20140609144415.GA3947@rei>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/09/2014 04:44 PM, chrubis@suse.cz wrote:
> Hi!
>>> Is there a reason not to run the latest version of LTP (unless bisecting
>>> LTP ;-)? The syscall API is supposed to be stable.
>>
>> I think not, and we have strong reasons for wanting to run the latest
>> LTP against every kernel (including stable ones), not just the version
>> in the test directory, so in practise, it looks like this doesn't meet
>> the changes with the kernel test for inclusion.  On the other hand,
>> having the tests available is also useful.   Perhaps we just need a
>> tests repo which pulls from all our other disparate tests so there's one
>> location everyone knows to go for the latest?
> 
> That sounds good to me. But as allready said, creating some
> scripts/repos that pulls and runs all the tests is relatively easy.
> Creating configurations and figuring out who needs to run which parts is
> not.
> 
> I think that the main problem here is the communication and information
> sharing. Maybe we can start with a wiki page or a similar document that
> summarizes maintained testsuites, their purpose and structure. Because
> just now, if there is any information about kernel testing, it is
> scattered around the web, forums, etc.
> 
> Also I would like to see more communication between the Kernel and QA.
> 
> It's getting a bit better as we have linux-api mailing list and (thanks
> to Michaal Kerrisk) commits that change kernel API are starting to CC
> it. Which I consider as a great improvement because now we at least know
> what we need to write tests for. However I still think that there is
> some work lost in the process, particulary because the kernel devs who
> wrote the userspace API have surely implemented some kind of tests for
                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Actually, I can point to numerous examples that show that this sadly
could not have been the case. Very many times I've written tests for
an API, or some API feature, only to discover that the most basic of
tests fails--in other words, clearly no-on--including the kernel
dev--did any testing of that particular feature before me.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
