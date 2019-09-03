Return-Path: <bjorn.helgaas@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17000E52
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:40:31 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DCA77756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 17:40:29 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id d25so35293350iob.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 10:40:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
In-Reply-To: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
Reply-To: bjorn@helgaas.com
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Tue, 3 Sep 2019 12:40:18 -0500
Message-ID: <CABhMZUUzyMXyKthjt31qU-p-2=6s2Cvw5jb=bw3=T76kzfUyKA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>, Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 3, 2019 at 12:27 PM Konstantin Ryabitsev
<konstantin@linuxfoundation.org> wrote:

> For quite some time now I've been trying to fund some client-side
> tooling development around public-inbox (the software that drives
> lore.kernel.org). Eric Wong (the principal author of public-inbox), and
> I have had lengthy chats about potential functionality of such tool, and
> what we envision can be described as "local patchwork with a mutt-like
> interface":
>
> - It would use public-inbox repositories to track new patches and
>   conversations, so it would no longer be necessary to subscribe to the
>   actual mailing list(s). Getting new mail would be equivalent to a "git
>   pull".
> - It would have an equivalent of notmuch search, so instead of needing
>   to go to lore.kernel.org, you could search the entire mailing list
>   locally and perform actions on the results found.
> - Just like Patchwork, it would keep track of new patches and series of
>   patches, recognize when new patch/series revisions are posted, track
>   reviewed-by's, tested-by's, etc, and provide useful maintainer
>   functionality, such as showing interdiffs between revisions.
> - Patches and series can be pre-filtered by keywords or file paths (e.g.
>   if you're only interested in arch/arm64/mm/.*, the tool would ignore
>   any patches/revisions not touching files in that dir).
> - It would support creating workflows and conditional response actions,
>   e.g. "create new branch, apply this series, run these test suites; if
>   tests succeed, merge into branch `for-linus`; if merge successful,
>   reply to submitter with 'thanks, applied!'; if all went well, archive
>   the series; if any steps failed, flag the series for my review".
> - The workflows would run in the background, including using external
>   systems if preferred. Maintainers can contribute their workflows to a
>   shared repository so others can easily copy and adapt them.
>
> That's obviously not a complete list, but it seems to me that something
> like this would be quite welcome by a lot of maintainers (at least,
> everyone I've talked to about this got really excited). Eric Wong is
> quite willing to work on something like this, but he is not in a
> position to donate so much of his time and effort (especially on top of
> maintaining public-inbox) -- so if we want to see this happen, we need
> to come up with some funds.
>
> I've inquired internally at the Foundation, and while there's general
> willingness to fund such initiatives, the People In Charge Of Money want
> to see a buy-in from maintainers. The natural instinct is to talk to
> Greg, but I believe he's quite happy with his workflow, so while I'm
> sure he'd be happy to feign excitement, he's unlikely to be interested
> in the tool. Linus is not the right person to talk to either, because he
> doesn't deal with patches and tests, so wouldn't benefit from such tool.
>
> So, my plan was to track down Shuah (who's also at the Foundation) and
> Laura (who is on the TAB) at the upcoming summit to float this idea with
> them to see what they think. However, since we're talking about
> lore.kernel.org, tooling and workflows quite a bit already, I figured
> I'll bring this up here as well.
>
> It just seems that every maintainer I spoke with is generally making
> things "sort-of work well enough" by applying a lot of baling wire
> around mail clients, patchwork.kernel.org, gitlab, or all of the above,
> and I'm wondering if everyone is happy to do that, or only doing that
> because a good tool written to fit with the "kernel development model"
> doesn't exist.
>
> So:
>
> - would a tool with such functionality be useful, or would every
>   maintainer prefer to continue doing their own thing (in slightly
>   different ways)?

I would find something like this incredibly useful.  I currently use
patchwork, but I am really sick of the only-when-online, mouse-around,
clickety-click, wait-for-the-web model.
