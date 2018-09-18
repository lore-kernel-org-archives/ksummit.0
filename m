Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49BABF7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:18:38 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8393A798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:18:37 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id 75-v6so2194627iou.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 10:18:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<2174637.IVJC5EhCEq@avalon> <20180918160236.GK2471@sirena.org.uk>
	<20180918163231.GB10134@agluck-desk>
	<CAKdAkRRc8U+Y9M3mP378hw5PsUoG-TM33gX_0oT8PX9APT9pyw@mail.gmail.com>
In-Reply-To: <CAKdAkRRc8U+Y9M3mP378hw5PsUoG-TM33gX_0oT8PX9APT9pyw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Sep 2018 10:18:25 -0700
Message-ID: <CA+55aFxgc+OOs4E8z9vdEpbArwi2+MaxfUUnZSisX6Y3K1HTHQ@mail.gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: mchehab+samsung@kernel.org, tim.bird@sony.com,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[ Still very much on break, but reading ksuummit-discuss and answering
this one ]

On Tue, Sep 18, 2018 at 9:35 AM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
> On Tue, Sep 18, 2018 at 9:33 AM Luck, Tony <tony.luck@intel.com> wrote:
> >
> > Or, shock, horror, tell one-time contributors that it is OK to
> > put the patch in an attachment to the e-mail.  Outlook doesn't
> > (usually) mess with the contents of attachments.
>
> And then have maintainer having hard time trying to comment on said
> patch in the attachment. I'd rather not.

I actually think that *this* could be easily handled by trivial
tooling that doesn't have to be set up over and over again inside
companies or teaching people.

In fact, doesn't patchwork already do exactly that?

I have to say, there are real technical advantages to using
attachments for patches, particularly when you have odd combinations
of locales. It's gotten to be less of an issue over time and we're
still almost entirely US-ASCII with the occasional UTF-8, but we do
still have the occasional problem. Using attachments at least detaches
the email charset from the user locale, and from random other MUA
issues.

But yes, the "comment on individual parts of the patch" part is very
important too.

The main problem with having something that rewrites things is that it
breaks DKIM etc, so you can't just have a pure email gateway. It
almost needs to be something at a higher semantic level like patchwork
(that could still send out rewritten emails).

In many cases, you might want that anyway (ie wouldn't it be lovely
when the patch is also checked for "does it build" and looks up the
maintainers based on what paths it touches etc etc).

So a sane email / web-interface kind of gateway that allows people to
work the way they prefer.

But I guess "trivial" is completely the wrong word to use.

             Linus
