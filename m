Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD18B40C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 21:02:56 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1572A4F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 21:02:55 +0000 (UTC)
Date: Thu, 19 Oct 2017 15:02:53 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@infradead.org>
Message-ID: <20171019150253.4e792f63@lwn.net>
In-Reply-To: <20171019043501.7de7aee3@vela.lan>
References: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
	<20171019043501.7de7aee3@vela.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Documentation session (was: Draft Agenda for
	the Kernel Summit)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 19 Oct 2017 04:35:01 -0700
Mauro Carvalho Chehab <mchehab@infradead.org> wrote:

> Yet, as we'll now have an open slot, and we ended by not adding
> documentation to the Maintainers Summit, if this would be OK for
> Jonathan, I propose to take this slot to do some technical discuss
> about documentation.
> 
> From my side, there are two topics related to documentation that
> that could fit at the technical non-maintainers part of KS:

I'd thought about trying to propose a documentation-oriented session, but
I've just not had the time to really even think about it.

> 1) Grouping drivers documentation files
> 
> While working on media and input doc file conversion to ReST, and while
> looking to other similar driver-specific subsystems, I found a problem
> about how we gather driver documentation.
> 
> On a typical driver subsystem, we have different sorts of documentation:
> 
> 	- uAPI;
> 	- subsystem's core kAPI;
> 	- driver's implementation:
> 	- driver's user-centric stuff (like driver's specific modprobe
> 	  parameters and explanation about how hardware features will
> 	  be visible on userspace);
> 
> The model that it was used with DocBook were to place the uAPI docs under
> the driver API book, and the rest on plain files.

I think, honestly, that media is about the only subsystem that put
UAPI-related stuff in DocBook, just FWIW.  The bulk of the user-space API
has no in-kernel documentation at all, of course.

> I believe that the main reason for it was technical: with the old building 
> system, we needed a XML file in order to handle kernel-doc markups.
> However, using XML for every single doc file was not too practical.
> 
> Now that all doc files can include kernel-doc markups, IMHO we could do
> a better job organizing them.

Well, I have been trying to push that way.  One of my biggest points has
been trying to separate the documentation by audience; somebody looking for
UAPI info or module parameters probably doesn't care about the in-kernel
interfaces.  It's surprising how much resistance I got on that at times,
though.

Beyond that, I'd been trying to resist the temptation to design the
documentation layout too much.  Whatever we come up with seems likely to be
wrong and require some reshuffling anyway.  We've never tried to pull all
of the kernel docs together into a coherent whole before.

> 2) Documentation conversion to ReST
> 
> We finally got rid of the DocBook documents, with were all converted
> to ReST. So, now documentation outside kernel-doc source file markups
> are all in plain text, either using a ReST compatible format or
> using some other random format[1].
> 
> [1] On a patch series I wrote to convert Documentation/*.txt files
>     to a common style, I found several documents using some other
>     Markup language (Markdown, Twiki, media wiki, ...). I also
>     found several documents that seemed to be created by cloning
>     a documentation style that were presenting on other .txt files
>     (probably some de-facto Kernel's own documentation style).
> 
> From maintainer's PoV, in order to make the Kernel documentation
> coherent, we need to stick with just one format and ensure that 
> all new documents should follow it (that's basically why I proposed
> it as a theme for the Maintainers summit), using some tool to check
> if those files are following the documentation style - perhaps adding
> some logic at checkpatch.pl to call Sphinx if a text file is inside a
> patch - letting Sphinx do the file validation. In other words, I still
> think we should discuss it at the Maintainer's summit.

Pushing for RST-compatible formatting makes sense, and I tend to do that
when I see docs posted.  I'm not convinced that we want to apply a lot of
force to get there, though, for not-yet-converted docs.  The whole idea is
for RST to win over on its merits so we don't get too much pushback; for
the most part, I think that's working.

> Yet, from technical standpoint, it makes sense to discuss about how should
> we organize the files at Documentation/ that aren't currently included
> into any existing book.
> 
> My proposal is to cleanup all Documentation/*.txt files, discarding
> the ones that are too outdated up to a point where it won't make sense to
> keep. The remaining files would be moved into a sub-directory,
> renamed to *.rst and added into an existing book (or a new one).

Mauro, when I see you actually wanting to discard an obsolete document I'm
going to fall out of my chair in shock :)

I do very much want to see the remaining documentation brought under the
RST umbrella.  To a great extent, I think it's going to involve working
with the relevant subsystem maintainers, one by one, and doing the
conversion, kerneldoc comment fixups, etc. in a way that doesn't create too
much trouble for them.  Perhaps a session next week could be a good start
on that.

Thanks,

jon
