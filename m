Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A273370A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:22:34 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE18C1F940
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:22:32 +0000 (UTC)
Date: Sat, 3 May 2014 11:22:29 -0400
From: Greg KH <greg@kroah.com>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140503152229.GF11837@kroah.com>
References: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 02, 2014 at 09:42:04PM +0200, Jiri Kosina wrote:
> I am a responsible maintainer of kernels for SUSE enterprise products. As 
> such, I am dealing with -stable trees on a regular basis. Hence, if there 
> is any discussion related to -stable tree process going to happen, I am 
> highly interested in that discussion.
> 
> I'd like to re-iterate my usual question / discussion topic of 
> responsibility distribution for -stable patches; my proposal again would 
> be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
> subsystem maintainers preparing 'for-stable' branches and sending pull 
> requests to the stable team, instead of rather random cherry-picking of 
> the patches from the air as they fly by the stable team members.

See my other response to this.  That puts extra work on the subsystem
maintainer instead of the stable maintainer, which is not acceptable.

I also said this in person last year at KS, and my opinion hasn't
changed, sorry.

thanks,

greg k-h
