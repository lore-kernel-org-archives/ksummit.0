Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2303488
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 13:05:02 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0074.hostedemail.com
	[216.40.44.74])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 6C8101DF39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 13:05:01 +0000 (UTC)
Date: Wed, 22 Jul 2015 09:04:57 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20150722090457.45562610@gandalf.local.home>
In-Reply-To: <20150721185436.20b97c47@notabene.brown>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
	<55ADA7C1.3050809@huawei.com>
	<20150721185436.20b97c47@notabene.brown>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, 21 Jul 2015 18:54:36 +1000
NeilBrown <neilb@suse.com> wrote:

> On Tue, 21 Jul 2015 10:00:33 +0800 Zefan Li <lizefan@huawei.com> wrote:
> 
> > > Then it should just be case of of asking Stephen to "put this tree last
> > > in linux-next", and Linus to "pull this one last, right before
> > > releasing -rc1". And getting the timing right for the script to run.
> > > 
> > 
> > This makes git-blame less useful, and that's one of the reasons some
> > maintainers don't like trivial cleanups.
> 
> Sounds like we need to propose an enhancement to "git-blame"...
> 

No need. I use git blame all the time. Trivial patches don't bother me.

$ git blame foo.c

$ git show abc123

Sees that it's a trivial fix

$ git blame abc123~1 foo.c

$ git show def890

More changes I don't care about

$ git blame def890~1 foo.c

$ git show cde456

Ah! that's the change I was looking for!

-- Steve
