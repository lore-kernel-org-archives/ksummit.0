Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 23BFB258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 13:59:02 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B16F3143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 13:59:01 +0000 (UTC)
To: Dan Carpenter <dan.carpenter@oracle.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda>
Date: Wed, 26 Apr 2017 09:58:43 -0400
In-Reply-To: <20170426084253.yvxyzb3khh2fej4j@mwanda> (Dan Carpenter's message
	of "Wed, 26 Apr 2017 11:42:53 +0300")
Message-ID: <yq1h91be0do.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Dan,

> My patches are normally simple is probably part of the difference.

Patch complexity usually has something to do with it. In SCSI I deal
with simple patches right away. Other people are also willing to jump in
and review because the time commitment to do so is low.

It's much harder to get people to review intricate core changes because
they need a significant chunk of uninterrupted time. And that's a
precious resource.

Another gripe of mine wrt. big vs. small is that almost all vendor
driver updates come in the form of "30+ patches to update the driver to
version XYZ". Often a week before the merge window. And then they wonder
why nobody reviews them. Well, duh. That's a huge chunk of time for
somebody to commit.

It would be much better if they'd drop the arbitrary and pointless
"driver version XYZ" notion and just send a few patches per week.
Reviewers are much more inclined to go "Oh, I have 15 minutes now, let
me check my inbox". In most cases the reviews would also be more
thorough because you don't lose focus after patch number 7 and just
want this entire thing to be over before your brain turns into mush.

Anyway. Just being the devil's advocate here. It just seems there's a
consistent "maintainers are bad/lazy/unresponsive" theme going on. But
for better or for worse, patch submitters are often presenting their
work in ways that are completely indigestible. Not just to the
maintainers, but to the people willing to do reviews.

Not sure what we can do to address this? I often have big patch series
sitting tagged in my inbox for days/weeks while I chip away at them. But
the reality is that few, if any, reviewers do the same. If there is not
enough time to review a submission first time people see it in their
inbox, chances are that the review opportunity is lost forever.

And if nobody else reviews the patches the burden falls on me, making my
backlog even bigger.

-- 
Martin K. Petersen	Oracle Linux Engineering
