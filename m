Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 274E1BBD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:36:46 +0000 (UTC)
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 823A6223
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:36:45 +0000 (UTC)
Received: by mail-io0-f169.google.com with SMTP id h64so25541989iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 14:36:45 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 27 Jun 2017 14:36:44 -0700
Message-ID: <CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Christoph Hellwig <hch@infradead.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, Jun 27, 2017 at 2:16 PM, Olof Johansson <olof@lixom.net> wrote:
>
> It sounds to me like you want to turn it from option/driver selection
> to feature selection, where features could be stuff like:
>
> So, a meta config layer if seen in the context of our current config system.

Yes.

Most people are really bad at knowing details, but they may well know
some big-picture stuff. They can certainly answer questions like "do
you have a laptop", and "does it have a PCMCIA card slot".

They might even be able to answer some HW specifics ("Is it 64-bit?"
"Is the CPU an Intel/AMD or ARM chip?").

But answering questions like "do you have broadcom wireless" is
already much much harder, particularly if it's one very particular
broadcom chipset, that isn't even sold as broadcom, because HP or Dell
or Lenovo whatever laptop you have doesn't even really sell it as
such.

So asking a normal user about details like that is already fraught
with error, and that *should* be a really trivial question from a
technical angle. Some other questions are *much* harder.  When you get
into some of the esoteric interfaces like "do you need CGROUPS
support", any normal person has no friggin clue about the details of
their particular user land installation.

> If we were to do this incrementally with current Kconfig on the
> backend, I think most of the above could be done as one config action,
> that in turn would select a set of kconfig snippets on the backend,
> concatenate them all and give you the config to build with.

I agree that our current Kconfig backend might be able to do it. At
the same time, I'm not sure it necessarily the right model.

For example, I think we migth want to use scripts that are *not* about
current Kconfig stuff, but instead are tailored towards particular
special cases.

For example, how about a script that takes a list of PCI devices, and
figures out the modules for that, and generates a list of Kconfig
symbols you want?

It's kind of what "make localmodconfig" does, not not really. It's
more targeted to a particular subsystem, and it's *not* necessarily
something that Kconfig itself would do. It's a helper script, and then
you could do

    make localpciconfig

to enable those PCI options that are local to that device (or run the
script with the list from somebody else)

Same for various hotplug devices (including, but not limited, to USB)
- but maybe it could generate a list of USB devices by looking at your
system logs, and seeing what you used in the last month?

Ok, that's a very specific example, and I'm not saying either of those
are really great ideas and should be implemented, but more throwing it
out as the kind of things we *could* do to make it easier for people
to build their own kernels.

I think there are a lot of people that are afraid of testing a new
kernel purely because of the high KConfig pain threshold.

It's hopefully not because the build is all that complex - christ, I
have been building my own version of Qt the last couple of weeks for
reasons you do *not* want to know, and compared to that a kernel build
is a breeze and completes almost immediately, and has almost no build
dependencies, but also should have no pain in installing because we
allow multiple kernels at the same time _and_ they should all work
because of the "no user space regressions" rule.

That is, they should all work as long as you get that incredibly
complicated configuration phase right ;)

So I'd love to have this made easier.

I'm just not necessarily very optimistic, since kernel config has
never EVER been easy/

Well, I guess it was easy back in 1991, when you just didn't have any
options. You got what you got, and if you didn't have the right
hardware, it didn't work, but at least you didn't need to configure
the kernel much.

                        Linus
