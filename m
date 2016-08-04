Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92DBE98B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 23:46:30 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 058D319E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 23:46:29 +0000 (UTC)
Date: Thu, 4 Aug 2016 13:46:23 -1000
From: Josh Triplett <josh@joshtriplett.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Message-ID: <20160804234622.ybcc3vx7qqc7duid@x>
References: <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk> <20160729131151.GF4340@x>
	<C3AB051F-EDE5-4CF3-9DFB-4AA96B974982@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C3AB051F-EDE5-4CF3-9DFB-4AA96B974982@arm.com>
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

On Fri, Aug 05, 2016 at 12:46:47AM +0200, Catalin Marinas wrote:
> On 29 Jul 2016, at 15:12, Josh Triplett <josh@joshtriplett.org> wrote:
> > On Fri, Jul 29, 2016 at 01:20:12PM +0100, David Howells wrote:
> >> Josh Triplett <josh@joshtriplett.org> wrote:
> >>> I'd like to announce a project I've been working on for a while.  I sent
> >>> this announcement to LKML, but since many people don't subscribe to LKML
> >>> directly, and since ksummit-discuss has had several discussions
> >>> specifically about patch workflow and development processes, I thought
> >>> I'd send the announcement here as well, in case anyone found it useful
> >>> for their workflow.
> >> 
> >> Can this be used as a direct substitute for stgit for maintaining a patch
> >> series?
> > 
> > Yes, that's exactly what I designed it for.  git-series has the added
> > advantage of tracking the versions of the patch series across rewrites.
> > stgit just directly rewrites history, like rebase -i does; as far as I
> > know, it doesn't remember the old history.  You'd have to go to the
> > reflog for that.  
> 
> I haven't looked at git-series yet (I actually have a git "series" alias 
> to list the current commits against a parent/tracking branch) 
> but StGit does remember the series history. It stores all the past states 
> of a series in a <branch>.stgit branch and you can inspect the 
> changes, get unlimited undo/redo, even show a diff of diffs for 
> a given patch. 

Interesting!  I didn't find that when I last looked at stgit.  Does the
format used on that branch have documentation anywhere?  I didn't find
any in the stgit source or manpages.

- Josh Triplett
