Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8BB6990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:56:42 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E988263
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:56:41 +0000 (UTC)
Date: Fri, 29 Jul 2016 07:56:35 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20160729145635.GA12137@x>
References: <20160729143459.GA11814@x> <20160729131151.GF4340@x>
	<20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<2984.1469803044@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2984.1469803044@warthog.procyon.org.uk>
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

On Fri, Jul 29, 2016 at 03:37:24PM +0100, David Howells wrote:
> Josh Triplett <josh@joshtriplett.org> wrote:
> > You could use the two together, though, if you'd like to track the
> > history you've changed with stgit.  You'd just need to make sure you'd
> > applied all the patches before doing a git series commit.
> 
> Would it be possible to make stgit run on top of git series?

Possibly; it would depend on what you mean by "run on top of".  I'm open
to suggestion, though.

> Or extend git series to also do the push/pop thing?

I'll have to give that workflow some thought.  The concept of a "patch
that isn't applied" seems somewhat orthogonal to git-series.
