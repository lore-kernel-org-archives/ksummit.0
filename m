Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B07B2232E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:53:16 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9686D823
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Sep 2019 19:53:15 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id p12so15460103iog.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 06 Sep 2019 12:53:15 -0700 (PDT)
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
In-Reply-To: <CAHk-=whovSzsjL0HrfVbYTP8RCcCQj6u3g1LsfOiNeQmzfy2mA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 6 Sep 2019 12:53:01 -0700
Message-ID: <CAOesGMjpsQYL2gK3M1fvxmCHp=ZZj9Hx4JcFASMvKQXMfyfXBA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Fri, Sep 6, 2019 at 12:22 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, Sep 6, 2019 at 3:51 AM Rob Herring <robherring2@gmail.com> wrote:
> >
> > Independent of the exact process, a git branch for every series would
> > be great.
>
> That actually sounds really nice. Especially if the cover-letter is
> then done as a tag (probably not signed), so that when you fetch it
> you get the overview automatically - and if you actually do "git pull"
> it would fill the merge editor with the cover letter thing.
>
> Even if you then don't really merge it as-is, it would be a lovely way
> to just get the whole series to work with locally.
>
> Of course, I'm likely biased. Since I do almost everything with git
> (occasional random one-off patches and Andrew's patch-bomb being the
> exceptions), I end up just doing a lot of "git fetch" and then looking
> at the results. Despite still probably being able to edit patches in
> my sleep after decades of looking at them, these days I find that
> easier and more powerful to look at things in git than working on
> patches.
>
> I end up often doing things like just doing "gitk ..FETCH_HEAD" and
> then increasing the context window to see more of the code around the
> patch etc.
>
> Of course, right now I only do it with people who use git branches
> (doing the "git fetch" for the next pull request while the previous is
> going through my build tests, or when people post pointers WIP
> branches etc). Being able to do it for random 50-patch series sounds
> lovely, particularly when you then can limit the gitk to only the
> parts you care about, while _having_ the whole series.

Applying patches to branches with automation is something that's been
on my todo list for a while as well -- especially since having a git
branch pre-staged makes some things easier (running checks, linters,
checkpatch, whatnot) with the way most CI tools work. I'd love to see
this happen. Patchwork has hooks so you can have these "checkers"
report back status, but it can be done over email as well, of course.

Random observation: We're slowly migrating closer to the "web" based
model of github/gitlab/bitbucket where changes come in via a merge
request + branch, but we would be reconstructing it out of email with
the cover letter equivalent of the merge request description, etc.
That's obviously not a problem, just an interesting observation. The
final step of merging it in is still manual in our setup, and that's
what most maintainers still prefer; the "hands off" part of the web
model where you don't actively download and look at the code is what
feels less careful and involved at least for me. Plus the fact that
the master contents of the tree would reside up somewhere on the
internet instead of on the maintainers locally controlled machine with
the trust complications involved in that.


-Olof
