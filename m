Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97353E7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:16:12 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4CE9376F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:16:12 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id d25so27353017iob.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 09 Sep 2019 03:16:12 -0700 (PDT)
Date: Mon, 9 Sep 2019 06:16:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190909101606.GB9452@pure.paranoia.local>
References: <CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
	<87imq1x3q2.fsf@intel.com>
	<CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMuHMdXVJuRv1n1zvmVUYOj_DCkYu-n3mub9rSdePf6M1nEObw@mail.gmail.com>
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

On Mon, Sep 09, 2019 at 11:49:48AM +0200, Geert Uytterhoeven wrote:
> > We can still have the review on emailed patches, and we could still use
> > git am to apply patches from email, with better reliability if the
> > sending was done by a service in, say, kernel.org control. Though if we
> > had the series automatically available in a branch, I'd think people
> > would move over to picking up the commits from git. And email would only
> > be used for communication, not data transfer.
> 
> Do we trust the branch to contain the exact same commits as the
> patches reviewed on the mailing list?
> For an automatic service on kernel.org, we could.

But we really shouldn't, considering kernel.org is the exact kind of
target that attackers would go after if it was implicitly trusted by
developers. Once patches have been reviewed by maintainers and merged
into their tree, we should be using cryptographic attestation for all
git-centric operations after that -- regardless of whether you pulled
from kernel.org or any other location.

Kernel.org is just there to simplify the moving of bits and we shouldn't
make it a source of trust.

-K
