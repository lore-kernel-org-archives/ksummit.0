Return-Path: <frowand.list@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2702226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 21:57:45 +0000 (UTC)
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E8331FFF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 21:57:44 +0000 (UTC)
Received: by mail-wg0-f45.google.com with SMTP id m15so1098012wgh.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 14:57:42 -0700 (PDT)
Message-ID: <5387AD52.1040702@gmail.com>
Date: Thu, 29 May 2014 14:57:38 -0700
From: Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<1401323745.14007.51.camel@deadeye.wl.decadent.org.uk>
	<20140529164600.GO5099@sirena.org.uk>
In-Reply-To: <20140529164600.GO5099@sirena.org.uk>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
Reply-To: frowand.list@gmail.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 5/29/2014 9:46 AM, Mark Brown wrote:
> On Thu, May 29, 2014 at 01:35:45AM +0100, Ben Hutchings wrote:
>> On Tue, 2014-05-27 at 20:10 -0400, Martin K. Petersen wrote:
> 
>>> There are a few companies in the enterprise space that get it. But in
>>> general it can be quite the challenge to get these vendors to see the
>>> value of being good Linux citizens. And these companies are much less
>>> susceptible to phoronix rants than entities producing consumer widgets.
> 
>> For consumer widgets, it appears that most vendors don't update the
>> software, so they won't care that any out-of-tree drivers may break on
>> the next kernel version.  In fact, they're likely to be starting with
>> their SoC vendor's kernel tree which was forked a few years ago and has
>> a ton of dirty performance hacks in the core.
> 
> This is very true, to a good approximation nobody in the consumer
> electronics space cares in the slightest about upstream - it's just not
> useful as-is.  These days it's likely to be the current Android kernel
> at the time the SoC was current.  There is some pressure from some of
> the more clueful system integrators to be working with upstream, partly
> for bringing things forwards on new devices and partly for leveraging
> the review.

I must be nobody then.  For many years I have been pushing for being as
close to mainline as possible.  Even to the point of using an -rc1
release as the beginning point of new product development, knowing that
we would need to follow the churn through the rc versions.

And we encourage and are supportive of our SoC vendors working in mainline
instead of vendor trees.

-Frank Rowand
(for random parts of Sony)
