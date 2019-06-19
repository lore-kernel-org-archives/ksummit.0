Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFE77C21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 08:33:37 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 716107DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 08:33:37 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id d17so18465423oth.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 01:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
	<20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
In-Reply-To: <20190619075351.GP28859@kadam>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Jun 2019 10:33:23 +0200
Message-ID: <CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 19, 2019 at 9:56 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab wrote:
> > Also, usually, the bots don't build with W=1, as, on most subsystems,
> > this cause lots of warnings[1].
> >
> > [1] On media, we have zero warnings with W=1.
> >
>
> We could ask the kbuild devs if they would consider making W=1 a per
> tree option.

No need to ask, just add a Kconfig which sets additional cflags for
you for your tree and your good. The usual combinatorial testing will
discover the new warnings. That's at least what we do for i915.ko
(including -Werror). Gets the job done.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
