Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B7C918D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Sep 2016 16:33:32 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16D9F22D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Sep 2016 16:33:31 +0000 (UTC)
In-Reply-To: <20160914170536.77fkhyiyikxc6jab@piout.net>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<alpine.DEB.2.10.1609140756320.3395@hadrien>
	<1473834432.32273.21.camel@perches.com>
	<20160914170536.77fkhyiyikxc6jab@piout.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Thu, 15 Sep 2016 17:33:22 +0100
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>,
	Joe Perches <joe@perches.com>
Message-ID: <FC03991A-3E78-4BD7-9544-74AC089A9C87@jic23.retrosnub.co.uk>
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
	trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 14 September 2016 18:11:07 BST, Alexandre Belloni <alexandre.belloni@free-electrons.com> wrote:
>On 13/09/2016 at 23:27:12 -0700, Joe Perches wrote :
>> On Wed, 2016-09-14 at 07:57 +0200, Julia Lawall wrote:
>> > What types of changes are unacceptable?
>> 
>> It's a mixed bag.
>> 
>> Some maintainers reject all "style/whitespace changes".
>> Some maintainers reject global consistency patches like
>> int -> bool conversions.
>> Some maintainers reject literal -> #define changes like
>> 1 -> true and 0 -> false for booleans.
>> 
>> Some of those maintainers are IMO misguided.
>
>On my side, I usually take that kind of changes only when they come
>with
>other substantial changes, especially when the code hasn't been touched
>for a while.
>
>The other thing that I find annoying are people using Coccinnelle or
>any
>other static code analysis tool and sending patches without saying how
>they found the alleged bug. Sometimes, this results in pointless
>cleanups that haven't been tested by the patch author.

As a maintainer who gets a lot of patches from newbies (partly as I maintain a fair
set of staging patches but also as we have a steady stream of new drivers in
IIO) I am quite happy to take 'good' whitespace cleanups.

Most of the time I can find something deeper to point out in the driver and get
them moving up the food chain.

Personally I think it is worth the pain in recent driver code at least as the
 advantage of pulling someone new in outweighs the costs.

Probably helps that IIO has a fair sized group of reviewers many of whom help
out with advice to newbies.  Hence I have it easy :)

Just thought I'd add a positive viewpoint.

Jonathan
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
