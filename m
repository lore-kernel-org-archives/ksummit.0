Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DDF91146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:05:42 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C88F89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:05:41 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id q22so16226976iog.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
In-Reply-To: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 22 Aug 2019 18:05:29 -0700
Message-ID: <CAOesGMhOvjihHvncLaove80vr0qeOjtZ=HPLiMtSL+it84aGuQ@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 22, 2019 at 5:45 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Thu, Aug 22, 2019 at 5:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > On 8/22/19 5:30 PM, Olof Johansson wrote:
> > > On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
> > > <torvalds@linux-foundation.org> wrote:
> > >>
> > >> On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
> > >>>
> > >>> The Linux kernel has always viewed these Change-Id tags as obnoxious
> > >>> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> > >>> patch when posting to the mailing list is told to please re-post their
> > >>> patch without the Change-Id.  In this email, I will attempt to argue
> > >>> that the Linux kernel ought to relax this restriction and allow
> > >>> (possibly even encourage) Change-Ids.
> > >>
> > >> No.
> > >>
> > >> Not without some ground rules.
> > >>
> > >>> To begin with, let me make sure we're on the same page about what
> > >>> Change-Ids are.  As I understand it:
> > >>>
> > >>> * A change ID is much alike a UUID.  It is locally generated on a
> > >>> developer's computer and is (in theory) unique across the universe.
> > >>
> > >> Completely irrelevant.
> > >>
> > >> The point of an UUID is not just that it's unique, but THAT YOU CAN
> > >> LOOK SOMETHING UP USING IT!
> > >>
> > >> A "change ID" that I can't use to look anything up with is completely
> > >> pointless and should be removed from kernel history.
> > >>
> > >> But if you have something unique that is actually useful for looking
> > >> things up, then by all means. But it needs to be useful for
> > >> _everybody_.
> > >>
> > >>> * When a developer keeps the same Change-Id across two patches they
> > >>> are making the assertion that the two patches are either the same or
> > >>> should be treated as two versions of the same logical change.
> > >>
> > >> .. and we have better ways to do that.
> > >>
> > >> For example, we are actively encouraging things like message ID's
> > >> (which are _also_ a form of locally generated UUID, they just are more
> > >> than the silly purely numerical one).
> > >>
> > >> That gives you the origin of something, but it also gives you the
> > >> development history and context.
> > >>
> > >> But note that how when it comes to message ID's we encourage them in a
> > >> form that actually also helps look that information up, ie the
> > >> preferred form isn't just the message ID (although that exists), it's
> > >> a link like
> > >>
> > >>      Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
> > >>
> > >> instead of
> > >>
> > >>     Message-ID: 20190723065733.4899-5-leon@kernel.org
> > >>
> > >> even though technically they have just as much actual information in theory.
> > >>
> > >> Do you see people complaining about that kind of UUID? No.  Because it
> > >> gives useful information to the project, and when something happens,
> > >> people can look things up and _use_ that kind of UUID.
> > >
> > > For the actual open projects, the answer to this might be relative
> > > easy: Most gerrit instances can feed a mailing list with emails of
> > > both the initial patch, and later comments.
> > >
> > > Said emails would obviously have a Message-ID, and if the list is
> > > added to lore, it can be referenced there.
> > >
> > > Note, even if the Change-Id had a full URL, there would be no archival
> > > guarantee in the same way as lore gives us, so that approach alone
> > > isn't useful. A URL to a "forever" mailing list archive seems like the
> > > most stable possible reference.
> > >
> > > This doesn't address the full issue Doug was looking to solve, which
> > > is the reverse mapping of "posted patch" to "previous version of the
> > > patch". Patchwork tries to guess this, but it's best effort. I don't
> > > have a great answer to this, besides possibly in-reply-to threading
> > > and associating back that way via the email trail.
> > >
> >
> > Wouldn't a direct link to the Gerrit instance solve the problem ?
> > After all,
> >
> > Link: https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1759334
> >
> > points to the same Gerrit entry as
> >
> > Change-Id: I5a2e33424e7fb19fed13afb854ae6546ef9bfa35
> >
> > and there would be no need to look anything up.
>
> Nope, for the same reason I already mentioned: In 2 years when Google
> deprecates Chromium and EOL's the product and project (see: Reader,
> Google+, Youtube messaging), there will be no way to get to the
> history. (I know, unlikely in this case, but URLs move without
> redirects, etc).
>
> Lore solves that, since it's externally archived.

Actually, it seems like the outgoing email already has suitable headers.

I looked up a random review, and viewed raw message:

https://groups.google.com/a/chromium.org/forum/#!original/chromium-os-reviews/Y2R_LLKytQw/M0TRRzfoAgAJ

X-Gerrit-Change-Id: I50d72612569743198825afdf41200c15db759076
X-Gerrit-Change-Number: 1762035
X-Gerrit-ChangeURL:
<https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1762035>
X-Gerrit-Commit: 5b7dff2b2cb0b1a8769a53d59e387772ae569243

Since that would be captured in a mail archive, you could easily get
it from there if needed.

Based on this, there's no reason to use opaque Change-Id, all the
functionality needed can be reached through the mail URLs we already
agreed are reasonable to use.


(Someone should maybe tell Hao that he has the email address
misspelled in his S-o-b).


-Olof
