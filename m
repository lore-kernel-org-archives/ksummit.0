Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1705282A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:41:13 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B65D1F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:41:12 +0000 (UTC)
Date: Thu, 8 May 2014 11:41:09 +0200
From: Jan Kara <jack@suse.cz>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140508094109.GA3685@quack.suse.cz>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<20140507090628.GZ26890@mwanda>
	<20140507141503.GB12433@quack.suse.cz>
	<536AFC26.2080907@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536AFC26.2080907@huawei.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 08-05-14 11:38:14, Li Zefan wrote:
> On 2014/5/7 22:15, Jan Kara wrote:
> > On Wed 07-05-14 12:06:28, Dan Carpenter wrote:
> >> On Tue, May 06, 2014 at 07:58:58PM -0700, Davidlohr Bueso wrote:
> >>> I tend to think of LTP as a nice way of doing unit-tests for the uapi.
> >>> Fengguang's scripts do include it, iirc, but I'm referring more to unit
> >>> level tests. It serves well for changes in ipc, and should also for
> >>> other subsystems.
> >>
> >> LTP is too complicated and enterprisey.  With trinity you don't can just
> >> type:
> >>
> >> 	./configure.sh && make && ./trinity
> >>
> >> With LTP you have to read the install documents.  You can't run it
> >> from your home directory so you have to build a virtual machine which
> >> you don't care about before you install it.
> >   Actually, I'm occasionally using LTP and it doesn't seem too bad to me.
> > And it seems LTP is improving over time so I'm mostly happy about it.
> 
> But how useful LTP is in finding kernel bugs? It seems to me we seldom
> see bug reports which say the bug was found by LTP?
  I'm handling a few (3-5) per year. I'm also extending the coverage (e.g.
recently I've added fanotify interface coverage) when doing more involved
changes to some code so that LTP can be reasonably used for regression
checking.
 
								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
