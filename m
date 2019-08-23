Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8686CDE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:16:01 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ABBE68A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:16:00 +0000 (UTC)
Date: Fri, 23 Aug 2019 23:15:55 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190823193832.GE4791@pendragon.ideasonboard.com>
Message-ID: <alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
References: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<20190823193832.GE4791@pendragon.ideasonboard.com>
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

Laurent,

On Fri, 23 Aug 2019, Laurent Pinchart wrote:
> On Fri, Aug 23, 2019 at 09:17:04PM +0200, Thomas Gleixner wrote:
> >
> > Guess what, how I inject the Link to the coverletter of the previous
> > version of a patch series? Definitely not manualy. 
> 
> Would you be able to share your method for automating this ? I'm sure
> many kernel developers could benefit from such automation (both those
> who insert links manually now, and those who don't insert links at all
> because doing it manually is too tedious).

You asked. Don't complain ...

I use quilt for all patch development work and also for my maintainer work,
IOW for everything. So I have tooling around that in and outside of emacs.

I store quilt queues (series file, patches, notes and some more) in git for
versioning. When I post a series I create a mbox with quilt and some custom
scripting around it.

Those scripts check whether there is already a mbox or several in the
patches directory and if not, then the resulting mbox name is mbox-0. If so
then the highest numbered mbox is looked up and the message id of the cover
letter extracted and injected into the template which is loaded into the
editor to write the cover letter. The resulting mbox name is
mbox-$HIGHEST+1. That mbox is then sent out and also archived in git.

For one off patches, I usally do not bother to save it. It's on the
mailing-list, right? So I utilize the method which I have for incoming
(maintainer work) stuff, which allows me to pick the patch from the list,
feed it through the usual machinery and then I have the msgid link as well,
which I then just move into the discard section when I send out V2. That's
also my workflow when I send out a quick fix for an issue in a reply
without changelog etc. If the reporter confirms, then I just pick it up,
add a changelog and commit it.

For incoming stuff, I just mark a full mailthread or several of them in the
mail client, store it as mbox and then I have a script which creates a
quilt series out of it. That script does a bunch of things:

    - Collect Reviewed-by, Acked-by, Tested-by tags either from individual
      replies or replies to the cover letter. The latter apply to the whole
      series.

    - Adds my Signed-off-by

    - Extract message-id for each patch and add the
      Link: https://lkml.kernel.org/r/$MSGID

    - A few magic things which I need for my emacs integration

I do that for review, applying patches and for development (addressing
feedback on a posted series).

Review usually only when it's complex stuff where I really need to see the
context. Emacs + quilt.el allows me to push/pop the patches, to see patch
and context, unapply/reapply hunks. I then can just create a reply from the
current patch (via Link...MSGID) by pulling out the original mail from the
mbox with more scripting magic and emacs shortcuts which are just burned
into my fingers, but I have to look them up in .emacs if someone asks what
I'm doing :)

When done, I just take the replies which I created on the way and send them
out. Either directly or I load them into the mail client when I want to
polish them some more.

For applying stuff, I also push/pop, review, do final tweaks if necessary,
polish the changelog etc. When I'm happy with the result then the series is
imported into git and pushed into a compile machine for basic checks and I
usually kick some smoke test as well. When thats all good I push it out
into my kernel.org tree and let 0-bot and Ingo's test machinery chew on it.

I also use that for development to address review feedback. So I can go
through the replies in the mbox, eventually write a reply, fixup the
corresponding patches, take notes which I can use for the next cover
letter, etc.

For backporting I have a git to quilt export, which I created for all that
speculation disaster work. That one inserts the 'commit xxxx upstream'
note. I use quilt for that because I'm so used to fix rejects in emacs or
to edit the patch (hunk) in the emacs window before applying it. Aside of
that my brain refuses to work with those git conflict markers and these
half consistent git states. That's like me and vi[m]. I just know how to
get out of the mess without creating further damage. :)

The scripts and tools are all highly undocumented and embarrassing hackery
glued together over two decades; IOW the kind of duct tape engineering
which I fundamentally dislike. :) At least most of my emacs quilt mess is
gone by now as someone with lisp brains did it proper.

That said, my git foo is limited and my oldschool habits have just grown
some warts to utilize the parts of git which I really need and like. Of
course all wrapped in scripts (bash, python, lisp) which hide the gory
details of command line arguments from my brain.

So I can't tell how that can be done in git, but I assume that it's
possible to tweak git-email (or what ever the command is) to emit that
message id and then stash it away in something like git notes for later
retrieval.

For the maintainer side there was something mentioned about some git-am
option which allows to insert the link somehow with some extra hook
magic. IIRC, it's in one of the ksummit threads, but I can't find it right
now.

Thanks,

	tglx
