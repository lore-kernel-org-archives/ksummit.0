Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A1DB35ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Jul 2019 03:09:18 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B71A92C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Jul 2019 03:09:17 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t16so30935780pfe.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 20:09:17 -0700 (PDT)
Date: Wed, 31 Jul 2019 12:09:13 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190731030913.GA5614@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
	<20190725050059.GA30226@jagdpanzerIV>
	<20190730170115.GK28829@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190730170115.GK28829@quack2.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
	Trond Myklebust <trondmy@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/30/19 19:01), Jan Kara wrote:
> On Thu 25-07-19 14:00:59, Sergey Senozhatsky wrote:
> > On (07/24/19 06:55), Jeff Layton wrote:
> > > (cc'ing Trond)
> > > 
> > > Trond has been driving those patches more recently. He posted a revised
> > > set of them recently, and they still use fsnotify to detect unlink
> > > activity:
> > > 
> > > https://www.spinics.net/lists/linux-nfs/msg73692.html
> > 
> > Jan, do you have objections?
> > Would be great to have fsnotify export patch in linux-next, maybe.
> 
> I have no objections to export bits of fsnotify to modules. After all
> kernel/audit_tree.c is another external user of the fsnotify bits, just it
> happens not to be modularized so there was never need for exports.

That's great. At least we can expect that fsnotify will be exported
at some point and can start playing with fsnotify-based smb2_notify
implementation.

> Once NFS guys (or someone else) have something that is close to inclusion,
> I can push the export patch to my tree (just CC me, Amir, and fsdevel on the
> series).

OK, both OverlayFS and NFS have some plans for fsnotify, so let's see.

> I prefer not to export symbols for something that is out of tree
> and will not be getting upstream in a near future. After all the export
> patch is easy to carry in your tree if you need it.

Makes perfect sense.

	-ss
