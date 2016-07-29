Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D35491A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 20:14:03 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 108F4149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 20:14:01 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1469815046.2330.13.camel@HansenPartnership.com>
References: <1469815046.2330.13.camel@HansenPartnership.com>
	<20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11640.1469823238.1@warthog.procyon.org.uk>
Date: Fri, 29 Jul 2016 21:13:58 +0100
Message-ID: <11641.1469823238@warthog.procyon.org.uk>
Cc: Christoph Lameter <cl@linux.com>,
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

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> I do this too, but I also work with the diff when moving hunks.  What I
> do is:
> 
> git checkout <removal commit>
> git show <removal commit> > tmp.diff
> vi tmp.diff so it only has the hunks I want to remove
> patch -p1 -R < ~/tmp.diff
> git commit --amend -a
> git checkout <add commit>
> patch -p1 < ~/tmp.diff
> git commit --amend -a
> 
> It's a bit cumbersome, but you can script it.  If there are better ways
> to do it, I'm interested.

One of the reasons I use stgit is when it comes to excising changes into a
separate patch, it makes it a lot easier:

	 stg show >tmp.diff	# Export contents of current patch
	 emacs tmp.diff		# Edit so it only has the hunks I want to remove
	 stg pop		# Pop the patch I want to remove part of
	 stg new foo		# Create a new patch
	 stg fold tmp.diff	# ... and apply the patch created above
	 emacs ...		# Fix up any bits
	 stg refresh		# ... and make a commit out of it
	 stg push		# Push the patch I wanted to remove from

The push at the end then attempts to modify the patch you previously popped so
as to effect the excision.  If it can't quite manage it, you'll get <<<<<<<
and suchlike markers indicating the bit it had difficulty with.

I can then very easily switch the order of the patches:

	stg float foo

to put the excised patch last.

I can also:

	 stg pop		# Pop the patch I want to remove part of
	 stg new foo		# Create a new patch
	 emacs ...		# Make the changes I want directly
	 stg refresh		# ... and make a commit out of it
	 stg push		# Reapply the previously popped patch.

As before, the last line will attempt to modify the previously popped patch,
and if it can't it will insert merge failure markers.

David
