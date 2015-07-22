Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85D83414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:42:03 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3D0C312D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:42:03 +0000 (UTC)
Message-ID: <1437576121.2171.17.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Wed, 22 Jul 2015 07:42:01 -0700
In-Reply-To: <20150722101039.2ce09fd7@gandalf.local.home>
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
	<1437390546.22996.27.camel@infradead.org> <55ADA7C1.3050809@huawei.com>
	<20150721185436.20b97c47@notabene.brown>
	<20150722090457.45562610@gandalf.local.home>
	<CAErSpo4HABmT=RvP5SMAykMCvd-3sH0rFhFbqsnVcbMOWxixSg@mail.gmail.com>
	<20150722101039.2ce09fd7@gandalf.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
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

On Wed, 2015-07-22 at 10:10 -0400, Steven Rostedt wrote:
> On Wed, 22 Jul 2015 08:57:34 -0500
> Bjorn Helgaas <bhelgaas@google.com> wrote:
> 
> 
> > > Ah! that's the change I was looking for!
> > 
> > I don't know if you'd find this more work or less, but I use "git log
> > -p foo.c" for this instead of git blame.  Unless there's been a rename
> > or a move between files, one invocation is usually enough.
> 
> I've used "git log -p foo.c" before, but I find that some of my files I
> work with, that is way too much info. Especially, when the commit I'm
> looking for happens to be years old. I use the log -p for when I know
> the change has been recent.

I think what we need is a git log --line <name> <path> which would track
the commits that touched a given line in <path> (hopefully even across
renames).  It shouldn't be too hard to come up with that.

James
