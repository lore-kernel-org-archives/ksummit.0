Return-Path: <axboe@kernel.dk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B1621060
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:07:45 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B6E2F7C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:07:44 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id q5-v6so1782415iop.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 08:07:44 -0700 (PDT)
To: Sasha Levin <Alexander.Levin@microsoft.com>,
	"Theodore Y. Ts'o" <tytso@mit.edu>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm> <20180907042754.GL5098@thunk.org>
	<20180907145639.GG16300@sasha-vm>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f8060a24-812b-ea81-dcf6-fb587cdf485e@kernel.dk>
Date: Fri, 7 Sep 2018 09:07:41 -0600
MIME-Version: 1.0
In-Reply-To: <20180907145639.GG16300@sasha-vm>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 9/7/18 8:56 AM, Sasha Levin via Ksummit-discuss wrote:
> On Fri, Sep 07, 2018 at 12:27:54AM -0400, Theodore Y. Ts'o wrote:
>> As far as users testing Linux-next --- I'm willing to try running
>> anything past, say, -rc3 on my laptop.  But running linux-next?  Heck,
>> no!  That's way too scary for me.
> 
> That's why linux-next has a pending-fixes branch. IMO it makes more
> sense to run that than a random -rcX release.

I'm pretty convinced that linux-next is very useful as integration
testing. On numerous occasions I learn of conflicts that will impact me
for the merge window, and Stephen is great at providing merge fixes that
helps everybody out. I'm much less convinced that it's useful for
runtime testing. It's extremely rare that I get a bug report on
linux-next, whereas I get them after patches have been merged into
Linus's tree all the time. Nobody is going to be running that
pending-fixes branch.

-- 
Jens Axboe
