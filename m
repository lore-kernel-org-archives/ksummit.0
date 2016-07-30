Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B30B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 08:43:18 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 30 Jul 2016 10:43:03 +0200
Message-ID: <3370662.sTu8BzItZs@wuerfel>
In-Reply-To: <20160730050241.xyxkhztigh7j5jbe@x>
References: <1469815046.2330.13.camel@HansenPartnership.com>
	<11641.1469823238@warthog.procyon.org.uk>
	<20160730050241.xyxkhztigh7j5jbe@x>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Christoph Lameter <cl@linux.com>
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

On Friday, July 29, 2016 10:02:42 PM CEST Josh Triplett wrote:
> On Fri, Jul 29, 2016 at 09:13:58PM +0100, David Howells wrote:
> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > 
> > > I do this too, but I also work with the diff when moving hunks.  What I
> > > do is:
> > > 
> > > git checkout <removal commit>
> > > git show <removal commit> > tmp.diff
> > > vi tmp.diff so it only has the hunks I want to remove
> > > patch -p1 -R < ~/tmp.diff
> > > git commit --amend -a
> > > git checkout <add commit>
> > > patch -p1 < ~/tmp.diff
> > > git commit --amend -a
> > > 
> > > It's a bit cumbersome, but you can script it.  If there are better ways
> > > to do it, I'm interested.
> > 
> > One of the reasons I use stgit is when it comes to excising changes into a
> > separate patch, it makes it a lot easier:
> > 
> >        stg show >tmp.diff     # Export contents of current patch
> >        emacs tmp.diff         # Edit so it only has the hunks I want to remove
> >        stg pop                # Pop the patch I want to remove part of
> >        stg new foo            # Create a new patch
> >        stg fold tmp.diff      # ... and apply the patch created above
> >        emacs ...              # Fix up any bits
> >        stg refresh            # ... and make a commit out of it
> >        stg push               # Push the patch I wanted to remove from
> 
> Typically, I'd do the same thing by using `git rebase -i` (or `git
> series rebase -i`), marking the patch I want to split as 'e' for edit to
> stop with that patch on top of the stack, resetting it, and using add -p
> and committing bits incrementally into multiple commits.  (I can grab
> bits of the commit message from ORIG_HEAD as needed.)

I tend to use a variation of this where I save the HEAD of the existing
branch in a temporary branch, then rebase as you do to undo parts of a patch
and finally merge+rebase the original branch on top of it to get the
remaining pieces as patches on top.

Also, saving the previous HEAD means you can easily do 'git diff' of the
old and new branch to see if the resulting commit is identical or you
forgot something.

	Arnd
