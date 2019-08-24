Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85450AA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 18:11:54 +0000 (UTC)
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ABC04B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 18:11:53 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id x18so11686456ljh.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 11:11:53 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com.
	[209.85.167.45]) by smtp.gmail.com with ESMTPSA id
	s10sm1243199ljm.35.2019.08.24.11.11.48
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 24 Aug 2019 11:11:49 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id f21so4427737lfc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 11:11:48 -0700 (PDT)
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
In-Reply-To: <CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 24 Aug 2019 11:11:32 -0700
Message-ID: <CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
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

On Sat, Aug 24, 2019 at 9:35 AM Doug Anderson <dianders@chromium.org> wrote:
>
> I have no gerrit server involved when I submit patches to the list.  I do:
>
> 1. Write patch on my local machine.
> 2. Post v1 to mailing list.
> 3. Make changes.
> 4. Post v2 to mailing list.
> 5. Make changes.
> 5. Post v3 to mailing list.
>
> I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT LINK!

First off, there *is* a link - just use the mailing list email link
(preferably for the cover letter - so that a whole series has _one_
ID, not separate ID's for every patch) just like everybody else does,
which also means that you get the history of actual other developers
replying to it (including after it has been committed).

The first time it gets magically and reliably created for you without
you having to do a single thing. The second time, you just look it up.

Ta-daa - you have a "uuid" that is useful to others, and that
describes the whole series unambiguously.

So the mailing list archive link is objectively better. You don't have
to make up some new way to generate a unique ID - one already exists.

Any other UUID would be completely pointless. And don't try to argue
that it is anything _but_ pointless. As far as everybody else in the
whole wide world is concerned, it would be better if you just pointed
to the original submission, not to some
made-up-makes-sense-only-to-you UUID that others would have to google
and hope for the best.

End result: if you actually want to be useful to *other* people, then
when you do your "v2" posting of the patch series, instead of that
completely useless UUID, just link to the previous posted version in
the new cover letter.

Now that link exists and is useful for others too, both from a git
history standpoint, but also from a "look, this is the last time I
posted this, just to remind you, or you can go look at the comments
then and verify that they got fixed up".

In other words, stop arguing for an objectively much worse UUID.

You can have it locally if you want to, but realize that NOBODY ELSE
finds it the least useful at all. It's just random noise you yourself
generated for your own use, and isn't interesting or relevant to
anybody else.

In contrast, if you actually put a link to a previous conversation,
that link will be valid and useful even if

 (a) it wasn't even a previous conversion on that mailing list at all,
but a link to something like a bugzilla entry, or a CPU vendor errata
sheet or whatever

 (b) even if it was a previous conversation on the mailing list, maybe
it wasn't one that you started, but you're instead basing your series
(partially or wholly) on somebody elses earlier work.

Notice how a UUID fundamentally could not handle either of the above
obvious cases. Nobody else generates a uuid for you (except for that
message-id-uuid that already exists).

So stop arguing for UUID's. They are fundamentally a bad idea.

The *only* actual valid reason I have ever seen for UUID's (and yes,
this is not the first time they've been brought up, which is why I
hate them with a passion) is to use it as a magic link inside some
vendors private database when that vendor doesn't want to expose any
actual real information.

In other words: UUID's are bad and pointless. Their only "valid" use
is explicitly against the whole point of open development.

Use an actual open standard instead: a web link. It can be anything.
It can be a link to a previous version, it can be a link to further
documentation, it can be a link to _anything_ on the internet for
later reference.

And if it isn't on the internet visible to everybody else, then it
should be described outright in the commit message itself. Or it
shouldn't be there at all.

Are there other possibly valid things? Yes. But they do not include UUID's.

For example, if you want to refer to something in the physical world,
and you can't find a link to it online, by all means use other
standard and public ways to do that. Use the ISBN for a book or an
ISSN for a magazine. Or use the address for a physical location,
whatever. That's not a random and meaningless number, it's something
useful that can be looked up later and thus quite possibly worth
saving in a commit message.

There are probably hundreds of those "useful to be looked up later"
things. But a UUID is not one of them.

              Linus
