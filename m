Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 38DA3ECE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:55:07 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D953FA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:55:06 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Julia Lawall <julia.lawall@lip6.fr>
In-Reply-To: <alpine.DEB.2.20.1809071135090.3036@hadrien>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
	<alpine.DEB.2.20.1809071135090.3036@hadrien>
Date: Fri, 07 Sep 2018 12:54:37 +0300
Message-ID: <87r2i5y6n6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 07 Sep 2018, Julia Lawall <julia.lawall@lip6.fr> wrote:
> I came up with the following Coccinelle semantic patch.  The advantage is
> that it can also give a hint as to what should be done.  The intent is
> that it should be easily extensible.

The only real downside that I can see is that it centralizes the
deprecation information in the semantic patch instead of the functions
themselves.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
