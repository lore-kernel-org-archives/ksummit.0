Return-Path: <dianders@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EAF72113B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:07:18 +0000 (UTC)
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33E2889B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 01:07:18 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id l7so16239748ioj.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:07:18 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
	[209.85.166.43])
	by smtp.gmail.com with ESMTPSA id i9sm1358478ioe.35.2019.08.22.18.07.15
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 18:07:16 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id t6so16224369ios.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 18:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
In-Reply-To: <CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 22 Aug 2019 18:07:02 -0700
Message-ID: <CAD=FV=UFSmZwydm7pgGXv-nMM2-9C0qZqGzOJo73b0y6+b4pZw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

Hi,

On Thu, Aug 22, 2019 at 5:17 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> > To begin with, let me make sure we're on the same page about what
> > Change-Ids are.  As I understand it:
> >
> > * A change ID is much alike a UUID.  It is locally generated on a
> > developer's computer and is (in theory) unique across the universe.
>
> Completely irrelevant.
>
> The point of an UUID is not just that it's unique, but THAT YOU CAN
> LOOK SOMETHING UP USING IT!
>
> A "change ID" that I can't use to look anything up with is completely
> pointless and should be removed from kernel history.
>
> But if you have something unique that is actually useful for looking
> things up, then by all means. But it needs to be useful for
> _everybody_.

I presumably wasn't clear in my proposal.  My apologies and I will try
to be clearer.  I am proposing this:

1. I post v1 of my patch series to public mailing lists, like LKML.
Each patch in the series is tagged with a Change-Id which my own PC
made up.  I never touch a gerrit server anywhere.

2. I post v2 of my patch series to a public mailing list.  I make sure
that patches that are supposed to be newer versions of the same patch
in v1 contain the same Change-Id that they had in v1.  This is
something I already know how to do since sometimes I use gerrit and
that's how you work with gerrit.  I still haven't touched a single
gerrit server in this process.

3. The patch lands and still has the Change-Id.

Someone looking at the git history in the kernel can find the old
versions by searching public mailing lists for the Change-Id simply
using the standard ways to search mailing lists for a string.  There
is nothing excluding anyone here and it should be useful for everyone.

Someone doing a search of the mailing lists that finds patch v1 can
note the Change-Id and search the same mailing lists (and the kernel
history) for that Change-Id.  They can find it because the same string
was in v1 and v2.


> > * When a developer keeps the same Change-Id across two patches they
> > are making the assertion that the two patches are either the same or
> > should be treated as two versions of the same logical change.
>
> .. and we have better ways to do that.
>
> For example, we are actively encouraging things like message ID's
> (which are _also_ a form of locally generated UUID, they just are more
> than the silly purely numerical one).
>
> That gives you the origin of something, but it also gives you the
> development history and context.

I do not believe that there is any way to start with the Message-Id of
v2 of a patch and easily find v1 of the same patch.  Things like
cregit and email2git may have heuristics here, but I'm fairly certain
that they are not guaranteed to work.  I am happy to be corrected
here.  I can also spend time finding examples of cregit and email2git
failing if needed.


> But note that how when it comes to message ID's we encourage them in a
> form that actually also helps look that information up, ie the
> preferred form isn't just the message ID (although that exists), it's
> a link like
>
>     Link: https://lore.kernel.org/r/20190723065733.4899-5-leon@kernel.org
>
> instead of
>
>    Message-ID: 20190723065733.4899-5-leon@kernel.org
>
> even though technically they have just as much actual information in theory.

At the moment there is a chicken-and-egg problem.  We can't create
such a tool until Change-Id is there and Change-Id can't be there till
there is a tool.  However, I guess that could be solved by convincing
someone to create a tool that would return a list of emails that match
a given string.  Presumably such a tool would need to be hosted on
kernel.org.

NOTE: part of the usefulness of Change-Id is that it could be parsed
by a machine so that tools such as patchwork, gerrit, or other
not-yet-invented tools can always find the Change-Id.  If we were to
post it as a URL, I would want to make sure that everyone always used
the same URL.

I would further note that when you do "git log" each change is listed
with a random number (the git hash), not:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=59c36bc8d377c8764eb617a92211e0fc2f1318da

...so there is at least one precedent where people accept having an
ID, not a clickable URL.


> > At the moment, Change-Ids are highly associated in people's minds with
> > gerrit and many upstream developers dislike gerrit.
>
> No. That's not it at all. It's not "dislike gerrit".
>
> It's "dislike pointless garbage".
>
> If the gerrit database is public and searchable using the uuid, then
> that would make the uuid useful to outsiders. And instead of just
> putting a UUID (which is hard to look up unless you know where it came
> from), make it be that "Link:" that gives not just the UUID, but also
> gives you the metadata for that UUID to be looked up.
>
> But so far, in every single case the uuid's I've ever seen have been
> pointless garbage, that aren't useful in general to public open source
> developers, and as such shouldn't be in the git tree.
>
> See the difference?
>
> So if you guys make the gerrit database actually public, and then
> start adding "Link: ..." tags so that we can see what they point to, I
> think people will be more than supportive of it.
>
> But if it's some stupid and pointless UUID that is useful to nobody
> outside of google (or special magical groups of people associated with
> it), then I will personally continue to be very much against it.
>
> If it's some internal database for your exclusive club, then you can
> just have your own internal database to look that UUID up using a
> commit ID (or a patch ID that is generated from the patch), and you
> don't need to pollute the public with non-public noise.
>
> Do people do that "pointless pullution" thing? Yes, I've seen various
> companies add their garbage to the commit logs. Sometimes it makes it
> through. But if I see an email with random noise in it, I will
> personally remove that random useless noise.
>
> This is part of what "open source" is all about. There aren't supposed
> to be special people with access to inside information that get
> preferential treatment. If you have your private stuff, then fine, but
> keep it private. It has no business being in the public tree.

So I'm hoping that I addressed this above in saying that the Change-Id
I'm talking about has nothing to do with any gerrit server.  The
database is public because it is the existing mailing list archive.
Any use of the same Change-Id on an internal gerrit server is
meaningless in the context of my proposal.

-Doug
