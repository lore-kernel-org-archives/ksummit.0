Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1D06177D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:43:28 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 430718AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:43:28 +0000 (UTC)
Date: Tue, 27 Aug 2019 01:43:23 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20190826230206.GC28066@mit.edu>
Message-ID: <alpine.DEB.2.21.1908270133190.1939@nanos.tec.linutronix.de>
References: <20190826230206.GC28066@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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

On Mon, 26 Aug 2019, Theodore Y. Ts'o wrote:
> On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> > 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> > will modify the tools I use to post upstream (currently patman) to
> > encode the Change-Id.  My naive proposal would be:
> > 
> > Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> > 
> > If I try this and it works for me then I will post out and suggest
> > that any other like-minded people encode Change-Id into Message-Id in
> > a similar way.
> 
> ... and I would expect patches with this would get NACK'ed because
> they would be just as useless as Change-Id's are perceived to be
> today.  People who are gaming the rules will tend not to looked upon
> favorably; the same will apply to their patches.
> 
> BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
> msg-id has to look like a e-mail address (left-hand-side@example.com).
> So something like this is legal as a message id:
> 
> I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com
> 
> ... and indeed, that's more useful, because it tells us how to
> interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
> Change-Id assigned by the linux-review.googlesource.com Gerrit server.
> 
> In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
> going to be presumed to be useless.  And in fact, a Google search for
> this ID returns *nothing*.  Yet visiting the link
> https://linux-review.googlesource.com/c/1158 actually returns
> something useful.   That's why the latter is superior to the former.

That's fine, but the point is that nobody will prevent you from frobbing
your message-id's in a way which encodes other information into it as long
as the message-id is RFC compliant. We simply don't care because the result
is just a message-id as any other in the mail header of your patch
submission,

I agree that a full gerrit link is more useful, but what Doug described is
not connected to a gerrit server at all. He just (ab)uses the tooling which
allows him to create a unique ID to track versions of his patches.

Actually not the worst idea. If the result is not part of the changelog and
just part of the email then generating the id with

     id = make_msgid(ChangeId)

will still generate something useful for everyone because we can add:

     Link: https://lore.kernel.org/lkml/$id

and Doug can grep the archives for $id.

I truly don't care whether the Message-ID header contains extra information
as long as it is properly formatted.

Thanks,

	tglx
