Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 83318CD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 12:51:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FE28782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 12:51:37 +0000 (UTC)
Date: Mon, 10 Sep 2018 09:51:23 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180910095123.4d83fd9c@coco.lan>
In-Reply-To: <87r2i5y6n6.fsf@intel.com>
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
Content-Transfer-Encoding: 7bit
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

Em Fri, 07 Sep 2018 12:54:37 +0300
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Fri, 07 Sep 2018, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > I came up with the following Coccinelle semantic patch.  The advantage is
> > that it can also give a hint as to what should be done.  The intent is
> > that it should be easily extensible.  
> 
> The only real downside that I can see is that it centralizes the
> deprecation information in the semantic patch instead of the functions
> themselves.

While both works, the __deprecated markup at the header looks
better for me, as it makes easier to check inside a header file
what's deprecated. Also, it helps avoiding conflicts.

Anyway, if we either use Coccinelle or __deprecated, I doubt that
most people will remember to add a:
	-D__deprecated=__attribute__((deprecated))
or to call a coccinelle script to do such checks, even if properly
documented.

IMHO, whatever solution, the best would be to have a makefile
target equivalent to allmodconfig and allyesconfig that would 
add such extra maintainership logic.



Thanks,
Mauro
