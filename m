Return-Path: <dianders@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63E978BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 17:13:59 +0000 (UTC)
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF6DC756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 17:13:58 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id b10so30057304ioj.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 10:13:58 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
	[209.85.166.47]) by smtp.gmail.com with ESMTPSA id
	l10sm12484412ioa.13.2019.08.26.10.13.55
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 26 Aug 2019 10:13:55 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id x4so38959353iog.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 10:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
In-Reply-To: <CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 26 Aug 2019 10:13:45 -0700
Message-ID: <CAD=FV=VJt4+XRj59h6tmma5LfU52E_6QOSQVjh3T3M+1V=eMsQ@mail.gmail.com>
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

On Sat, Aug 24, 2019 at 11:11 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Sat, Aug 24, 2019 at 9:35 AM Doug Anderson <dianders@chromium.org> wrote:
> >
> > I have no gerrit server involved when I submit patches to the list.  I do:
> >
> > 1. Write patch on my local machine.
> > 2. Post v1 to mailing list.
> > 3. Make changes.
> > 4. Post v2 to mailing list.
> > 5. Make changes.
> > 5. Post v3 to mailing list.
> >
> > I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT LINK!
>
> First off, there *is* a link - just use the mailing list email link
> (preferably for the cover letter - so that a whole series has _one_
> ID, not separate ID's for every patch) just like everybody else does,
> which also means that you get the history of actual other developers
> replying to it (including after it has been committed).
>
> The first time it gets magically and reliably created for you without
> you having to do a single thing. The second time, you just look it up.

The key problem here is that it requires the committer to look
something up and perform a manual step.  IMO this means that the
adoption rate will be near to zero.  The reason that Change-Id
_doesn't_ require a manual step is that it's in your local commit
message and thus automatically stays there.  Thus inaction (leaving
the Change-Id alone as you spin the patch) produces the ideal
behavior.


> Ta-daa - you have a "uuid" that is useful to others, and that
> describes the whole series unambiguously.
>
> So the mailing list archive link is objectively better. You don't have
> to make up some new way to generate a unique ID - one already exists.
>
> Any other UUID would be completely pointless. And don't try to argue
> that it is anything _but_ pointless. As far as everybody else in the
> whole wide world is concerned, it would be better if you just pointed
> to the original submission, not to some
> made-up-makes-sense-only-to-you UUID that others would have to google
> and hope for the best.
>
> End result: if you actually want to be useful to *other* people, then
> when you do your "v2" posting of the patch series, instead of that
> completely useless UUID, just link to the previous posted version in
> the new cover letter.
>
> Now that link exists and is useful for others too, both from a git
> history standpoint, but also from a "look, this is the last time I
> posted this, just to remind you, or you can go look at the comments
> then and verify that they got fixed up".
>
> In other words, stop arguing for an objectively much worse UUID.
>
> You can have it locally if you want to, but realize that NOBODY ELSE
> finds it the least useful at all. It's just random noise you yourself
> generated for your own use, and isn't interesting or relevant to
> anybody else.
>
> In contrast, if you actually put a link to a previous conversation,
> that link will be valid and useful even if
>
>  (a) it wasn't even a previous conversion on that mailing list at all,
> but a link to something like a bugzilla entry, or a CPU vendor errata
> sheet or whatever
>
>  (b) even if it was a previous conversation on the mailing list, maybe
> it wasn't one that you started, but you're instead basing your series
> (partially or wholly) on somebody elses earlier work.
>
> Notice how a UUID fundamentally could not handle either of the above
> obvious cases. Nobody else generates a uuid for you (except for that
> message-id-uuid that already exists).
>
> So stop arguing for UUID's. They are fundamentally a bad idea.
>
> The *only* actual valid reason I have ever seen for UUID's (and yes,
> this is not the first time they've been brought up, which is why I
> hate them with a passion) is to use it as a magic link inside some
> vendors private database when that vendor doesn't want to expose any
> actual real information.

What I see here is:

1. A valid reason to have a UUID is to help a machine that's
processing data.  Specifically UUIDs are well-formed and easy for a
machine to understand (unlike a link which could point to anything).

2. In the past you don't like UUIDs because the machines making sense
of them are private.

In this thread I am trying to argue that if we allow UUIDs in the
public email lists that anyone will be able to create a useful and
public database linking patch versions together.


> In other words: UUID's are bad and pointless. Their only "valid" use
> is explicitly against the whole point of open development.
>
> Use an actual open standard instead: a web link. It can be anything.

The "It can be anything" is the problem with links.  Computers trying
to parse things like to have well-formed and well defined information.
Presumably if we had any chance of having computers parse these links
we need to have a _very_ will defined format for how a new version of
the patch points to the previous versions.  Everyone has to agree to
use the exact same well defined format.

--

NOTE: from reading all of this, one thing that I should probably be
able to do myself is:

1. Keep having Change-Id in my patches on my local computer.

2. Have the scripts I use to post upstream (which strips Change-Id out
before posting) encode the Change-Id into the Message-Id in a way that
it could be recovered, like:

Message-Id: Ic3e54798e4aeaa862b2e8eebcbbcef4e51ccae19-2018-1231-235959-1

...presumably that would have zero objections from anyone, but would
also be nearly useless since only my own patches would honor this
convention and the whole point is to later enable a machine to parse
them.


-Doug
