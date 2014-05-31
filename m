Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9173F96E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 02:21:10 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDB9B201CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 02:21:09 +0000 (UTC)
Date: Fri, 30 May 2014 22:21:06 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140531022106.GE20492@thunk.org>
References: <alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
	<20140530165646.GZ25041@thunk.org> <538933F1.4030009@huawei.com>
	<5389363F.7090808@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5389363F.7090808@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
 kernel developers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 06:54:07PM -0700, Guenter Roeck wrote:
> 
> I don't think this is a matter of being enthusiastic or not. Much more
> one of expertise. As a user of stable kernels, I would very much prefer
> to have it maintained by an expert (or by experts), not by a newcomer.
> Of course, that may be just me.

The stable kernel tree would still be maintained by experts.  Even if
newcomers supplied some of the backports, they would still get
reviewed by experts.  Granted, for the first few patches it might not
save me that much time compared to my just doing the backport myself,
but it's IMHO much more likely to result in a capable programmer in
the long run (at least compared to people who are just encouraged to
do drive-by whitespace / spelling patch submissions). 

And if we have newcomers looking for bug fix patches that weren't
properly marked with "cc: stable@vger.kernel.org", and calling those
patches to the stable tree and subsystem maintainers, again, I think
it's healthier and certainly more productive than traning them to look
for whitespace and checkpatch.pl warnings.

If the argument is that newcomers aren't motivated to do this sort of
grunt work, recall how much grunt work maintainers have to do.  How
much time do you think most maintainers spend writing new sexy
features?  As opposed to the less fun bits, such as reviewing code and
running integration tests and bisecting through submitted patches to
find the buggy "cleanup" patch someone sent me?  

If I can find people who don't mind sharing in some of the more less
glory-filled aspects of being an open source developer, and who isn't
afraid to do some of the less fun but still vitally important bits,
speaking personally, those are the people that I would be more
motivated to mentor.  In contrast, someone who sends thousands of
whitespace patches is ***not*** someone I'm personally going to be
much inclined to spend time mentoring.  And if the goal is to make
sure we can groom people who can step in when maintainers get hit by a
bus or retire, which sort of people do you want to be groomed to
become the new maintainers?

Cheers,

						- Ted
