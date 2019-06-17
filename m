Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EA70CAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:31:26 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 523CA822
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 13:31:25 +0000 (UTC)
Date: Mon, 17 Jun 2019 10:31:15 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190617103115.670bf968@coco.lan>
In-Reply-To: <CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
	<20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org,
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

Em Mon, 17 Jun 2019 09:01:06 +0200
Geert Uytterhoeven <geert@linux-m68k.org> escreveu:

> Hi Mauro,
> 
> On Fri, Jun 14, 2019 at 7:48 PM Mauro Carvalho Chehab
> <mchehab+samsung@kernel.org> wrote:
> > Em Fri, 14 Jun 2019 09:16:34 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:  
> > > On Fri, 2019-06-14 at 13:04 -0300, Mauro Carvalho Chehab wrote:  
> > > > Em Fri, 14 Jun 2019 08:49:46 -0700
> > > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:  
> > > > > Actually, this leads me to the patch acceptance criteria: Is there
> > > > > value in requiring reviews?  We try to do this in SCSI (usually
> > > > > only one review), but if all reviewers add a
> > > > >
> > > > > Reviewed-by:
> > > > >
> > > > > tag, which is accumulated in the tree, your pull machinery can
> > > > > detect it on all commits in the pull and give you an automated
> > > > > decision about whether to accept the pull or not.  If you require
> > > > > two with one from a list of designated reviewers, it can do that as
> > > > > well (with a bit more complexity in the pull hook script).
> > > > >
> > > > > So here's the question: If I help you script this, would you be
> > > > > willing to accept pull requests in the media tree with this check
> > > > > in place?  I'm happy to do this because it's an interesting
> > > > > experiment to see if we can have automation offload work currently
> > > > > done by humans.  
> > > >
> > > > We could experiment something like that, provided that people will be
> > > > aware that it can be undone if something gets wrong.
> > > >
> > > > Yet, as we discussed at the Media Summit, we currently have an
> > > > issue: our infrastructure lack resources for such kind of
> > > > automation.  
> > >
> > > This one doesn't require an automation infrastructure: the script runs
> > > as a local pull hook on the machine you accept the pull request from
> > > (presumably your laptop?)  
> >
> > No, I run it on a 40-core HP server that it is below my desk. I turn it on
> > only when doing patch review (to save power, and because it produces a lot
> > of heat at the small room I work).
> >
> > Right now, I use a script with converts a pull request into a quilt tree.
> > Then, for each patch there, after a manual review, I run:  
> 
> I think this process can be improved/optimized:
> 
> >         - checkpatch --strict  
> 
> Should have been done by your (trusted) submaintainer that sent you
> the pull request.

Things are getting better with time, but I still catch issues - with
seems to indicate that people sometimes forget to run it.

On a recent case, I received a few pull requests lacking the SOB from
the patch author.

> 
> >         - make ARCH=i386  CF=-D__CHECK_ENDIAN__ CONFIG_DEBUG_SECTION_MISMATCH=y C=1 W=1 CHECK='compile_checks' M=drivers/staging/media
> >         - make ARCH=i386  CF=-D__CHECK_ENDIAN__ CONFIG_DEBUG_SECTION_MISMATCH=y C=1 W=1 CHECK='compile_checks' M=drivers/media
> >
> > where compile_checks is this script:
> >
> >         #!/bin/bash
> >         /devel/smatch/smatch -p=kernel $@
> >         # This is too pedantic and produce lots of false-positives
> >         #/devel/smatch/smatch --two-passes -- -p=kernel $@
> >         /devel/sparse/sparse $@  
> 
> Should have been done by the various bots, as soon as the public
> branch for the pull request was updated.

True, but we don't have any way, right now, to be able to automatically
parse the bot results in order only move a patch/pull request to a
"ready to merge" queue after getting the bot results.

Also, usually, the bots don't build with W=1, as, on most subsystems,
this cause lots of warnings[1].

[1] On media, we have zero warnings with W=1.

> > (Currently, I review on one screen, while the check script runs on a
> > terminal on a second screen)  
> 
> If all of the above are automated, or already done, you can focus on
> reviewing on the mailing list, i.e. before the patch is accepted by your
> submaintainer (the earlier an issue is found, the cheaper it is to fix
> it).  And you don't have to review everything, review can be done in
> parallel by multiple persons.

Easier said than done.

We agreed to some infra changes during the last Media Summit with
the ~20 people that were there, and we're sticking to the plan.

Trying to rush something before having everything setup due to a demand 
of a single developer is a terrible idea, as we need to do changes in a
way that it won't affect the community as a hole.

Today's count is that we have ~500 patches queued, Over the last two
weeks, we handled ~200 patches per week. We need keep up doing our work
as this is the busiest period over the last 12 months.

At the end of June, we upgraded from patchwork 1.0 to 2.1, and we're 
working towards improving the delegation features on patchwork, in order
to be able to have more people handling patches there, and to upgrade 
soon our web server, as it is using a distro that it is going out of 
support.

> 
> > If a patch at the queue fails, the server beeps, and I manually fix
> > or I complain.  
> 
> Should have been fixed before the pull request was sent.

Agreed, but we still get build breakages from time to time due to
bad pull requests.

> 
> > When the patch series is accepted, for every applied patch, I run
> > a script that updates the patch status at patchwork, plus the
> > status of the git pull request.  
> 
> There's some WIP automation for this on patchwork.kernel.org, that
> can update status based on appearance in linux-next.

We do that already since 2013 using our custom scripting.

> 
> > When I reject a patch, I update patchwork accordingly.
> >  
> > > so  the workflow is you receive a pull
> > > request, pull it into your tree and if the pull hook finds a bogus
> > > commit it will reject the pull and tell you why; if the script accepts
> > > the pull then you do whatever additional checks you like, then push it
> > > to kernel.org when you're satisfied it didn't break anything.  
> >
> > A script that would work for me should do a similar job:
> >
> > - apply patch per patch, test with the above programs and check for
> >   results. If any errors/warnings are returned, mailbomb the involved
> >   parties for them to rework the pull request, and update the status
> >   of the git request at patchwork.
> >
> > - If the pull request succeeds, update the patches at patchwork, using
> >   the Patchwork-ID field for the git pull request and the patch diff
> >   md5sum for the applied patches (and for any past versions of them,
> >   if the checksum is the same).
> >
> > Alternatively (and that's what I actually prefer) is that, when someone
> > sends a pull request, a CI bot would do the above checks. doing the
> > mailbomb part and marking the pull request as rejected at patchwork,
> > delegating to me otherwise.
> >
> > This way, I would have to deal only with already verified pull
> > requests.  
> 
> So I think most of the automation is already there?
> The interfacing with patchwork seems to be the hardest part.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 



Thanks,
Mauro
