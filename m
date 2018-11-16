Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC717491
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 20:36:54 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ABBDD76F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 20:36:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f1-v6so1721897wmg.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 12:36:53 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
In-Reply-To: <20181115162008.GO3759@mtr-leonro.mtl.com>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Fri, 16 Nov 2018 12:36:40 -0800
Message-ID: <CABVU7+twSz3OZx7PTO+bS-wfLfTTjZVhRAnhgtcs6KWwntattw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: dave.jiang@intel.com, ksummit-discuss@lists.linuxfoundation.org,
	linux-nvdimm@lists.01.org, vishal.l.verma@intel.com,
	linux-kernel@vger.kernel.org, zwisler@kernel.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [Ksummit-discuss] [RFC PATCH 3/3] libnvdimm,
 MAINTAINERS: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 15, 2018 at 8:38 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> On Thu, Nov 15, 2018 at 06:10:36AM -0800, Mauro Carvalho Chehab wrote:
> > Em Thu, 15 Nov 2018 09:03:11 +0100
> > Geert Uytterhoeven <geert@linux-m68k.org> escreveu:
> >
> > > Hi Dan,
> > >
> > > On Thu, Nov 15, 2018 at 6:06 AM Dan Williams <dan.j.williams@intel.com> wrote:
> > > > Document the basic policies of the libnvdimm subsystem and provide a
> > > > first example of a Subsystem Profile for others to duplicate and edit.
> > > >
> > > > Cc: Ross Zwisler <zwisler@kernel.org>
> > > > Cc: Vishal Verma <vishal.l.verma@intel.com>
> > > > Cc: Dave Jiang <dave.jiang@intel.com>
> > > > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > >
> > > Thanks for your patch!
> > >
> > > > --- /dev/null
> > > > +++ b/Documentation/nvdimm/subsystem-profile.rst
> > >
> > > > +Trusted Reviewers
> > > > +-----------------
> > > > +Johannes Thumshirn
> > > > +Toshi Kani
> > > > +Jeff Moyer
> > > > +Robert Elliott
> > >
> > > Don't you want to add email addresses?
> > > Only the first one is listed in MAINTAINERS.
> >
> > IMO, it makes sense to have their e-mails here, in a way that it could
> > easily be parsed by get_maintainers.pl.
>
> I personally think that list of "trusted reviewers" makes more harm than
> good. It creates unneeded negative feelings to those who wanted to be in
> this list, but for any reason they don't. Those reviewers will feel
> "untrusted".

I'd like to +1 on this concern here. Besides leaving all the other
people demotivated.

A small group of trusted reviewers doesn't scale. People will get overloaded.
Or you won't be able to enforce that all patches need to get Reviews.

Reviews should be coming from everywhere and commiters and maintainers
deciding on what to trust or re-review.

Also the list is hard to maintain and keep the lists updated.

>
> Thanks
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



-- 
Rodrigo Vivi
Blog: http://blog.vivi.eng.br
