Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08D4E2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 05:02:51 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 345F027C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 05:02:49 +0000 (UTC)
Date: Fri, 29 Jul 2016 22:02:42 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160730050241.xyxkhztigh7j5jbe@x>
References: <1469815046.2330.13.camel@HansenPartnership.com>
	<20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
	<11641.1469823238@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11641.1469823238@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Christoph Lameter <cl@linux.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Fri, Jul 29, 2016 at 09:13:58PM +0100, David Howells wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > I do this too, but I also work with the diff when moving hunks.  What I
> > do is:
> > 
> > git checkout <removal commit>
> > git show <removal commit> > tmp.diff
> > vi tmp.diff so it only has the hunks I want to remove
> > patch -p1 -R < ~/tmp.diff
> > git commit --amend -a
> > git checkout <add commit>
> > patch -p1 < ~/tmp.diff
> > git commit --amend -a
> > 
> > It's a bit cumbersome, but you can script it.  If there are better ways
> > to do it, I'm interested.
> 
> One of the reasons I use stgit is when it comes to excising changes into a
> separate patch, it makes it a lot easier:
> 
> 	 stg show >tmp.diff	# Export contents of current patch
> 	 emacs tmp.diff		# Edit so it only has the hunks I want to remove
> 	 stg pop		# Pop the patch I want to remove part of
> 	 stg new foo		# Create a new patch
> 	 stg fold tmp.diff	# ... and apply the patch created above
> 	 emacs ...		# Fix up any bits
> 	 stg refresh		# ... and make a commit out of it
> 	 stg push		# Push the patch I wanted to remove from

Typically, I'd do the same thing by using `git rebase -i` (or `git
series rebase -i`), marking the patch I want to split as 'e' for edit to
stop with that patch on top of the stack, resetting it, and using add -p
and committing bits incrementally into multiple commits.  (I can grab
bits of the commit message from ORIG_HEAD as needed.)

- Josh Triplett
