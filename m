Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B366D06
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 11:55:58 +0000 (UTC)
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B0F2476D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 11:55:57 +0000 (UTC)
Received: by mail-vk0-f67.google.com with SMTP id j14-v6so226446vke.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 04:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911232249.GL5659@atomide.com>
	<1536708545.3511.18.camel@HansenPartnership.com>
In-Reply-To: <1536708545.3511.18.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Sep 2018 13:55:44 +0200
Message-ID: <CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Wed, Sep 12, 2018 at 1:29 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Tue, 2018-09-11 at 16:22 -0700, Tony Lindgren wrote:
> > * James Bottomley <James.Bottomley@HansenPartnership.com> [180911
> > 22:58]:
> > > On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> > > >
> > > > Why not do what I do and push to a -pre-next branch when you kick
> > > > off
> > > > your local tests?
> > >
> > > Because there's no point.  As I said, when we complete the local
> > > criteria the branch is ready for integration.  We push to -next and
> > > *all* the built bots tell us if there are any problems (which I
> > > don't
> > > expect there are but there's room for me to be wrong) ... including
> > > 0day.  I don't see what the delay and the process hassle would buy
> > > us
> > > if we only get a review by 0day in the -pre-next branch.  It seems
> > > more
> > > efficient to let every bot loose on what we think is mergeable.
> >
> > Well what we're after is providing a trigger for people writing test
> > scripts to test individual branches before they get merged into next.
> >
> > With the goal of trying to keep next usable constantly.
> >
> > Establishing a branch naming standard like "-pre-next" would allow
> > the scripts to test the various branches where available before
> > they hit next and warn about issues.
>
> I still don't get the purpose: as I've said several times, SCSI pushes
> to -next when it thinks the patches are ready for merging.  Almost none
> of the subsequently discovered bugs (by both bots and humans) affect
> anything other than SCSI (and usually only a specific driver) so there
> would have been no benefit to testing them in a separate branch and
> indeed probably the detriment of diverting resources.
>
> That's my point: from my point of view the -next process is actually
> working; I don't see a reason to complicate it.

Good. Then this discussion wasn't targeted to the SCSI people, but to
other maintainers pushing brown paper bags and other trivial breakages
they should have caught beforehand to linux-next ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
