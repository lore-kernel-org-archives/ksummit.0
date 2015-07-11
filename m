Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFBD2AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 19:35:43 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 1E30E161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 19:35:43 +0000 (UTC)
Date: Sat, 11 Jul 2015 19:35:39 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Greg KH <greg@kroah.com>
Message-ID: <20150711193539.GF23515@io.lakedaemon.net>
References: <20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<alpine.DEB.2.10.1507110923220.2551@hadrien>
	<20150711151844.GB23515@io.lakedaemon.net>
	<20150711164535.GB8411@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711164535.GB8411@kroah.com>
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

On Sat, Jul 11, 2015 at 09:45:35AM -0700, Greg KH wrote:
> On Sat, Jul 11, 2015 at 03:18:44PM +0000, Jason Cooper wrote:
> > Perhaps that burden could be reduced by a 'kernel-mentor@v.k.o' ML?
> 
> We already have such a mailing list, it's quite empty and quiet :(

Are you referring to linux-newbie?

  http://vger.kernel.org/vger-lists.html#linux-newbie

If so, yes.  It's empty and quiet.

> In other words, this idea has been tried, maybe consider something else?

Well, the key piece is having a few experienced maintainers active on
the list.  That doesn't seem to be the case on linux-newbie.  Also,
linux-newbie doesn't seem to be kernel-specific.

We could address new users not knowing about it with a script.  Any
[PATCH] posts to a mailing list where the sender is a miss in the git
history bounces the email to the kernel-mentor list.

In case it wasn't obvious, I'd be willing to be one of those mentors if
I had a few others to rotate lead with.

thx,

Jason.
