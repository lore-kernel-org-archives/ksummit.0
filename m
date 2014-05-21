Return-Path: <matt@arkanian.console-pimps.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E6EDC8DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 13:23:32 +0000 (UTC)
Received: from arkanian.console-pimps.org (arkanian.console-pimps.org
	[212.110.184.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0E8E21FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 13:23:30 +0000 (UTC)
Date: Wed, 21 May 2014 14:23:27 +0100
From: Matt Fleming <matt@console-pimps.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20140521132327.GL4798@console-pimps.org>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<CAPcyv4ivq-03wGAarZFxJZa2wXD2zja251v6YQD86BaHvu6h4w@mail.gmail.com>
	<20140521075547.GA20121@kroah.com>
	<20140521090513.GK4798@console-pimps.org>
	<20140521125218.GA1206@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140521125218.GA1206@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 May, at 09:52:18PM, Greg KH wrote:
> 
> Ideal world meet the real world.
> 
> Today, the in-kernel tests are broken.  Now if that is a kernel problem,
> or a test problem, no one seems to be stepping up to figure that out.
> Someone needs to be on top of it to do that.  Given that no one has done
> that for, well, ever, this needs to be fixed.
 
Which tests are broken? FWIW, the EFI tests in tools/testing/selftests
work fine because I regularly run them against any changes I merge.

> Agreed, but given that no one has even tried, and that I know of someone
> who has agreed to do this work, let's give it a chance.

Go for it!

-- 
Matt Fleming, Intel Open Source Technology Center
