Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92FA48FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 16:46:17 +0000 (UTC)
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C44B042D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 16:46:16 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id z186-v6so12022296lfa.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Sep 2018 09:46:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFxgc+OOs4E8z9vdEpbArwi2+MaxfUUnZSisX6Y3K1HTHQ@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<2174637.IVJC5EhCEq@avalon> <20180918160236.GK2471@sirena.org.uk>
	<20180918163231.GB10134@agluck-desk>
	<CAKdAkRRc8U+Y9M3mP378hw5PsUoG-TM33gX_0oT8PX9APT9pyw@mail.gmail.com>
	<CA+55aFxgc+OOs4E8z9vdEpbArwi2+MaxfUUnZSisX6Y3K1HTHQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 21 Sep 2018 17:46:13 +0100
Message-ID: <CAOesGMg72JXk6SA3eJCmEWC207JJqNEEx9hCOo-vcE4whDudtA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Tue, Sep 18, 2018 at 6:18 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> [ Still very much on break, but reading ksuummit-discuss and answering
> this one ]
>
> On Tue, Sep 18, 2018 at 9:35 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
>> On Tue, Sep 18, 2018 at 9:33 AM Luck, Tony <tony.luck@intel.com> wrote:
>> >
>> > Or, shock, horror, tell one-time contributors that it is OK to
>> > put the patch in an attachment to the e-mail.  Outlook doesn't
>> > (usually) mess with the contents of attachments.
>>
>> And then have maintainer having hard time trying to comment on said
>> patch in the attachment. I'd rather not.
>
> I actually think that *this* could be easily handled by trivial
> tooling that doesn't have to be set up over and over again inside
> companies or teaching people.
>
> In fact, doesn't patchwork already do exactly that?
>
> I have to say, there are real technical advantages to using
> attachments for patches, particularly when you have odd combinations
> of locales. It's gotten to be less of an issue over time and we're
> still almost entirely US-ASCII with the occasional UTF-8, but we do
> still have the occasional problem. Using attachments at least detaches
> the email charset from the user locale, and from random other MUA
> issues.
>
> But yes, the "comment on individual parts of the patch" part is very
> important too.
>
> The main problem with having something that rewrites things is that it
> breaks DKIM etc, so you can't just have a pure email gateway. It
> almost needs to be something at a higher semantic level like patchwork
> (that could still send out rewritten emails).
>
> In many cases, you might want that anyway (ie wouldn't it be lovely
> when the patch is also checked for "does it build" and looks up the
> maintainers based on what paths it touches etc etc).
>
> So a sane email / web-interface kind of gateway that allows people to
> work the way they prefer.
>
> But I guess "trivial" is completely the wrong word to use.

We're already starting to use some bots that sit on the mailing lists
and monitor incoming material.

This could be solved with something as simple as a bot that takes the
patch-as-attachment, does a few useful things like runs checkpatch and
makes sure it applies cleanly (maybe report what trees it applies
cleanly to, such as current mainline and next), and then inlines the
whole patch. All as a reply-all to the sender + original recipients.

That way, anyone looking to do an inline review can do it on the bot
version, and the originator will still receive the feedback, etc. It'd
also solve the DKIM-related aspects, if I'm not mistaken.

People who get distracted by the bot emails can easily choose to filter it.


-Olof
