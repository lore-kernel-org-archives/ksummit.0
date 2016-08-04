Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 98261957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 23:52:20 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2DB0CCD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 23:52:20 +0000 (UTC)
Date: Fri, 5 Aug 2016 02:52:18 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160805021426-mutt-send-email-mst@kernel.org>
References: <20160729075039.GA26402@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729075039.GA26402@x>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> I'd welcome any feedback, whether on the interface and workflow, the
> internals and collaboration, ideas on presenting diffs of patch series,
> or anything else.

Hi Josh!
A couple of ideas, I hope these will be helpful:

I often need to move series between unrelated trees.
I sometimes use cherry-pick for that (if they are from my tree)
or am (if not).

How about "git series am" - get patch series from email,
including a cover letter, and create a series from that?

And how about "git series cherry-pick" - to apply
series to the current head?

Kind of going in the reverse direction from git series format.

-- 
MST
