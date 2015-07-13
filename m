Return-Path: <jic23@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05BDCBC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:03:37 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5BB05191
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:03:36 +0000 (UTC)
In-Reply-To: <20150713162439.GI4289@mwanda>
References: <1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
	<20150713140113.GB4341@mwanda>
	<20150713143331.GA21079@quack.suse.cz>
	<20150713162439.GI4289@mwanda>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@kernel.org>
Date: Mon, 13 Jul 2015 18:58:02 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>,Jan Kara <jack@suse.cz>
Message-ID: <10DF1CE5-9C94-41E7-9F94-7949348E766A@kernel.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 13 July 2015 17:28:25 BST, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>On Mon, Jul 13, 2015 at 04:33:31PM +0200, Jan Kara wrote:
>> On Mon 13-07-15 17:20:47, Dan Carpenter wrote:
>> > On Sun, Jul 12, 2015 at 07:28:23AM -0500, Josh Poimboeuf wrote:
>> > > I agree that the Reviewed-by tag doesn't apply here.  It
>communicates
>> > > patch approval, rather than review helpfulness.  That's why I
>proposed a
>> > > new tag from the patch author and/or maintainer.
>> > 
>> > I've lobbied for:
>> > 
>> > With-Fixes-from: xxx
>> > 
>> > It would only be given for actual bug fixes and not for complaining
>> > about the subject line, white space or spelling mistakes.
>> 
>> This seems like overengineering to me. I usually give a credit in the
>changelog
>> if I find someone's contribution big enough. Also a persistent
>reviewer will
>> eventually get his credit via Reviewed-by :). So I don't think yet
>another
>> tag is really necessary.
>
>I could get as many reviewed-by tags as I wanted...  I basically only
>write reviewed-by tags as a way of being nice to people sending
>patches.
>
>Lots of people give credit for fixes in the changlog like but it's more
>common to leave it out.  Also it's not searchable.
>
>This happened hours ago in staging.  Someone sent a buggy patch and
>reviewers spotted the bug but no one got credit.
>
>http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072662.html
>http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2015-July/072668.html
>
>Imagine how special Patrick would feel if we gave him a nice
>"With-fix-from: Patrick Farrell <paf@cray.com>" tag.  :)  Also the
>other
>rule would be that only the first person to report the bug gets the
>credit (Sorry, Sudip).  The next version of the patch had a process
>problem which Sudip noticed as well but that still doesn't earn a
>with-fix-from tag.

I like this idea in principle. Not entirely sure if it will work perfectly in practice.

Likely that in high revision count series some earlier work will not get credit...
 Unless patch authors get to propose such tags as suggestions to the
 maintainer.  Preferably with description in the change log!  Guessing I am not the
 only maintainer who doesn't keep up with all the versions of some patches other
 than a quick controversy check!

>
>regards,
>dan carpenter
>
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
