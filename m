Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B4EFB1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:18:06 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34DE310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:18:06 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id h134so3168946iof.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 10:18:06 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170627135839.GB1886@jagdpanzerIV.localdomain>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 27 Jun 2017 10:18:04 -0700
Message-ID: <CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 6:58 AM, Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
>
> am I the only one who struggle with the Kconfig sometimes?

I hate our Kconfig. It's my least favorite part of the kernel. It asks
questions about insane things that nobody can know the answer to.

Taking a distro default config and doing"make localmodconfig" is what
I end up doing on new machines, and it has all kinds of suckage too.

I don't have a solution to it. But I think part of the solution would
be for us to have various "sane minimal requirement" Kconfig
fragments, and trhe ability to feed them incrementally, so that people
can build up a sane Kconfig from "I want this".

For example, instead of answering a million odd questions about
specific features that the base distro expects to always be there
(say, just the networking firewall rules and stuff like that), have
some "minimal required features to boot Fedora 25 or SuSE 12 sp2".

And then a "I use Intel KVM, so I need those minimal features, but I
do *not* want paravirtualization or any other virtualization
services".

We could *maybe* make it part of some "make simpleconfig" that just
basically uses "select" a lot with s special architecture-specific
Kconfig file, and try to help people with a few bigger questions.

Not the thousands of detailed questions. Just do the big strokes, and
enable teh *normal* still. The "defconfig" approach doesn't work (and
hasn't for a long time except for cases where you have very specific
configurations), but just having the abilitty to enable a *sane* basic
config for modern machines would be fine.

Would you have to tweak it later when you have odd hardware or speific
issues? Yes. But there shouldn't be a single question about USB - just
enable basic support, and then add support for HID and USB storage
that pretty much everybody will need. Things like that, to get a
workign but basic config going.

And yes, the security questions are all insane. Nobody knows what the
answers are, since some of it is distro-specific, and others are just
"do you want to test hardening". And because people don't even know
which is which, they often end up enabling features that they
shouldn't, just because they are unsure.

The default distro config still enables PCCARD support, even if you
don't have a laptop at all (or if your laptop is not from the middle
ages any more). Big things like that make a big difference in what
questions you are then asked about random devices.

ISDN? ATM? They're dead. Some sane simple config shouldn't ask about
them any more. The "ten thousand questions" could probably be narrowed
down to maybe a few tens, with some tweaking for special devices
people have lying around.

And note that none of this is about technoliogy, and SAT solvers and
resolving the KConfig depdendencies that some techie people love
talking about. It's all about "what if we just had some kconfig
fragments to enable some commonly used stuff" (where "commonly used"
is obviously architecture dependent, but also target-dependent - a
"simpleconfig" for a PC workstation kind of config is very different
from a "simpleconfig" for a server or some ARM embedded thing).

                  Linus
