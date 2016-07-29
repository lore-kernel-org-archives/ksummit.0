Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4106B91A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:11:59 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AEEFB1C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 13:11:58 +0000 (UTC)
Date: Fri, 29 Jul 2016 06:11:51 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160729131151.GF4340@x>
References: <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30809.1469794812@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 29, 2016 at 01:20:12PM +0100, David Howells wrote:
> Josh Triplett <josh@joshtriplett.org> wrote:
> > I'd like to announce a project I've been working on for a while.  I sent
> > this announcement to LKML, but since many people don't subscribe to LKML
> > directly, and since ksummit-discuss has had several discussions
> > specifically about patch workflow and development processes, I thought
> > I'd send the announcement here as well, in case anyone found it useful
> > for their workflow.
> 
> Can this be used as a direct substitute for stgit for maintaining a patch
> series?

Yes, that's exactly what I designed it for.  git-series has the added
advantage of tracking the versions of the patch series across rewrites.
stgit just directly rewrites history, like rebase -i does; as far as I
know, it doesn't remember the old history.  You'd have to go to the
reflog for that.  git-series lets you rewrite history (using rebase -i
or any other tool you like), but actually tracks the history of your
patch series across rewrites, complete with commit messages.

Note that git-series doesn't provide a quilt-style push/pop workflow,
with applied and unapplied patches; it just looks at HEAD.
