Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 328E8B9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 09:23:47 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 589722D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 09:23:46 +0000 (UTC)
Date: Wed, 19 Sep 2018 11:23:43 +0200
From: Jan Kara <jack@suse.cz>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180919092343.GK10257@quack2.suse.cz>
References: <20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com> <s5h8t3yv8xa.wl-tiwai@suse.de>
	<CAMuHMdVhBhTF13yTBgADD5=ps7X=fZr_VDtbNvhGEJK1ppYTYA@mail.gmail.com>
	<s5hpnxat2vr.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5hpnxat2vr.wl-tiwai@suse.de>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 19-09-18 08:31:04, Takashi Iwai wrote:
> On Wed, 19 Sep 2018 08:16:17 +0200,
> Geert Uytterhoeven wrote:
> > 
> > Hi Iwai-san,
> > 
> > On Tue, Sep 18, 2018 at 10:37 PM Takashi Iwai <tiwai@suse.de> wrote:
> > > On Tue, 18 Sep 2018 15:43:08 +0200,
> > > Martin K. Petersen wrote:
> > > > Sorry I'm a little late to the game here. Been out on vacation.
> > > >
> > > > > We order patches in our trees in the same git-topological-ordering as they
> > > > > are upstream. It has a lot of benefits, most importantly: it doesn't
> > > > > introduce artificial conflicts that don't exist in reality.
> > > > >
> > > > > In order to achieve that, we of course need 1:1 mapping between our
> > > > > patches and upstream commits.  Rebases destroy that mapping.
> > > > >
> > > > > And in some areas (scsi is one, but not the only one), we basically had no
> > > > > other choice than considering maintainer's tree to be already "upstream
> > > > > enough", without waiting for Linus' tree merge.
> > > >
> > > > When I discussed this with Johannes a little while ago, I suggested you
> > > > guys used git patch-id to track patches instead of commit ids. That's
> > > > how we track patches applied across many different trees internally.
> > > > Works much better than using the upstream sha.
> > >
> > > What is git patch id?  Is there any internal patch tag?
> > 
> > It's the output of "git patch-id", which is a hash of the patch, without
> > including its dependencies.  This allows to match identical commits in
> > different branches, and is what "git cherry" and "git rebase" use to detect
> > already applied patches.
> > 
> > Example (from v4.18.y):
> > 
> > $ git show -s e496c9a4c17d4a97ed8d222f368f3b8ad8133fb9
> > commit e496c9a4c17d4a97ed8d222f368f3b8ad8133fb9
> > Author: Robert Munteanu <rombert@apache.org>
> > Date:   Tue Jun 19 11:20:40 2018 +0300
> > 
> >     HID: redragon: fix num lock and caps lock LEDs
> > 
> >     commit dc9b8e85ed95cbe7e3ad0eabb5b48d617bbc365e upstream.
> > 
> >     The redragon asura keyboard registers two input devices. The initial commit
> >     85455dd906d5 ("HID: redragon: Fix modifier keys for Redragon Asura
> > Keyboard")
> >     considered this an error and prevented one of the devices from registering.
> >     However, once this is done the num lock and caps lock leds no
> > longer toggle on
> >     and off, although the key functionality is not affected.
> > 
> >     This commit removes the code that prevents the input device
> >     registration and restores the num lock and caps lock LEDs.
> > 
> >     Fixes: 85455dd906d5 ("HID: redragon: Fix modifier keys for
> > Redragon Asura Keyboard")
> >     Signed-off-by: Robert Munteanu <rombert@apache.org>
> >     Signed-off-by: Jiri Kosina <jkosina@suse.cz>
> >     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > 
> > $ git show e496c9a4c17d4a97ed8d222f368f3b8ad8133fb9 | git patch-id
> > 9d4546a92b459de7249748c0a38b50c989f13bd1
> > e496c9a4c17d4a97ed8d222f368f3b8ad8133fb9
> > $ git show dc9b8e85ed95cbe7e3ad0eabb5b48d617bbc365e | git patch-id
> > 9d4546a92b459de7249748c0a38b50c989f13bd1
> > dc9b8e85ed95cbe7e3ad0eabb5b48d617bbc365e
> > 
> > So both commits are identical, as they have the same patch ID.
> 
> Thanks for the explanation!
> 
> This would help for identifying the rebased patch, yes.  But it still
> doesn't help for sorting as is.  You cannot get the topology
> information from the patch id, so you don't know the patch order,
> either.  (You can deduce the actual commit from the patch id, but it's
> too heavy if you have 20,000 patches :)

Actually we could use the patch id to identify new commit id of a rebased
patch and infer proper ordering once we have the new commit id. So I think
using patch id (additionally to commit id) would really help us and solve
95% of rebases of e.g. SCSI tree by our automation without human
interaction.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
