Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0FE892B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:21:06 +0000 (UTC)
Received: from resqmta-ch2-06v.sys.comcast.net
	(resqmta-ch2-06v.sys.comcast.net [69.252.207.38])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3804210
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:21:04 +0000 (UTC)
Date: Fri, 29 Jul 2016 09:21:02 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <1596.1469801212@warthog.procyon.org.uk>
Message-ID: <alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 29 Jul 2016, David Howells wrote:

> Josh Triplett <josh@joshtriplett.org> wrote:
>
> > Note that git-series doesn't provide a quilt-style push/pop workflow,
> > with applied and unapplied patches; it just looks at HEAD.
>
> Ah...  In that case it's probably not a sufficient substitute for how I use
> stgit.

Did not know that there was stgit. Still stuck on quilt since
I like editing the files directly (its often easier to edit the diffs if
you want to rename things etc).

Interesting projects.
