Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C22BB18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:45:54 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2B7C11C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:45:53 +0000 (UTC)
Date: Tue, 25 Aug 2015 18:45:49 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20150825164549.GP8051@wotan.suse.de>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1508242220570.15006@nanos>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Emily Ratliff <eratliff@linuxfoundation.org>, Thomas Graf <tgraf@suug.ch>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 10:46:33PM +0200, Thomas Gleixner wrote:
> While we certainly want to add mechanisms which prevent flaws to be
> exploited we surely want to do something about educating people how to
> avoid the flaws in the first place.

<-- snip -->

> I totally agree that we cannot prevent all flaws, but we certainly can
> do better in reducing the quantity. And that means that we need to
> educate people. And that education involve documentation and clever usage of
> tools.

What folks have been discussing mostly after this post are reactive security
solutions, that's fine but I think we need to also be a bit more proactive
about what we let folks design in terms of *new* userspace APIs. For instance
although it would not solve all userspace facing issues, I certainly think
things like struct nla_policy helps move away from loose userspace APIs.
The next evolutionary step was generic netlink but that may be too tied down
to networking.

  Luis
