Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E507892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 Nov 2018 13:03:52 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A6CEF4DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 Nov 2018 13:03:51 +0000 (UTC)
Date: Sun, 18 Nov 2018 11:03:24 -0200
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20181118110324.543edbd8@coco.lan>
In-Reply-To: <CAPcyv4hWK+to6vOSfSdeVMDzUutYwg9=XqshSDzaCf0c-u8jLA@mail.gmail.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<CABVU7+twSz3OZx7PTO+bS-wfLfTTjZVhRAnhgtcs6KWwntattw@mail.gmail.com>
	<CAPcyv4hWK+to6vOSfSdeVMDzUutYwg9=XqshSDzaCf0c-u8jLA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: zwisler@kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>
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

Em Fri, 16 Nov 2018 15:44:45 -0800
Dan Williams <dan.j.williams@intel.com> escreveu:

> On Fri, Nov 16, 2018 at 12:37 PM Rodrigo Vivi <rodrigo.vivi@gmail.com> wrote:
> >
> > On Thu, Nov 15, 2018 at 8:38 AM Leon Romanovsky <leon@kernel.org> wrote:  
> > >
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
> > I'd like to +1 on this concern here. Besides leaving all the other
> > people demotivated.  
> 
> Yes, that's a valid concern, I overlooked that unfortunate interpretation.
> 
> >
> > A small group of trusted reviewers doesn't scale. People will get overloaded.
> > Or you won't be able to enforce that all patches need to get Reviews.
> >
> > Reviews should be coming from everywhere and commiters and maintainers
> > deciding on what to trust or re-review.
> >
> > Also the list is hard to maintain and keep the lists updated.  
> 
> I understand the concern, and as I saw feedback come in I realized
> there were more people that I would add to that reviewer list for
> libnvdimm.
> 
> Stepping back the end goal is to have an initial list of recommended
> people to follow up with directly to seek a second opinion, or help in
> cases where a contributor otherwise needs some direction / engagement
> that they are not readily receiving from the maintainer. Typically
> someone just lurks on the mailing list for a few weeks to get a feel
> for who the usual suspects are in the subsystem, but for a new
> contributor identifying those individuals may be difficult.
> 
> One of the contributing factors of lack of response to a patchset is
> that they are sent with the implicit expectation that the maintainer
> will get to eventually, and typically other people feel content to sit
> back and watch. If instead a contributor sent a direct mail to a
> "trusted reviewer" saying, "Hey, Alice, Bob seems busy can you help me
> out?" that seems more likely to rope in additional review help.

Hmm.. Perhaps the subsystem profile should point to IRC channels if any?
Several subsystems use them in order to provide newbies some directions
and to discuss other development issues.

Thanks,
Mauro
