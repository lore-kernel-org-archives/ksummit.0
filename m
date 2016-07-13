Return-Path: <geert.uytterhoeven@gmail.com>
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20160711171146.GD3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
	<20160711171146.GD3701@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 13 Jul 2016 03:08:05 +0200
Message-ID: <CAMuHMdXASsy6QD9VhODZ3kC3pSOBHRKaJBPwiRQiZxj6v=RaJg@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 7:11 PM, Mark Brown <broonie@kernel.org> wrote:
> On Mon, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts'o wrote:
>> Very few people will actually be merging them, and in fact maybe
>> having a patch queue which is checked into git might actually work
>> better, since it sounds like most people are just cherry-picking
>> specific patches.
>
> I think at this point even if people are cherry picking patches it's
> probably still going to be easier for people to work with a git tree
> than anything else - the workflow for git cherry-pick, looking for
> dependent patches and so on is pretty clear, the upstream commit IDs are
> there if you prefer to go direct to them and if you really do want a raw
> patch stack then it's easy to translate into one.

+1

Personally I hate it that the LTSI tree is available as a patch only.
Even ltsi-kernel.git is... a collection of patches, although I've just noticed
the README there does explain how to (re)create a git tree from it.

Hence every time I want to test it, and build on top of it, I have to
import the patches into git myself...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
