Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10BA4C93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:44:52 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AFCB1A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:44:51 +0000 (UTC)
Date: Tue, 27 Jun 2017 20:44:48 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170627184448.GU21846@wotan.suse.de>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
Cc: Michal Hocko <mhocko@kernel.org>, Christoph Hellwig <hch@infradead.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 10:18:04AM -0700, Linus Torvalds wrote:
> And then a "I use Intel KVM, so I need those minimal features, but I
> do *not* want paravirtualization or any other virtualization
> services".

Such things exist now:

make kvmconfig
make xenconfig

> We could *maybe* make it part of some "make simpleconfig" that just
> basically uses "select" a lot with s special architecture-specific
> Kconfig file, and try to help people with a few bigger questions.

So you mean a menu of the defconfigs ?

> Not the thousands of detailed questions. Just do the big strokes, and
> enable teh *normal* still. The "defconfig" approach doesn't work (and
> hasn't for a long time except for cases where you have very specific
> configurations), but just having the abilitty to enable a *sane* basic
> config for modern machines would be fine.
> 
> Would you have to tweak it later when you have odd hardware or speific
> issues? Yes. But there shouldn't be a single question about USB - just
> enable basic support, and then add support for HID and USB storage
> that pretty much everybody will need. Things like that, to get a
> workign but basic config going.
> 
> And yes, the security questions are all insane. Nobody knows what the
> answers are, since some of it is distro-specific, and others are just
> "do you want to test hardening". And because people don't even know
> which is which, they often end up enabling features that they
> shouldn't, just because they are unsure.

Sensible defaults per subsystem would help.

> And note that none of this is about technoliogy, and SAT solvers and
> resolving the KConfig depdendencies that some techie people love
> talking about.

If you have a set of requirements but need to fold in a large lump of
other desirables then surely a SAT solver can help.

> It's all about "what if we just had some kconfig
> fragments to enable some commonly used stuff" (where "commonly used"
> is obviously architecture dependent, but also target-dependent - a
> "simpleconfig" for a PC workstation kind of config is very different
> from a "simpleconfig" for a server or some ARM embedded thing).

Actually ideally something like udevadm dumping respective kconfig symbols
should give you what kconfig a system needs at a specific boot time. Solving
this was part of Cristina Moraru's  2016 GSoC effort which tried to streamline
scripts/kconfig/streamline_config.pl (make localmodconfig). That effort ended
up producing simple patches to associate modules with respective kconfig
symbols, to enable udevadm to dump the info later.

Cristoph didn't like the reverse engineering approach this seemed to take
though so proposed an alternative which could even fold Makefiles into Kconfig
[2]. I however found issues with built-in with this model [3], other than this
it seemed fair and reasonable provided we actually worked on it.

At Linux Plumbers Sante Fe we had a small kernel session about Kconfig
semantics to talk more about this. Some loose ideas and notes from that
sessions:

  * Arnd noted a kconfig "Suggests" tag seems appropriate, he seems to have
    volunteered to work on it :)

  * David Howells noted he'd prefer to have a cache of enabled features.
    He also volunteered this ;)

  * We all seem to have decided having *both* depends and select is dumb.
    So we decided we could remove select but fix tools first to give you
    what you need:

    - make selectconfig
    - make dependsconfig

[0] https://kernelsense.wordpress.com/2016/08/23/gsoc-2016-summary/
[1] https://lkml.kernel.org/r/1471462023-119645-1-git-send-email-cristina.moraru09@gmail.com
[2] https://marc.info/?l=linux-backports&m=147211126311774&w=2
[3] https://marc.info/?l=linux-kernel&m=147215738525058&w=2

  Luis
