Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A218B2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:31:32 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A9C1E14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:31:31 +0000 (UTC)
Message-ID: <1493217078.2526.8.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, Dan Carpenter
	<dan.carpenter@oracle.com>
Date: Wed, 26 Apr 2017 10:31:18 -0400
In-Reply-To: <yq1h91be0do.fsf@oracle.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda> <yq1h91be0do.fsf@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-04-26 at 09:58 -0400, Martin K. Petersen wrote:
> Anyway. Just being the devil's advocate here. It just seems there's a
> consistent "maintainers are bad/lazy/unresponsive" theme going on. 
> But for better or for worse, patch submitters are often presenting 
> their work in ways that are completely indigestible. Not just to the
> maintainers, but to the people willing to do reviews.

I definitely agree with this.  Complain about the maintainer because my
patch hasn't gone in is fairly common pattern.

> Not sure what we can do to address this? I often have big patch
> series sitting tagged in my inbox for days/weeks while I chip away at
> them.  But the reality is that few, if any, reviewers do the same. If
> there is not enough time to review a submission first time people see
> it in their inbox, chances are that the review opportunity is lost
> forever.

One thing we tried a while ago, which perhaps we should discuss
resurrecting is the idea of holding up patches until the submitter has
enough current reviews.  At base this means for two driver patches,
each submitter reviews the other patches.

When we tried this in SCSI we had mixed results.  The problem is that
holding up patches in this way causes even more complaints, so you have
to be really disciplined about it (and up front about the reasons). 
 However, I still think finding ways of encouraging submitters (who
obviously should understand the code) to participate equally in the
review process seems to be the scalable way forwards ... the problem is
how to do it without causing huge ructions.

James
