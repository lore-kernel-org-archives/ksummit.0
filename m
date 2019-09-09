Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 28D48D9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 08:39:07 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7552CEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 08:39:04 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Olof Johansson <olof@lixom.net>,
	Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
	<20190904120843.GD4811@pendragon.ideasonboard.com>
	<20190904134706.GA14421@pure.paranoia.local>
	<87lfv3w3v6.fsf@intel.com>
	<CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
	<CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
	<CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
Date: Mon, 09 Sep 2019 11:40:05 +0300
Message-ID: <87imq1x3q2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
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

On Fri, 06 Sep 2019, Olof Johansson <olof@lixom.net> wrote:
> Random observation: We're slowly migrating closer to the "web" based
> model of github/gitlab/bitbucket where changes come in via a merge
> request + branch, but we would be reconstructing it out of email with
> the cover letter equivalent of the merge request description, etc.
> That's obviously not a problem, just an interesting observation.

Well, as I tried to explain up-thread, I think it *is* a problem we're
building infrastructure on top of git send-email and am, while we have
git push and pull. Trying to reconstruct everything from email is
problematic because it is lossy.

We can still have the review on emailed patches, and we could still use
git am to apply patches from email, with better reliability if the
sending was done by a service in, say, kernel.org control. Though if we
had the series automatically available in a branch, I'd think people
would move over to picking up the commits from git. And email would only
be used for communication, not data transfer.

> The final step of merging it in is still manual in our setup, and
> that's what most maintainers still prefer; the "hands off" part of the
> web model where you don't actively download and look at the code is
> what feels less careful and involved at least for me. Plus the fact
> that the master contents of the tree would reside up somewhere on the
> internet instead of on the maintainers locally controlled machine with
> the trust complications involved in that.

I'm suggesting maintainers would still have their trees wherever they
feel comfortable having them. I find it hard to understand why emailed
patches would somehow be inherently safer and more trustworthy than git
pull.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
