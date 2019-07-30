Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DE9FF30CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 17:01:17 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B423F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 17:01:17 +0000 (UTC)
Date: Tue, 30 Jul 2019 19:01:15 +0200
From: Jan Kara <jack@suse.cz>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20190730170115.GK28829@quack2.suse.cz>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
	<20190725050059.GA30226@jagdpanzerIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190725050059.GA30226@jagdpanzerIV>
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

On Thu 25-07-19 14:00:59, Sergey Senozhatsky wrote:
> On (07/24/19 06:55), Jeff Layton wrote:
> > (cc'ing Trond)
> > 
> > Trond has been driving those patches more recently. He posted a revised
> > set of them recently, and they still use fsnotify to detect unlink
> > activity:
> > 
> > https://www.spinics.net/lists/linux-nfs/msg73692.html
> 
> Jan, do you have objections?
> Would be great to have fsnotify export patch in linux-next, maybe.

I have no objections to export bits of fsnotify to modules. After all
kernel/audit_tree.c is another external user of the fsnotify bits, just it
happens not to be modularized so there was never need for exports.

Once NFS guys (or someone else) have something that is close to inclusion,
I can push the export patch to my tree (just CC me, Amir, and fsdevel on the
series). I prefer not to export symbols for something that is out of tree
and will not be getting upstream in a near future. After all the export
patch is easy to carry in your tree if you need it.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
