Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37010910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:57:29 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 92EB7181
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 17:57:28 +0000 (UTC)
Message-ID: <1469815046.2330.13.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Bird, Timothy" <Tim.Bird@am.sony.com>, Christoph Lameter
	<cl@linux.com>,  David Howells <dhowells@redhat.com>
Date: Fri, 29 Jul 2016 10:57:26 -0700
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2016-07-29 at 17:52 +0000, Bird, Timothy wrote:
> 
> > -----Original Message-----
> > From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksu
> > mmit-
> > discuss-bounces@lists.linuxfoundation.org] On Behalf Of Christoph
> > Lameter
> > Sent: Friday, July 29, 2016 7:21 AM
> > To: David Howells <dhowells@redhat.com>
> > Cc: ksummit-discuss@lists.linuxfoundation.org
> > Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes
> > to a patch
> > series over time
> > 
> > On Fri, 29 Jul 2016, David Howells wrote:
> > 
> > > Josh Triplett <josh@joshtriplett.org> wrote:
> > > 
> > > > Note that git-series doesn't provide a quilt-style push/pop
> > > > workflow,
> > > > with applied and unapplied patches; it just looks at HEAD.
> > > 
> > > Ah...  In that case it's probably not a sufficient substitute for
> > > how I use
> > > stgit.
> > 
> > Did not know that there was stgit. Still stuck on quilt since
> > I like editing the files directly (its often easier to edit the
> > diffs if
> > you want to rename things etc).
> > 
> > Interesting projects.
> 
> Indeed.  For many years I used a quilt-based workflow.  Recently
> I've been trying to convert to a pure git-based workflow, but for
> some reason git rebase -I always seems to give me problems.  It
> always takes me much longer to just move some hunk from one
> commit to another than it did in quilt using the patches and vi.

I do this too, but I also work with the diff when moving hunks.  What I
do is:

git checkout <removal commit>
git show <removal commit> > tmp.diff
vi tmp.diff so it only has the hunks I want to remove
patch -p1 -R < ~/tmp.diff
git commit --amend -a
git checkout <add commit>
patch -p1 < ~/tmp.diff
git commit --amend -a

It's a bit cumbersome, but you can script it.  If there are better ways
to do it, I'm interested.

James
