Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0E5809FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 22:45:11 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D7BD11E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 22:45:10 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id B9CA22096D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 18:45:09 -0400 (EDT)
Date: Sat, 11 Jul 2015 15:45:08 -0700
From: Greg KH <greg@kroah.com>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20150711224508.GA25449@kroah.com>
References: <20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<alpine.DEB.2.10.1507110923220.2551@hadrien>
	<20150711151844.GB23515@io.lakedaemon.net>
	<20150711164535.GB8411@kroah.com>
	<20150711193539.GF23515@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711193539.GF23515@io.lakedaemon.net>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Sat, Jul 11, 2015 at 07:35:39PM +0000, Jason Cooper wrote:
> On Sat, Jul 11, 2015 at 09:45:35AM -0700, Greg KH wrote:
> > On Sat, Jul 11, 2015 at 03:18:44PM +0000, Jason Cooper wrote:
> > > Perhaps that burden could be reduced by a 'kernel-mentor@v.k.o' ML?
> > 
> > We already have such a mailing list, it's quite empty and quiet :(
> 
> Are you referring to linux-newbie?
> 
>   http://vger.kernel.org/vger-lists.html#linux-newbie
> 
> If so, yes.  It's empty and quiet.

Nope, kernel-mentors:
	http://kernelnewbies.org/KernelMentors

> > In other words, this idea has been tried, maybe consider something else?
> 
> Well, the key piece is having a few experienced maintainers active on
> the list.

We have that.

> That doesn't seem to be the case on linux-newbie.  Also,
> linux-newbie doesn't seem to be kernel-specific.

I don't know anything about linux-newbie, sorry.

> We could address new users not knowing about it with a script.  Any
> [PATCH] posts to a mailing list where the sender is a miss in the git
> history bounces the email to the kernel-mentor list.
> 
> In case it wasn't obvious, I'd be willing to be one of those mentors if
> I had a few others to rotate lead with.

Great, feel free to join the kernel-mentors list and be amazed at the
silence :)

The fact that it's not well known might be one of the problems, but it
has been tried, just pointing out that this isn't a new idea, not that
it is an invalid one.

good luck!

greg k-h
