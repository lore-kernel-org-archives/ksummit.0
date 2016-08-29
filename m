Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 413EC71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 07:15:28 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9670810C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 07:15:27 +0000 (UTC)
Date: Mon, 29 Aug 2016 09:15:15 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Message-ID: <20160829071515.wqlpjccq7a3vk7u6@piout.net>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160828223759.GA12993@sasha-lappy>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 28/08/2016 at 18:37:59 -0400, Levin, Alexander via Ksummit-discuss wrote :
> On Sun, Aug 28, 2016 at 01:15:57PM -0400, Joe Perches wrote:
> > On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:
> > 
> > > Would you agree that by default we shouldn't show anything that's
> > > not an error/defect?
> > 
> > Not particularly, no.
> 
> I think that we need to figure out this disagreement first then. My claim is that checkpatch's output isn't useful.
> 
> Based on your bash snippet, populated with the KS program committee + the first few maintainers I spotted on 'git log':
> 
> commiter	commits		issues
> arnd		858		2155
> axboe		53		22
> corbet		15		9
> davem		55		81
> grant.likely	2		0
> gregkh		38 	 	46
> hch 	 	393 	 	581
> James.Bottomley	15 	 	15
> martin.petersen	18 	 	20
> mchehab 	678 		1042
> mgorman 	104 		256
> mingo 	 	58 		192
> paulmck 	176 		68
> peterz 	 	226 		511
> rostedt 	123 		178
> shuahkh 	53 		6
> tglx 	 	200 		287
> torvalds 	64 		89
> tytso 		37 		77
> viro 	 	350	 	256
> 
> And for the last 10,000 commits in the log, that script has observed 10,783 issues.
> 
> It'll be interesting to hear from these people about their view of checkpatch, but IMO when on average there are more issues than commits I can suggest two possible causes:
> 
>  1. People are used to ignore checkpatch warnings.
>  2. People aren't using checkpatch.
> 

Well, Arnd is used to move around old code when refactoring. As the code
just moves, he rarely solves checkpatch issues when doing so which is
the right thing to do.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
