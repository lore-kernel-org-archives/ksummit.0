Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77158BCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 19:27:12 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B8CE198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 19:27:11 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id m19so3450523ioe.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 12:27:11 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170627184448.GU21846@wotan.suse.de>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 27 Jun 2017 12:27:10 -0700
Message-ID: <CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Tue, Jun 27, 2017 at 11:44 AM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
>
> Such things exist now:
>
> make kvmconfig
> make xenconfig

Not really. Not for normal users. Those are literally only for the
special cases that are *not* normal.

> So you mean a menu of the defconfigs ?

No. The defconfigs are useless. They are fundamentally broken, excatly
because there is never one config that can work.

They do need to be of the "kvmconfig" type, but for sane subconfirurations.

So I'd look for something like

    make modernpcconfig # enable minimal modern PC workstation stuff
    make f25config  # enable minimal stuff required for F25
    make amdconfig # enable the core modern AMD stuff

or something like that.

But it's not going to happen, because everybody thinks *their* code is
so supremely important, so the "minimal config" is literally a doomed
concept ;(

> Sensible defaults per subsystem would help.

No. We've tried. The only sensible default (and that I try to enforce)
is "new featrures default to 'n'"

Why? Exactly because of that "everybody thinks *their* code is
important". Developers always think "I have to enable my code". It
doesn't matter how stupid or esoteric their code is, the developer by
definition thinks their own code is supremely important, and
particularly all the new cool features.

So subsystem defaults are always completely broken, unless I come
along and swear at people who think their new cool feature is
important.

Which I do regularly. And I'm sure I miss things, because I just don't see them.

> If you have a set of requirements but need to fold in a large lump of
> other desirables then surely a SAT solver can help.

No. The SAT solver will only hurt, because it will bring in all those
irrelevant people who are interested in SAT solving, not in making
things easy for users.

It should be perfectly sufficient to just have a series of 'select
XYZ' statements, and yes, update them manually, but since the point is
to go for minimal, automation by definition just breaks it. It will
just make people select big things and leave it at that.

> Actually ideally something like udevadm dumping respective kconfig symbols
> should give you what kconfig a system needs at a specific boot time.

So we already have localmodconfig that uses other things to figure out
what is needed, but no, it's not good enough.

Partly it's not good enough because realistically there are base
configs that you want enabled whether they are used or not. For
example, enabling USB without enabling USB_STORAGE is kind of crazy in
this day and age. But USB storage is not required for booting in most
circumstances, it's just reuired for occasional day-to-day things.

Also, one problem really is that distro configurations by definition
will be pretty damn large. If you want that config, then use the
distro config. But if you want anything else, then udevadm isn't going
to help you at all, because it's not going to show you any of the
stuff that just worked because it was built in and never neeed any
action at all.


>   * Arnd noted a kconfig "Suggests" tag seems appropriate, he seems to have
>     volunteered to work on it :)

Yeah, that's not goping to work either, simply because what is
suggested in one context makes no sense at all in another.

Are you doing a PC workstation kind of thing like many developers are?
Very different from qwhen you're doing an embedded thing or a server
or whatever.

>   * David Howells noted he'd prefer to have a cache of enabled features.
>     He also volunteered this ;)

I do that. There's a reason "make defconfig" reads your
/etc/kernel-config. It's just that it's machine-specific.

And it's there exactly so that you can make your machine-specific
config *once*, and then it's there, and it never affects anybody else
(unless you share your /etc directory, but that's crazy).

But even with that, I find our config stuff annoying. Upgrading
hardware or distros is always just painful, because it means
re-generating a new machine-specific configuration (either because the
hardware changed, or because the distro baseline requirements
changed).

                    Linus
