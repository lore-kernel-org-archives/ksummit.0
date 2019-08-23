Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84393EB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:17:27 +0000 (UTC)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5B237FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 00:17:26 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id m24so7185819ljg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:17:26 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
	[209.85.208.181]) by smtp.gmail.com with ESMTPSA id
	n187sm262445lfa.30.2019.08.22.17.17.21
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 17:17:22 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id e27so7191183ljb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 17:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Aug 2019 17:17:05 -0700
Message-ID: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	Dmitry Vyukov <dvyukov@google.com>, David Rientjes <rientjes@google.com>,
	Dmitry Torokhov <dtor@chromium.org>
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

On Thu, Aug 22, 2019 at 4:40 PM Doug Anderson <dianders@chromium.org> wrote:
>
> The Linux kernel has always viewed these Change-Id tags as obnoxious
> and useless spam.  Anyone who accidentally leaves a Change-Id in their
> patch when posting to the mailing list is told to please re-post their
> patch without the Change-Id.  In this email, I will attempt to argue
> that the Linux kernel ought to relax this restriction and allow
> (possibly even encourage) Change-Ids.

No.

Not without some ground rules.

> To begin with, let me make sure we're on the same page about what
> Change-Ids are.  As I understand it:
>
> * A change ID is much alike a UUID.  It is locally generated on a
> developer's computer and is (in theory) unique across the universe.

Completely irrelevant.

The point of an UUID is not just that it's unique, but THAT YOU CAN
LOOK SOMETHING UP USING IT!

A "change ID" that I can't use to look anything up with is completely
pointless and should be removed from kernel history.

But if you have something unique that is actually useful for looking
things up, then by all means. But it needs to be useful for
_everybody_.

> * When a developer keeps the same Change-Id across two patches they
> are making the assertion that the two patches are either the same or
> should be treated as two versions of the same logical change.

.. and we have better ways to do that.

For example, we are actively encouraging things like message ID's
(which are _also_ a form of locally generated UUID, they just are more
than the silly purely numerical one).

That gives you the origin of something, but it also gives you the
development history and context.

But note that how when it comes to message ID's we encourage them in a
form that actually also helps look that information up, ie the
preferred form isn't just the message ID (although that exists), it's
a link like

    Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org

instead of

   Message-ID: 20190723065733.4899-5-leon@kernel.org

even though technically they have just as much actual information in theory.

Do you see people complaining about that kind of UUID? No.  Because it
gives useful information to the project, and when something happens,
people can look things up and _use_ that kind of UUID.

> At the moment, Change-Ids are highly associated in people's minds with
> gerrit and many upstream developers dislike gerrit.

No. That's not it at all. It's not "dislike gerrit".

It's "dislike pointless garbage".

If the gerrit database is public and searchable using the uuid, then
that would make the uuid useful to outsiders. And instead of just
putting a UUID (which is hard to look up unless you know where it came
from), make it be that "Link:" that gives not just the UUID, but also
gives you the metadata for that UUID to be looked up.

But so far, in every single case the uuid's I've ever seen have been
pointless garbage, that aren't useful in general to public open source
developers, and as such shouldn't be in the git tree.

See the difference?

So if you guys make the gerrit database actually public, and then
start adding "Link: ..." tags so that we can see what they point to, I
think people will be more than supportive of it.

But if it's some stupid and pointless UUID that is useful to nobody
outside of google (or special magical groups of people associated with
it), then I will personally continue to be very much against it.

If it's some internal database for your exclusive club, then you can
just have your own internal database to look that UUID up using a
commit ID (or a patch ID that is generated from the patch), and you
don't need to pollute the public with non-public noise.

Do people do that "pointless pullution" thing? Yes, I've seen various
companies add their garbage to the commit logs. Sometimes it makes it
through. But if I see an email with random noise in it, I will
personally remove that random useless noise.

This is part of what "open source" is all about. There aren't supposed
to be special people with access to inside information that get
preferential treatment. If you have your private stuff, then fine, but
keep it private. It has no business being in the public tree.

            Linus
