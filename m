Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C888DE57
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 09:50:01 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3113D7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 09:50:01 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 41so8034893oti.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 02:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local> <87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
In-Reply-To: <87imq1x3q2.fsf@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 11:49:48 +0200
Message-ID: <CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jani,

On Mon, Sep 9, 2019 at 10:39 AM Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 06 Sep 2019, Olof Johansson <olof@lixom.net> wrote:
> > Random observation: We're slowly migrating closer to the "web" based
> > model of github/gitlab/bitbucket where changes come in via a merge
> > request + branch, but we would be reconstructing it out of email with
> > the cover letter equivalent of the merge request description, etc.
> > That's obviously not a problem, just an interesting observation.
>
> Well, as I tried to explain up-thread, I think it *is* a problem we're
> building infrastructure on top of git send-email and am, while we have
> git push and pull. Trying to reconstruct everything from email is
> problematic because it is lossy.
>
> We can still have the review on emailed patches, and we could still use
> git am to apply patches from email, with better reliability if the
> sending was done by a service in, say, kernel.org control. Though if we
> had the series automatically available in a branch, I'd think people
> would move over to picking up the commits from git. And email would only
> be used for communication, not data transfer.

Do we trust the branch to contain the exact same commits as the
patches reviewed on the mailing list?
For an automatic service on kernel.org, we could.
For branches provided manually by the submitter, or elsewhere, we cannot.

Note that we already trust patchwork, assuming it received the exact
same patch as our inboxes.  But for patchwork, the human factor is not
involved, so human mistakes are assumed to be absent.

> > The final step of merging it in is still manual in our setup, and
> > that's what most maintainers still prefer; the "hands off" part of the
> > web model where you don't actively download and look at the code is
> > what feels less careful and involved at least for me. Plus the fact
> > that the master contents of the tree would reside up somewhere on the
> > internet instead of on the maintainers locally controlled machine with
> > the trust complications involved in that.
>
> I'm suggesting maintainers would still have their trees wherever they
> feel comfortable having them. I find it hard to understand why emailed
> patches would somehow be inherently safer and more trustworthy than git
> pull.

The emailed patch is what has been reviewed.
For (sub)maintainers, we trust that the branch they provide contains the
right commits.  Still, mistakes happens (check how many pull requests
Linus complains about due to wrong/missing branch/tag).
For random contributors, we do not.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
