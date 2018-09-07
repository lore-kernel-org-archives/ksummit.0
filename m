Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DF99D6B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:39:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BA2D4A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:39:58 +0000 (UTC)
Date: Fri, 7 Sep 2018 18:39:46 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20180907183946.6502f100@coco.lan>
In-Reply-To: <CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Fri, 7 Sep 2018 09:17:18 -0700
Linus Torvalds <torvalds@linux-foundation.org> escreveu:

> On Fri, Sep 7, 2018 at 8:52 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:

> And for maintainers, it can be the exact reverse. In Vancouver Greg
> said that normally, for him, the merge window is when he can take a
> break, because the bulk of his work is the "leading up to merge
> window" time, since that's when he works with people to set up the
> branches for the next merge window.

That's exactly what I do here :-)

During the merge window, I usually take off my maintainer's hat and
I either do some usespace stuff or do some development myself.

It is not uncommon that, whatever I'm doing during the merge window
would require part of the -rc1 week to finish. So, typically, fixes
start being merged during -rc2 week, meaning that they'll reach
upstream by -rc3 week or later.

=46rom subsystem developer's side, what I notice from my chair is that
most people developing new features work to cope with the Kernel=20
merging cycle, meaning that they do their testing and development
focused on getting their stuff merged up to the -rc6 week. The=20
vast majority of pull requests I receive are sent during the -rc6
week.

Most of the bug fixes we have actually are discovered from
people are working on new stuff.

Ok, pure bug reports (and fixes) can be merged anytime, but,
due to the core developer's working cycle, in practice that means
that I receive more bug fixes (both critical and non-critical)
late at the -rc cycle.

Thanks,
Mauro
