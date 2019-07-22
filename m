Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A33EA7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 14:53:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 718E0775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 14:53:06 +0000 (UTC)
Date: Mon, 22 Jul 2019 11:52:59 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190722115259.47bc749b@coco.lan>
In-Reply-To: <20190612085405.6045d95d@lwn.net>
References: <20190612085405.6045d95d@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 12 Jun 2019 08:54:05 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> What could be more fun than talking about kernel documentation?  Things we
> could get into:
>=20
>  - The state of the RST transition

Assuming that all patches on my development branch gets merged, we should
have:

	- about 300 files missing conversion;
	- about 40 files under Documentation/*.txt that needs to be
	  moved to a subdir and be renamed to *.rst.

>  - Overall organization of Documentation/ and moving docs when the need
>    arises.

Looking at Documentation/index.rst, I guess we're aiming to have something=
=20
like:

	Documentation/
	=E2=94=9C=E2=94=80=E2=94=80 ABI
	=E2=94=9C=E2=94=80=E2=94=80 admin-guide
	=E2=94=9C=E2=94=80=E2=94=80 kbuild
	=E2=94=9C=E2=94=80=E2=94=80 arch
	=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 arm
	=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 arm64
	=E2=94=82   ...
	=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 x86
	=E2=94=82   =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 i386
	=E2=94=82   =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 x86_64
	=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 xtensa
	=E2=94=9C=E2=94=80=E2=94=80 core-api
	=E2=94=9C=E2=94=80=E2=94=80 devicetree
	=E2=94=9C=E2=94=80=E2=94=80 dev-tools
	=E2=94=9C=E2=94=80=E2=94=80 doc-guide
	=E2=94=9C=E2=94=80=E2=94=80 driver-api
	=E2=94=9C=E2=94=80=E2=94=80 features
	=E2=94=9C=E2=94=80=E2=94=80 fault-injection
	=E2=94=9C=E2=94=80=E2=94=80 filesystems
	=E2=94=9C=E2=94=80=E2=94=80 firmware-guide
	=E2=94=9C=E2=94=80=E2=94=80 kernel-hacking
	=E2=94=9C=E2=94=80=E2=94=80 livepatch
	=E2=94=9C=E2=94=80=E2=94=80 maintainer
	=E2=94=9C=E2=94=80=E2=94=80 process
	=E2=94=9C=E2=94=80=E2=94=80 trace
	=E2=94=94=E2=94=80=E2=94=80 translations

Btw, right now, ext4 fs docs is on two separate parts of=20
Documentation/index.rst:

   filesystems/index
   filesystems/ext4/index

We should probably get rid of filesystems/ext4/index entry (and the=20
corresponding PDF entry at conf.py).

-

IMO, the main work to be done in order to achieve that is related to
Driver's subsystem documentation.

What I've been doing so far - at least for most (if not all) driver docs=20
that carry more than one documentation type at the same subdir (kABI,=20
uABI and/or admin-guide) is to keep the directory as-is, adding them under
this section at Documentation/index.rst:

	Kernel API documentation
	------------------------

There are a couple of reasons why I opted for this strategy when
I did such conversions:

1) There are *lots* of docs that contain all 3 types of information
   on it on a single file.

2) On media, we use SPHINXDIRS to produce the media book from our
   devel tree:

	https://linuxtv.org/downloads/v4l-dvb-apis-new/index.html

   When documents are built with either PDF or SPHINXDIRS, each subdir
   will be on a different book and all inter-book cross-references
   will break.
  =20
   For this to be fixed, intersphinx extension would be required,
   but this would probably require a per-subsystem mapping=20
   (for example, saying that the site used to resolve media
   broken cross references is linuxtv.org).=20

   Maintaining it can be painful, as we would have a big table
   at conf.py with subsystem-specific stuff.

3) So far, I was unable to split even the media docs. Shame on
   me! The reason is that this is not an easy task.

One interesting example is the open() documentation at the
media media uAPI book:

	Documentation/media/uapi/v4l/open.rst

This file actually contains a lot of sysadmin relevant data (so, it
is a good candidate for the admin-guide).

Yet, it was written focused on what a media uAPI developer needs
to know. So, it also mentions Kernel userspace API syscalls:
open(), read(), close() - with has cross-references to other parts
of the uAPI book.

Splitting this file on two separate books won't be that easy.

Ideally, we should split what's there at media/uapi into admin-guide
and userspace-api, but this would mean *a lot* of effort. Not sure
if it is worth the time.

Also, while a sysadmin might want to know what a /dev/video0 device
means, the intended audience is really uAPI developers, as an user
will just click on its GUI to call a media application.

>  - The ultimate vision for kernel docs (for now).  RST conversion and
>    imposing some organization are important, but they will not,
>    themselves, give us a coherent set of documentation.  What can we do to
>    have documentation that is useful, current, and maintainable, rather
>    than the dusty attic we have now?

The more I think the more I'm convinced that the best way to proceed would
be to use some Kernel books as an example and organize the main index.rst
files on a way that it will cover what a newbie Kernel developer would need
to know.

For example, looking at LDD3 organization (https://lwn.net/Kernel/LDD3/),
we could use its index as an starting point for what a driver-api book
should contain:

	Chapter 1: An Introduction to Device Drivers
	Chapter 3: Char Drivers
	Chapter 6: Advanced Char Driver Operations
	Chapter 9: Communicating with Hardware
	Chapter 12: PCI Drivers
	Chapter 13: USB Drivers
	Chapter 14: The Linux Device Model
	Chapter 16: Block Drivers
	Chapter 17: Network Drivers
	Chapter 18: TTY Drivers

Just looking on these, our driver-api book seem to be missing the
texts that would glue its contents, e. g. an introduction to device
drivers, to char/block devices and about how to communicate with the
hardware.

It can also help to identify the contents that a driver developer
would need from a core-api and a Kernel development bookset:

	Chapter 2: Building and Running Modules
	Chapter 4: Debugging Techniques
	Chapter 5: Concurrency and Race Conditions
	Chapter 7: Time, Delays, and Deferred Work
	Chapter 8: Allocating Memory
	Chapter 10: Interrupt Handling
	Chapter 11: Data Types in the Kernel

I would do the same with other Linux and Linux Kernel related books.

-

Btw, if the authors of some existing old books release their stuff under
GPLv2 and allow us to import their contents, we could try to import some
parts of it that aren't too obsolete. The new automarkup extension
can help a lot to identify outdated documents, as it won't be able
to solve the func() calls.

Thanks,
Mauro
