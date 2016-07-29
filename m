Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF5AB91A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:06:54 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82A991E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:06:54 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20160729131151.GF4340@x>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
To: Josh Triplett <josh@joshtriplett.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1595.1469801212.1@warthog.procyon.org.uk>
Date: Fri, 29 Jul 2016 15:06:52 +0100
Message-ID: <1596.1469801212@warthog.procyon.org.uk>
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

Josh Triplett <josh@joshtriplett.org> wrote:

> Note that git-series doesn't provide a quilt-style push/pop workflow,
> with applied and unapplied patches; it just looks at HEAD.

Ah...  In that case it's probably not a sufficient substitute for how I use
stgit.

David
