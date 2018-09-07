Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 761CDF01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:25:32 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0B75F786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 10:25:31 +0000 (UTC)
Date: Fri, 7 Sep 2018 12:25:19 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180907102519.GX13888@piout.net>
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
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r2i5y6n6.fsf@intel.com>
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

On 07/09/2018 12:54:37+0300, Jani Nikula wrote:
> On Fri, 07 Sep 2018, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > I came up with the following Coccinelle semantic patch.  The advantage is
> > that it can also give a hint as to what should be done.  The intent is
> > that it should be easily extensible.
> 
> The only real downside that I can see is that it centralizes the
> deprecation information in the semantic patch instead of the functions
> themselves.
> 

Which is not bad because how do you expect maintainers to learn about
the deprecation?
I don't think anyone will go and read the strcpy's code or
documentation.

The same holds true for the introduction of new helpers. There is often
a treewide commit adding its usage that doesn't get send to all the
maintainers so there is zero chance to learn about them. For example the
recent:

0ed2dd03b94b treewide: Use struct_size() for devm_kmalloc() and friends
b4b06db115bb treewide: Use struct_size() for vmalloc()-family
acafe7e30216 treewide: Use struct_size() for kmalloc()-family

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
