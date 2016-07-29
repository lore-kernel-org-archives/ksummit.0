Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82E1383D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:37:26 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 174EE164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 14:37:26 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20160729143459.GA11814@x>
References: <20160729143459.GA11814@x> <20160729131151.GF4340@x>
	<20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
To: Josh Triplett <josh@joshtriplett.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2983.1469803044.1@warthog.procyon.org.uk>
Date: Fri, 29 Jul 2016 15:37:24 +0100
Message-ID: <2984.1469803044@warthog.procyon.org.uk>
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

> You could use the two together, though, if you'd like to track the
> history you've changed with stgit.  You'd just need to make sure you'd
> applied all the patches before doing a git series commit.

Would it be possible to make stgit run on top of git series?  Or extend git
series to also do the push/pop thing?

David
