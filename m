Return-Path: <lczerner@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 33450910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 09:56:33 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 60A4E1FAB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 09:56:32 +0000 (UTC)
Date: Fri, 30 May 2014 11:56:21 +0200 (CEST)
From: =?ISO-8859-15?Q?Luk=E1=A8_Czerner?= <lczerner@redhat.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140529181319.GA24218@kroah.com>
Message-ID: <alpine.LFD.2.00.1405301149330.2009@localhost.localdomain>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 29 May 2014, Greg KH wrote:

> Date: Thu, 29 May 2014 11:13:19 -0700
> From: Greg KH <greg@kroah.com>
> To: Daniel Phillips <d.phillips@partner.samsung.com>
> Cc: ksummit-discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
> 
> On Thu, May 29, 2014 at 10:49:13AM -0700, Daniel Phillips wrote:
> > Hi Neil,
> > 
> > This will be my annual proposal to open a general discussion about improving
> > the internal block API, to be capable of doing all the things that the ZFS
> > crowd claim are impossible without rampantly violating filesystem/raid
> > layering. Attacking this in a storage-specific venue would also be good,
> > however I view this issue as being at least as central as a number of topics
> > already raised for general consideration.
> 
> Why didn't you bring this up at the filesystem summit a few months ago?
> That's the best place for it, not at the kernel summit.

Actually we've sort-of started the discussion about this topic at
LSF. Dave Chinner was the one who brought this up, the only problem
was that his idea was in really early stage and I suppose it still
is because I have not heard about this since then.

But I agree that this kind of discussion is more suited for LSF
rather than kernel summit since it's much more targeted to block vs.
file systems interactions.

> 
> > Full disclosure dept: I have an agenda. I want to add the equivalent of
> > Raidz etc to Tux3 without reimplementing a logical volume manager in the
> > filesystem.
> 
> Like btrfs is doing?  :)

Well, we want exactly what btrfs is _not_ doing :)

-Lukas

> 
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
