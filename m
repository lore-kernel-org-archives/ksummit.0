Return-Path: <BATV+e3d6c22ce35a110c4446+5174+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A1A349BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Oct 2017 12:49:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B89CE51B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Oct 2017 12:49:19 +0000 (UTC)
Date: Mon, 23 Oct 2017 14:49:11 +0200
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>
Message-ID: <20171023144911.378bad91@vela.lan>
In-Reply-To: <20171019043501.7de7aee3@vela.lan>
References: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
	<20171019043501.7de7aee3@vela.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: mcheab@s-opensource.com, ksummit-discuss@lists.linuxfoundation.org,
	m.chehab@samsung.com
Subject: [Ksummit-discuss] Documentation session (was: Draft Agenda for the
	Kernel Summit)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 19 Oct 2017 04:35:01 -0700
Mauro Carvalho Chehab <mchehab@infradead.org> escreveu:

> Hi Ted,
> 
> Em Thu, 12 Oct 2017 20:15:34 -0400
> Theodore Ts'o <tytso@mit.edu> escreveu:

Not sure what happened, but I didn't receive the answers from this
e-mail (and not even my original one), although I'm seeing them
at:
	https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2017-October/004876.html

So, I'm just copy-pasting Jon's answer and answering below and answering to
it. 

I'm also copying two other addresses, to be sure that I'll receive any
replies to it.

Ted,

I talked with Jon today, and he said that the time for this session is
not good for him, due to the Kernel panel at OSS.

On Oct 19 21:02:53 UTC 2017
Jonathan Corbet corbet at lwn.net wrote:

> On Thu, 19 Oct 2017 04:35:01 -0700
> Mauro Carvalho Chehab <mchehab at infradead.org> wrote:
> 
> > Yet, as we'll now have an open slot, and we ended by not adding
> > documentation to the Maintainers Summit, if this would be OK for
> > Jonathan, I propose to take this slot to do some technical discuss
> > about documentation.
> > 
> > From my side, there are two topics related to documentation that
> > that could fit at the technical non-maintainers part of KS:
> 
> I'd thought about trying to propose a documentation-oriented session, but
> I've just not had the time to really even think about it.

:-)

> 
> > 1) Grouping drivers documentation files
> > 
> > While working on media and input doc file conversion to ReST, and while
> > looking to other similar driver-specific subsystems, I found a problem
> > about how we gather driver documentation.
> > 
> > On a typical driver subsystem, we have different sorts of documentation:
> > 
> > 	- uAPI;
> > 	- subsystem's core kAPI;
> > 	- driver's implementation:
> > 	- driver's user-centric stuff (like driver's specific modprobe
> > 	  parameters and explanation about how hardware features will
> > 	  be visible on userspace);
> > 
> > The model that it was used with DocBook were to place the uAPI docs under
> > the driver API book, and the rest on plain files.
> 
> I think, honestly, that media is about the only subsystem that put
> UAPI-related stuff in DocBook, just FWIW.  The bulk of the user-space API
> has no in-kernel documentation at all, of course.

Yes, only media was having uAPI related documentation in DocBook. and most
has no in-kernel documentation :-)

There are some uAPI documentation at Documentation/ABI (that reminds the
patchset I wrote sometime ago to generate a book with those stuff).

But there are other subsystems have some uAPI documentation on text files.
I noticed that when I converted the input documentation :-)

There are other places with uAPI (and sysadmin) stuff on per-subsystem
documents, like, for example:

	Documentation/usb/usbmon.txt

> 
> > I believe that the main reason for it was technical: with the old building 
> > system, we needed a XML file in order to handle kernel-doc markups.
> > However, using XML for every single doc file was not too practical.
> > 
> > Now that all doc files can include kernel-doc markups, IMHO we could do
> > a better job organizing them.
> 
> Well, I have been trying to push that way.  One of my biggest points has
> been trying to separate the documentation by audience; somebody looking for
> UAPI info or module parameters probably doesn't care about the in-kernel
> interfaces.  It's surprising how much resistance I got on that at times,
> though.

Yeah, grouping documentation per audience is a good thing. However, 
identifying the audience may not be trivial.

To be clear about what I'm meaning here, my main concern is how to organize
driver documentation.

Right now, for most driver subsystem we're grouping documentation
altogether an a single driver's kAPI book.

Yet, the audience for a random driver subsystem (for instance input)
is likely different than the audience for another subsystem (like network).

In other words, for someone developing stuff for, let's say, the input
subsystem, it is a way more likely that it will likely 

Also, it is a way likely would be a way more likely that someone that reads a
Linux input uAPI to also read a Linux input kAPI than to read about the
network API.

So, grouping per-subsystem makes more sense, IMHO.

That's a side effect of grouping per-subsystem that sounds positive:
people may start from userspace at the initial chapters of the documentation,
and then goes deeper to "advanced" topics, e. g. kAPI. That way, we could
attract more Kernel developers long term.

> Beyond that, I'd been trying to resist the temptation to design the
> documentation layout too much.  Whatever we come up with seems likely to be
> wrong and require some reshuffling anyway.  We've never tried to pull all
> of the kernel docs together into a coherent whole before.

Yeah, I'm pretty sure it will take some time to organize. I won't doubt that
we may need to change things again on some future.

> 
> > 2) Documentation conversion to ReST
> > 
> > We finally got rid of the DocBook documents, with were all converted
> > to ReST. So, now documentation outside kernel-doc source file markups
> > are all in plain text, either using a ReST compatible format or
> > using some other random format[1].
> > 
> > [1] On a patch series I wrote to convert Documentation/*.txt files
> >     to a common style, I found several documents using some other
> >     Markup language (Markdown, Twiki, media wiki, ...). I also
> >     found several documents that seemed to be created by cloning
> >     a documentation style that were presenting on other .txt files
> >     (probably some de-facto Kernel's own documentation style).
> > 
> > From maintainer's PoV, in order to make the Kernel documentation
> > coherent, we need to stick with just one format and ensure that 
> > all new documents should follow it (that's basically why I proposed
> > it as a theme for the Maintainers summit), using some tool to check
> > if those files are following the documentation style - perhaps adding
> > some logic at checkpatch.pl to call Sphinx if a text file is inside a
> > patch - letting Sphinx do the file validation. In other words, I still
> > think we should discuss it at the Maintainer's summit.
> 
> Pushing for RST-compatible formatting makes sense, and I tend to do that
> when I see docs posted.  I'm not convinced that we want to apply a lot of
> force to get there, though, for not-yet-converted docs.  The whole idea is
> for RST to win over on its merits so we don't get too much pushback; for
> the most part, I think that's working.

Yeah, that's true. Yet, IMHO we should do some efforts for the stuff that
are used on other subsystems (like USB and core driver APIs).

If nobody steps up, I may likely do that for USB documents, if I lose
Internet connection and hardware access for some time (like while on some
conference or during Seasons).

> > Yet, from technical standpoint, it makes sense to discuss about how should
> > we organize the files at Documentation/ that aren't currently included
> > into any existing book.
> > 
> > My proposal is to cleanup all Documentation/*.txt files, discarding
> > the ones that are too outdated up to a point where it won't make sense to
> > keep. The remaining files would be moved into a sub-directory,
> > renamed to *.rst and added into an existing book (or a new one).
> 
> Mauro, when I see you actually wanting to discard an obsolete document I'm
> going to fall out of my chair in shock :)

Well, you complained to me a few times that I was converting obsolete
documents :-)

> I do very much want to see the remaining documentation brought under the
> RST umbrella.  To a great extent, I think it's going to involve working
> with the relevant subsystem maintainers, one by one, and doing the
> conversion, kerneldoc comment fixups, etc. in a way that doesn't create too
> much trouble for them.  Perhaps a session next week could be a good start
> on that.

Yeah, sure!

Cheers,
Mauro
