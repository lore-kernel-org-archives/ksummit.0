Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 990FD94B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:47:58 +0000 (UTC)
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6CAD175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:47:53 +0000 (UTC)
Received: by mail-pa0-f47.google.com with SMTP id oz2so1670494pac.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 07:47:53 -0700 (PDT)
To: Greg KH <gregkh@linuxfoundation.org>,
	Josh Boyer <jwboyer@fedoraproject.org>
References: <20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<20160913120942.GA18307@kroah.com>
	<CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
	<20160913131249.GA8470@kroah.com>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57D96312.20705@linaro.org>
Date: Wed, 14 Sep 2016 22:47:46 +0800
MIME-Version: 1.0
In-Reply-To: <20160913131249.GA8470@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/13/2016 09:12 PM, Greg KH wrote:
> People say "look, we are using an LTS kernel in our product, all must be
> good!" but if they don't update it, it's broken and insecure, and really
> no better than if they were using 3.10.0 in a way.
> 
> But if we didn't provide an LTS, would companies constantly update their
> kernels to newer releases to keep up with the security and bugfixes?
> That goes against everything those managers/PMs have ever been used to
> in the past, yet it's actually the best thing they could do.  It's a
> long road of education and doing work on their part to get test
> frameworks set up to be able to qualify "larger" upgrades.  It also
> requires that their chip vendor not add 1.5 million lines of code to
> their kernel, rewrite the scheduler, and duplicate all existing drivers
> with a "-2" suffix.
> 
> Ok, this is rambling, and something I've been mulling over for a while
> now.  I'm working with some people at some of the chip companies to see
> about how we can do this better, hopefully the work of education,
> testing, and other assurances can help everyone out in the end, and
> start to resolve these issues, but it's going to be slow going.

Yes, usually the SoC/product vendors get a huge pressure on 'time to
market' and there are no enough and strong resources to work on upstream
first policy through they also know that's better for their-self in long
term.

So this kind of collaboration like LSTI, LSK would relief these guys,
save duplicated work in this industry and give them more time to work
upstream for long term purpose. That's happening in Linaro members.

> 
> Yes, I'll have an LTS this year, but next year?  Maybe not, my dream
> would be that it wouldn't be needed.  And one has to dream :)
> 
