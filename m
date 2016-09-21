Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 699B5A1C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 15:23:21 +0000 (UTC)
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45A69168
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 15:23:20 +0000 (UTC)
Received: by mail-pa0-f43.google.com with SMTP id qn7so1973664pac.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 08:23:20 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org>
	<20160921135601.zwsmvrrfbhlez24n@thunk.org>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E2A5E3.4080407@linaro.org>
Date: Wed, 21 Sep 2016 23:23:15 +0800
MIME-Version: 1.0
In-Reply-To: <20160921135601.zwsmvrrfbhlez24n@thunk.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/21/2016 09:56 PM, Theodore Ts'o wrote:
> On Wed, Sep 21, 2016 at 02:58:22PM +0800, Alex Shi wrote:
>> 'upstream first' is good for feature development, but isn't good for
>> product. Many product guys talked to me that the non-upstream porting
>> didn't cost much and not the reason to pin on some stable kernel. All of
>> them said that testing and stability was the most cost part. Not only
>> the regular test case, benchmarks, but also the long time using for some
>> trick/corner case bugs in whole system.
>>
>> I doubt the 'keep rebasing on upstream' guys have been really worked on
>> product?
> 
> I've worked on product kernels for consumer, and I'm horrified by what
> the cr*p drivers do to stability and testing.  It also means that I've
> had to port the same feature to N different product kernels, and seen
> how many bug fixes (including some security-relevant fixes) aren't
> getting applied the product kernel because the SOC vendor isn't
> tracking the LTS kernel.  And I've also seen engineers from other
> companies ask me about bug fixes that were already fixed in the LTS
> kernel.

Thanks Ted!

Mobile industry is really mess. :)
But there are still companies that like to update their release for
consumer report bug.

> 
> So yes, I've seen it all, from running upstream leading edge kernels
> on my laptop, to product kernels for consumer products, to enterprise
> distro kernels, to data center kernels where we rebase once a year or
> so --- and I certainly know what I prefer, and what results in the
> highest quality kernels while still allowing for bleeding edge kernel
> features that allow for competitive advantages.  (Hint: it's not the
> current consumer product kernel approach.)
> 

Yes, personally, I also keep using latest kernel on my laptop. But as to
a released product, could you let me know data center will ship to other
as product? Or which enterprise distro kernel keep rebasing to upstream?
Most of product need team work, like mobile phone, include kernel,
libraries, user APP, the software number is tremendous. Thus base layer
software update need long time testing for compatibility and stability.
Then rebasing to upstream is too luxury to them.
