Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C69C8995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:22:25 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4590C2026C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 03:22:25 +0000 (UTC)
Date: Sun, 4 May 2014 20:22:22 -0700
From: Greg KH <greg@kroah.com>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20140505032222.GA12867@kroah.com>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, May 04, 2014 at 08:54:31AM -0400, Josh Boyer wrote:
> On Sun, May 4, 2014 at 7:19 AM, Li Zefan <lizefan@huawei.com> wrote:
> > I've been dealing with stable kernels. There are some issues that I noticed
> > and may be worth discussing.
> >
> > - Too many LTS kernels?
> >
> > 2.6.32  Willy Tarreau
> > 3.2     Ben Huchings
> > 3.4     Greg
> > 3.10    Greg
> > 3.12    Jiry Slaby
> >
> > Too many or not? Is it good or bad? One of the problem is the maintenance
> > burden. For example, DaveM has to prepare stable patches for 5 stable
> > kernels: 3.2, 3.4, 3.10, 3.12 and 3.14.
> 
> To be fair, he doesn't have to.  He chooses to, and it's great.
> 
> > - Equip Greg with a sub-maintainer?
> >
> > I found 3.4.x lacked hundreds of fixes compared to 3.2.x. It's mainly
> > because Ben has been manually backporting patches which don't apply
> > cleanly, while Greg just doesn't have the time budget. Is it possible
> > that we find a sub-maintainer to do this work?
> 
> I think you've already shown exactly how we can handle that.  It just
> takes someone willing to do the work to dig in.  Greg seemed very
> pleased with the patches for 3.4 being sent to him, and I know he's
> thanked me each time I send a report of what Fedora is carrying on top
> of a stable release.  Do we need something more formal that what
> either of us have already done (or continue to do)?

I am really happy with people helping me out, and have asked for help in
the past.

The 3.4 patch work that has been going on is a great example of that,
and one that I am behind on in catching up with, due to travel, sorry.

If people want to come up with other ways of helping me, I'm all for it :)

thanks,

greg k-h
