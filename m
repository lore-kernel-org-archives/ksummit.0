Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B5001701
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:21:56 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCD57823
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:21:55 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id d10so5962378lfi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 12:21:55 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
	[209.85.208.172]) by smtp.gmail.com with ESMTPSA id
	d13sm1279159lfm.21.2019.09.06.12.21.52
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 06 Sep 2019 12:21:52 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id y23so6997358lje.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 12:21:52 -0700 (PDT)
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
In-Reply-To: <CAL_Jsq+-bGRxaOxEbCH+57TQto6KUO7Fs+tMLswzeJEB=FWA+Q@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 6 Sep 2019 12:21:36 -0700
Message-ID: <CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
To: Rob Herring <robherring2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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

On Fri, Sep 6, 2019 at 3:51 AM Rob Herring <robherring2@gmail.com> wrote:
>
> Independent of the exact process, a git branch for every series would
> be great.

That actually sounds really nice. Especially if the cover-letter is
then done as a tag (probably not signed), so that when you fetch it
you get the overview automatically - and if you actually do "git pull"
it would fill the merge editor with the cover letter thing.

Even if you then don't really merge it as-is, it would be a lovely way
to just get the whole series to work with locally.

Of course, I'm likely biased. Since I do almost everything with git
(occasional random one-off patches and Andrew's patch-bomb being the
exceptions), I end up just doing a lot of "git fetch" and then looking
at the results. Despite still probably being able to edit patches in
my sleep after decades of looking at them, these days I find that
easier and more powerful to look at things in git than working on
patches.

I end up often doing things like just doing "gitk ..FETCH_HEAD" and
then increasing the context window to see more of the code around the
patch etc.

Of course, right now I only do it with people who use git branches
(doing the "git fetch" for the next pull request while the previous is
going through my build tests, or when people post pointers WIP
branches etc). Being able to do it for random 50-patch series sounds
lovely, particularly when you then can limit the gitk to only the
parts you care about, while _having_ the whole series.

                 Linus
