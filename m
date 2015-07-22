Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D40A491
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 16:29:22 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E4321FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 16:29:21 +0000 (UTC)
Date: Wed, 22 Jul 2015 09:29:13 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150722162913.GA1203@jtriplet-mobl1>
References: <alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
	<55ADA7C1.3050809@huawei.com>
	<20150721185436.20b97c47@notabene.brown>
	<20150722090457.45562610@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150722090457.45562610@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
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

On Wed, Jul 22, 2015 at 09:04:57AM -0400, Steven Rostedt wrote:
> On Tue, 21 Jul 2015 18:54:36 +1000
> NeilBrown <neilb@suse.com> wrote:
> 
> > On Tue, 21 Jul 2015 10:00:33 +0800 Zefan Li <lizefan@huawei.com> wrote:
> > 
> > > > Then it should just be case of of asking Stephen to "put this tree last
> > > > in linux-next", and Linus to "pull this one last, right before
> > > > releasing -rc1". And getting the timing right for the script to run.
> > > > 
> > > 
> > > This makes git-blame less useful, and that's one of the reasons some
> > > maintainers don't like trivial cleanups.
> > 
> > Sounds like we need to propose an enhancement to "git-blame"...
> > 
> 
> No need. I use git blame all the time. Trivial patches don't bother me.
> 
> $ git blame foo.c
> 
> $ git show abc123
> 
> Sees that it's a trivial fix
> 
> $ git blame abc123~1 foo.c
> 
> $ git show def890

If you use vim, try vim-fugitive for this.  While editing a file,
:Gblame to get the blame info.  Hit o in the blame window to open a
commit, showing the commit message and patch, automatically jumping to
the patch line that changed the line you're looking at.  If that's not
the commit you want, hit P in the blame window to re-blame from the
parent of that commit.

- Josh Triplett
