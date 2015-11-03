Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 072729A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:30:15 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 814AB18C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 17:30:14 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 8C6CB21AF2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Nov 2015 12:30:13 -0500 (EST)
Date: Tue, 3 Nov 2015 09:30:12 -0800
From: Greg Kroah-Hartman <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20151103173012.GA31651@kroah.com>
References: <1446570155.6440.12.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446570155.6440.12.camel@HansenPartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Stable and delay backports
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Nov 03, 2015 at 09:02:35AM -0800, James Bottomley wrote:
> I'm still not clear, even after all the discussion, whether there's any
> value left to annotating the cc to stable with a delay backport.  I'm
> getting ready to post a fix to our block size calculations which make
> them completely accurate instead of within 5% like they were before.
> Technically this is a bug fix because people get distressed even over
> apparently losing 5% of their space, so it will have to be backported,
> but the algorithm has increased in complexity, so it would be better to
> incubate in main line for a while to make sure there are no further
> complaints.
> 
> So the question: I think I heard Greg say you're automatically delaying
> merge window backports anyway, so there's no real need to add a separate
> delay tag, or is there?

If you want to ensure that I don't instantly pick it up, sure, put a
"add to stable after XXX" marking on the patch, or do like Jens
suggested, either will work.

thanks,

greg k-h
