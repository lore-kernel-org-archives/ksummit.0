Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82006CC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 12:28:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 059F9766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 12:28:21 +0000 (UTC)
Date: Mon, 10 Sep 2018 09:28:14 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180910092814.085dcebd@coco.lan>
In-Reply-To: <CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
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

Em Thu, 6 Sep 2018 16:24:03 -0700
Kees Cook <keescook@chromium.org> escreveu:

> On Thu, Sep 6, 2018 at 4:18 PM, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > Hi Kees,
> >
> > On Thu, 6 Sep 2018 11:24:11 -0700 Kees Cook <keescook@chromium.org> wrote:  
> >>
> >> If there was an agreement by all maintainers that deprecated
> >> functions/patterns should not be added, and we documented the
> >> deprecation somewhere like Documentation/process/deprecated.rst, then
> >> we could make the declaration that if such functions got added (it's
> >> easy to mechanically check for them), it would be the responsibility
> >> of the author and maintainer chain to see that it got fixed before the
> >> release is cut. We already have this for things like "breaks the x86
> >> allmodconfig build" or similar. The checking would be manual, and the
> >> enforcement would be by agreement, but it'd be better than the kind of
> >> "please don't do this" hand-waving we've had in the past.  
> >
> > I could do this in linux-next, of course, the same way I check for
> > missing signed-off-bys.  All I would need is the list of deprecated
> > things.  
> 
> Hopefully we can all agree on deprecating strcpy() and strncpy() in
> favor of strscpy()?

I suspect that that's the way to go for most use cases.

In the case of media, I double-checked: 100% of the usages can be
replaced by strscpy() [1]. I just sent a patchset for review with
such changes.

[1] doing a:
	
$ git grep -E "str.?cpy" drivers/media drivers/staging/media/ |grep -v strscpy

after this patchset, we have one case of strncpy_from_user(), 
at av7110:

		if (strncpy_from_user(textbuf, dc->data, 240) < 0) {
			ret = -EFAULT;
			break;
		}
		textbuf[239] = 0;

The above code seems OK, so no real need to change.

Yet, there are 104 occurrences of strncpy_from_user(). If they
all do something similar, it could make sense to have a 
strscpy_from_user() function. If you're willing to do so, 
feel free to also convert av7110 to it.

Thanks,
Mauro
