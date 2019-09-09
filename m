Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E722E8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:59:40 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B4367DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:59:39 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 21so11958954otj.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 03:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local> <87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
	<CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
	<20190909101606.GB9452@pure.paranoia.local>
In-Reply-To: <20190909101606.GB9452@pure.paranoia.local>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Sep 2019 12:59:26 +0200
Message-ID: <CAMuHMdXxcJhNqPZBpf4QHpECN=aDXe7uYv3F2S4re04YaRUypA@mail.gmail.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Konstantin,

On Mon, Sep 9, 2019 at 12:16 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:
> On Mon, Sep 09, 2019 at 11:49:48AM +0200, Geert Uytterhoeven wrote:
> > > We can still have the review on emailed patches, and we could still use
> > > git am to apply patches from email, with better reliability if the
> > > sending was done by a service in, say, kernel.org control. Though if we
> > > had the series automatically available in a branch, I'd think people
> > > would move over to picking up the commits from git. And email would only
> > > be used for communication, not data transfer.
> >
> > Do we trust the branch to contain the exact same commits as the
> > patches reviewed on the mailing list?
> > For an automatic service on kernel.org, we could.
>
> But we really shouldn't, considering kernel.org is the exact kind of
> target that attackers would go after if it was implicitly trusted by

Sure.

> developers. Once patches have been reviewed by maintainers and merged
> into their tree, we should be using cryptographic attestation for all
> git-centric operations after that -- regardless of whether you pulled
> from kernel.org or any other location.

We already use cryptographic attestations for the later operations.

So the weakest link seems to be the step between public review and
import into git by the maintainer.  E.g.
  - The review chain on multiple submissions: Vn+1 may contain an evil
     change that was not in Vn.  As this happens in public, it may be
     noticed by reviewers.
  - The path between patch submission and git-am:  if a patchwork
    instance is compromised, evil changes may sneak in.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
