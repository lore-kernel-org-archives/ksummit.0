Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D08BED9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:06:06 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 12D16A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:06:05 +0000 (UTC)
Date: Fri, 7 Sep 2018 12:05:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <87r2i5y6n6.fsf@intel.com>
Message-ID: <alpine.DEB.2.20.1809071203570.3036@hadrien>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
	<alpine.DEB.2.20.1809071135090.3036@hadrien>
	<87r2i5y6n6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 7 Sep 2018, Jani Nikula wrote:

> On Fri, 07 Sep 2018, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > I came up with the following Coccinelle semantic patch.  The advantage is
> > that it can also give a hint as to what should be done.  The intent is
> > that it should be easily extensible.
>
> The only real downside that I can see is that it centralizes the
> deprecation information in the semantic patch instead of the functions
> themselves.

It's possible to put comments in the code near the definition.  There are
a number of occurrences of deprecated already.  People who are just
copying code from something else may not actually look at the definition
of all of the functions they are copying, so there should be some benefit
to having the information somehow attached to uses.

julia
