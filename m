Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 753F6B47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:44:09 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF66E1D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Apr 2017 14:44:08 +0000 (UTC)
Message-ID: <1493217836.2526.10.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>
Date: Wed, 26 Apr 2017 10:43:56 -0400
In-Reply-To: <alpine.LSU.2.20.1704261633140.12121@cbobk.fhfr.pm>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda> <yq1h91be0do.fsf@oracle.com>
	<1493217078.2526.8.camel@HansenPartnership.com>
	<alpine.LSU.2.20.1704261633140.12121@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	David Miller <davem@davemloft.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-04-26 at 16:34 +0200, Jiri Kosina wrote:
> On Wed, 26 Apr 2017, James Bottomley wrote:
> 
> > When we tried this in SCSI we had mixed results.  The problem is 
> > that holding up patches in this way causes even more complaints, so 
> > you have to be really disciplined about it (and up front about the
> > reasons).
 
> 
> Another problem is that sending e-mail containing 'Reviewed-by:' is 
> way too easy if it's being motivated by something else than a real 
> desire to actually perform the review.

Agreed, but I think you'll find most maintainers have a "trust factor"
for reviewers.  Perhaps we should discuss how we arrive at this and how
we should make it more public.  The way I often deal with less trusted
reviewers is to redo their review and point out all the things they
missed and ask them not to come back until they can be more thorough.

James
