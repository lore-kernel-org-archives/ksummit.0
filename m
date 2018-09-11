Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 900FCEDF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 09:34:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C7C22102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 09:34:51 +0000 (UTC)
Date: Tue, 11 Sep 2018 06:34:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180911063436.2f6d696e@coco.lan>
In-Reply-To: <87ftyg315d.fsf@intel.com>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<s5h36ulrdps.wl-tiwai@suse.de> <87zhwtybr3.fsf@intel.com>
	<alpine.DEB.2.20.1809071135090.3036@hadrien>
	<87r2i5y6n6.fsf@intel.com> <20180910095123.4d83fd9c@coco.lan>
	<87ftyg315d.fsf@intel.com>
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

Em Tue, 11 Sep 2018 11:10:22 +0300
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Mon, 10 Sep 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> > IMHO, whatever solution, the best would be to have a makefile
> > target equivalent to allmodconfig and allyesconfig that would 
> > add such extra maintainership logic.  
> 
> There's 'make W=n' for enabling extra gcc checks. Seems like a good fit.

I wouldn't mess with W. On media, we work to have zero warnings with W=1.
However, W=2 (and W=3) is almost unusable: lots of complains about 
signed/unsigned mix and other things that usually are ok. With gcc 8,
the amount of warnings with W=2/W=3 at core kAPI functions makes them
useless.

People will very likely ignore or miss deprecated stuff if we
place it as W=4.

Perhaps we could add a D=1, in order to point for deprecated stuff.

Regards,
Mauro
