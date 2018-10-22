Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68B558CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Oct 2018 21:13:43 +0000 (UTC)
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
	[64.147.123.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E7637FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Oct 2018 21:13:42 +0000 (UTC)
Date: Mon, 22 Oct 2018 22:10:25 +0100
From: Greg Kroah-Hartman <greg@kroah.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Message-ID: <20181022211025.GA8911@kroah.com>
References: <1540066514.3464.22.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1540066514.3464.22.camel@HansenPartnership.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [GIT PULL] code of conduct fixes for 4.19-rc8
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Oct 20, 2018 at 01:15:14PM -0700, James Bottomley wrote:
> This is the series of patches which has been discussed on both ksummit-
> discuss and linux-kernel for the past few weeks.  As Shuah said when
> kicking off the process, it's designed as a starting point for the next
> phase of the discussion, not as the end point, so it's only really a
> set of minor updates to further that goal.
> 
> The merger of the three patches to show the combined effect is attached
> below.  However, Greg recently posted the next phase of the discussion,
> so people will be asking what the merger of the series looks like. 
> Ignoring the non-CoC documents, I think it looks like this

Sorry for not responding sooner for this, travel and the meeting today
took up my time.

Anyway, as we discussed today in the Maintainers summit, let's leave the
Code of Conduct text alone for now.  It matches what "upstream" has with
the exception of removing that one paragraph.  If you have issues with
the wording in it, please work with upstream to fix the issues there as
hundreds of other projects will benefit with your changes if they are
really needed.

For now, let's let things settle down and not worry about hypothetical
situations that might possibly happen in some way or another as we can
debate that type of thing endlessly (it's a good skill we have which
makes us great kernel developers, but it not always transferrable to
other environments).

If real issues do come up in the future, we will address them then, as
we always have the option to change and revisit things as needed.

thanks,

greg k-h
