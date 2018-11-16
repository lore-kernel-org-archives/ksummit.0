Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD22F8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 11:33:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 503A0771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 11:33:24 +0000 (UTC)
Date: Fri, 16 Nov 2018 03:33:17 -0800
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20181116033258.23992cde@silica.lan>
In-Reply-To: <20181115193520.GA24359@mtr-leonro.mtl.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<20181115110919.46978343@silica.lan>
	<20181115193520.GA24359@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	vishal.l.verma@intel.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	zwisler@kernel.org
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

Em Thu, 15 Nov 2018 21:35:20 +0200
Leon Romanovsky <leon@kernel.org> escreveu:

> On Thu, Nov 15, 2018 at 11:09:34AM -0800, Mauro Carvalho Chehab wrote:
> > Em Thu, 15 Nov 2018 18:20:08 +0200
> > Leon Romanovsky <leon@kernel.org> escreveu:
> >  
> > > On Thu, Nov 15, 2018 at 06:10:36AM -0800, Mauro Carvalho Chehab wrote:  
> > > > Em Thu, 15 Nov 2018 09:03:11 +0100
> > > > Geert Uytterhoeven <geert@linux-m68k.org> escreveu:
> > > >  
> > > > > Hi Dan,
> > > > >
> > > > > On Thu, Nov 15, 2018 at 6:06 AM Dan Williams <dan.j.williams@intel.com> wrote:  
> > > > > > Document the basic policies of the libnvdimm subsystem and provide a
> > > > > > first example of a Subsystem Profile for others to duplicate and edit.
> > > > > >
> > > > > > Cc: Ross Zwisler <zwisler@kernel.org>
> > > > > > Cc: Vishal Verma <vishal.l.verma@intel.com>
> > > > > > Cc: Dave Jiang <dave.jiang@intel.com>
> > > > > > Signed-off-by: Dan Williams <dan.j.williams@intel.com>  
> > > > >
> > > > > Thanks for your patch!
> > > > >  
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/nvdimm/subsystem-profile.rst  
> > > > >  
> > > > > > +Trusted Reviewers
> > > > > > +-----------------
> > > > > > +Johannes Thumshirn
> > > > > > +Toshi Kani
> > > > > > +Jeff Moyer
> > > > > > +Robert Elliott  
> > > > >
> > > > > Don't you want to add email addresses?
> > > > > Only the first one is listed in MAINTAINERS.  
> > > >
> > > > IMO, it makes sense to have their e-mails here, in a way that it could
> > > > easily be parsed by get_maintainers.pl.  
> > >
> > > I personally think that list of "trusted reviewers" makes more harm than
> > > good. It creates unneeded negative feelings to those who wanted to be in
> > > this list, but for any reason they don't. Those reviewers will feel
> > > "untrusted".  
> >
> > Yeah, perhaps something like "most active reviewers" would sound
> > better.  
> 
> I would recommend to remove this section at all.
> New maintainers won't come out of blue, but will be come
> from existing community and such individuals for sure will see
> and judge by themselves to whom they trust and to whom not.

I see your point, but, on the other hand, having a list with the ones
that are actively doing reviews helps newcomers.

I would keep, but perhaps it makes sense to add some notice about a
criteria about how to be included at the "active reviewers" list,
(the criteria probably belongs to the subsystem profile), e. g. 
something like:

	"Active reviewers are developers that contribute with more than 25
	 patches per year and do more than 50 reviews per year on 
	 on patches written for drivers that they're not usual contributors" 
Cheers,
Mauro
