Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 67C933EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 09:03:37 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2B5919B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Apr 2017 09:03:36 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jiri Kosina <jikos@kernel.org>
In-Reply-To: <1493217836.2526.10.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
	<20170426084253.yvxyzb3khh2fej4j@mwanda>
	<yq1h91be0do.fsf@oracle.com>
	<1493217078.2526.8.camel@HansenPartnership.com>
	<alpine.LSU.2.20.1704261633140.12121@cbobk.fhfr.pm>
	<1493217836.2526.10.camel@HansenPartnership.com>
Date: Thu, 27 Apr 2017 12:06:03 +0300
Message-ID: <87h91arzic.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	Ingo Molnar <mingo@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 26 Apr 2017, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> Agreed, but I think you'll find most maintainers have a "trust factor"
> for reviewers.  Perhaps we should discuss how we arrive at this and how
> we should make it more public.  The way I often deal with less trusted
> reviewers is to redo their review and point out all the things they
> missed and ask them not to come back until they can be more thorough.

I think that's also a bit harsh, because I think the only way to become
a better reviewer is to... review. I know it's hard to balance being
welcoming to new reviewers and ensuring the patches do get proper review
in the end.

Certainly one thing that increases my trust in a review is the amount of
review comments on the patch, even if there's a Reviewed-by at the
end. Basically any hints that the reviewer has actually thought about
the changes.

On a related note, as maintainers I think we need to put more attention
to recording the review credits in the commits. It's not unusual for
review to be more work than writing the patch. The patch authors may be
new contributors, or just looking at their specific use case, but the
reviewer should look at the big picture. I think Jon will start tracking
reviews more regularly, like he did for v4.11 stats [1], but obviously
the stats are only as good as the input.


BR,
Jani.


[1] https://lwn.net/Articles/720336/


-- 
Jani Nikula, Intel Open Source Technology Center
