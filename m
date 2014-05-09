Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 64D4D947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 04:11:49 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD7E4200A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 04:11:48 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.mail.srv.osa [10.202.2.45])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 8F20C2163A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 00:11:47 -0400 (EDT)
Date: Fri, 9 May 2014 06:11:40 +0200
From: Greg KH <greg@kroah.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140509041140.GB22191@kroah.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<20140507090628.GZ26890@mwanda>
	<20140507141503.GB12433@quack.suse.cz>
	<536AFC26.2080907@huawei.com> <20140508094109.GA3685@quack.suse.cz>
	<CALCETrX344Yqd7G2v7nJ36jtgXFjFfQy=g6X8-JD=6MAhN0T-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrX344Yqd7G2v7nJ36jtgXFjFfQy=g6X8-JD=6MAhN0T-w@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Thu, May 08, 2014 at 01:35:45PM -0700, Andy Lutomirski wrote:
> On Thu, May 8, 2014 at 2:41 AM, Jan Kara <jack@suse.cz> wrote:
> > On Thu 08-05-14 11:38:14, Li Zefan wrote:
> >> On 2014/5/7 22:15, Jan Kara wrote:
> >> > On Wed 07-05-14 12:06:28, Dan Carpenter wrote:
> >> >> On Tue, May 06, 2014 at 07:58:58PM -0700, Davidlohr Bueso wrote:
> >> >>> I tend to think of LTP as a nice way of doing unit-tests for the uapi.
> >> >>> Fengguang's scripts do include it, iirc, but I'm referring more to unit
> >> >>> level tests. It serves well for changes in ipc, and should also for
> >> >>> other subsystems.
> >> >>
> >> >> LTP is too complicated and enterprisey.  With trinity you don't can just
> >> >> type:
> >> >>
> >> >>    ./configure.sh && make && ./trinity
> >> >>
> >> >> With LTP you have to read the install documents.  You can't run it
> >> >> from your home directory so you have to build a virtual machine which
> >> >> you don't care about before you install it.
> >> >   Actually, I'm occasionally using LTP and it doesn't seem too bad to me.
> >> > And it seems LTP is improving over time so I'm mostly happy about it.
> >>
> >> But how useful LTP is in finding kernel bugs? It seems to me we seldom
> >> see bug reports which say the bug was found by LTP?
> >   I'm handling a few (3-5) per year. I'm also extending the coverage (e.g.
> > recently I've added fanotify interface coverage) when doing more involved
> > changes to some code so that LTP can be reasonably used for regression
> > checking.
> 
> There was some talk about having some kind of 'make test' that you can
> type in a kernel tree.  I'm not sure what the plan is, if any.

The plan is to fix it, we already have it in the tree today, but it is
broken.

thanks,

greg k-h
