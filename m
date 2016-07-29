Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6990956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:37:57 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B186164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:37:56 +0000 (UTC)
Date: Fri, 29 Jul 2016 07:37:49 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20160729143749.GB11814@x>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
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

On Fri, Jul 29, 2016 at 09:21:02AM -0500, Christoph Lameter wrote:
> On Fri, 29 Jul 2016, David Howells wrote:
> 
> > Josh Triplett <josh@joshtriplett.org> wrote:
> >
> > > Note that git-series doesn't provide a quilt-style push/pop workflow,
> > > with applied and unapplied patches; it just looks at HEAD.
> >
> > Ah...  In that case it's probably not a sufficient substitute for how I use
> > stgit.
> 
> Did not know that there was stgit. Still stuck on quilt since
> I like editing the files directly (its often easier to edit the diffs if
> you want to rename things etc).

git series format, edit patches, git reset --hard $(git series base),
git am? :)

More seriously, though: I don't expect git-series to address all
possible workflows for developing a patch series.  It's intentionally a
bit opinionated about some things.  I designed it for a family of
workflows that I regularly encountered and that I regularly saw other
people encounter.
