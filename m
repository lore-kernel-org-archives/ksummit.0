Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C4A9899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:45:57 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E4FBE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:45:56 +0000 (UTC)
Date: Wed, 3 Aug 2016 16:45:53 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20160803141937.GA9180@kroah.com>
Message-ID: <alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Wed, 3 Aug 2016, Greg KH wrote:

> > Has anything changed in the process that'd just make patches like this one 
> > to be not merged these days?
> 
> We have Guenter's test-bot that has helped out immensely here with this.

That's very good to know, I admit that I have close to zero idea about how 
the stable -rcs are being tested.

> It seems most of these can all come down to "we need more testing", 

That as well, but the main message I am trying to push here is "we need a 
little bit more thinking while anotating patches for stable".

It might very well be that some variation of what has been just proposed 
elsewhere in this thread (requiring all the stable commits to either 
contain explicit 'Fixes' tag, or be explicitly annotated by the kernel 
version range they should be applied to) would help tremendously on that 
front.

> [1] The people that are doing stable tree testing are doing a great job,
>     Guenter, Shuah, kernelci, my build-bot, 0-day, etc.  

Very good to know that the test coverage is being continuously extended. 

Thanks,

-- 
Jiri Kosina
SUSE Labs
