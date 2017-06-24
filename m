Return-Path: <mchehab@s-opensource.com>
Date: Sat, 24 Jun 2017 10:41:42 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20170624104142.70677fcb@vento.lan>
In-Reply-To: <1779146.rtcHP5MkoH@aspire.rjw.lan>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
	<1779146.rtcHP5MkoH@aspire.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 24 Jun 2017 14:20:40 +0200
"Rafael J. Wysocki" <rjw@rjwysocki.net> escreveu:

> On Saturday, June 24, 2017 07:46:41 AM Mauro Carvalho Chehab wrote:
> > Em Fri, 23 Jun 2017 12:39:36 -0600
> > Jonathan Corbet <corbet@lwn.net> escreveu:
> >   

> > Being able of grouping the documents into books is another big
> > advantage. It is now clearer where some document should be placed.  
> 
> I'm not so sure about this one.
> 
> I sometimes find it somewhat hard to split things to make them fall nicely into
> one of the prescribed "bins".

Yeah, one of the problems with existing documentation is that,
sometimes, the same document describes both userspace-relevant
info and kernelspace APIs.

While sometimes it makes sense to split those two, on other cases,
it doesn't. That's specially true on documentation for an specific
driver. For example the cpia2 driver documentation:
	https://www.kernel.org/doc/html/latest/media/v4l-drivers/cpia2.html

contains a mix of user's information and programmers information.
I found lots of similar cases on the documentation for input drivers.

I guess one of the discussions we need to have is with regards
to how to better organize things.

Anyway, that forces us to think about better organizing the stuff
we have, so, IMHO, it is a good thing.

> I guess it gets easier when writing documentation from scratch.

Yes.


> 
> > Also, several text editors (both TUI and GUI) are able to recognize 
> > ReST format and use colors for highlights.  
> 
> Honestly, I've had a mixed experience with that.  In some cases I wish they
> had not done that. :-)

:-)

Yeah, there are bugs on highlights on some tools. Yet, I like it, 
because, when visualizing docs in text mode, it does emphasis to things
like bold, italics, etc.

> 
> > So, there are improvements even for those that don't care about
> > fancy html/pdf books, as the documentation will look more coherent
> > and better organized.  
> 
> I actually think that being able to generate HTML output with active
> cross-reference links is a *huge* advantage as it makes it way easier to
> browse it (plus the fact that it is automatically made available in HTML
> by kernel.org).

Yes, that's a huge advantage. It also allows me reply with URLs when
complaining about someone not doing the right thing, instead of
writing otherwise longer explanations.

> > In the specific case of media, converting to plain ASCII is a *huge*
> > regression, and some tables simply don't fit at a 80 columns
> > requirement. In summary, We have several tables there to describe
> > bit fields on a 64-bits word (for example, do describe how images
> > are encoded). For such tables, we would require at least 210+ characters
> > per line. So, converting them to plain ASCII simply makes them a lot
> > worse to read.
> > 
> > Also, as our uAPI documentation was always using an enriched text
> > language (they were originally written in LaTeX and PDF, back in the
> > nineties), converting them to plain ASCII actually means to rewrite
> > the entire thing.
> > 
> > Even the conversion to ReST required us to change the format of
> > several tables (as we were using a lot to have tables inside tables,
> > and ReST doesn't support it). Thankfully, Markus found a way to
> > do such conversion via script. Yet, we had lots of manual work to
> > fix stuff after that.
> > 
> > So, I think we should continue the conversion.  
> 
> I agree and, as I said, I'm going to do that for the PM and ACPI documentation.
> 
> At the same time I think it would be good to take that as an opportinity to
> improve the *content* of the documentation files as well, so not just
> convert them, but also make them more up to date etc in the process.

Agreed. From my experience of converting documents outside my main
area of domain, a lot of documents are getting more attention in the
conversion process, with attract patches for fixing broken stuff on them.

> > -
> > 
> > From my PoV, after the next merge window, we shouldn't expect more
> > conflicts related to DocBook conversion. 
> > 
> > However, we'll still have conflicts for the files that are under 
> > Documentation/*.txt, as there are stuff there from random subsystems,
> > although get_maintainers usually point them all to the docs subsystem.
> > 
> > I recently took the effort of sending patches converting all those
> > text patches to ReST (except for logo.txt). I opted to not rename them
> > to ReST nor add them on any existing book[1], in order to avoid
> > merge conflicts.
> > 
> > [1] I added a patch that creates an "unsorted" book at the end of 
> > series meant just to allow testing the conversion.
> > 
> > IMHO, the next step would be to merge those patches by the end of the
> > next merge window (in order to avoid most conflicts).
> > 
> > Then, I would move those files to subdirectories, renaming them to ReST
> > and adding on some index.rst file.  
> 
> One comment on that.
> 
> There are pieces of .txt documentation falling into the "well-knows source of
> information" category, with many references to them all over the Web.
> kernel-parameters.txt is probably the most spectacular example here, but there
> are others.
> 
> Let us not move or rename these, please, or at least put symbolic links in
> place to point to the new locations or similar, such that the existing WWW
> links pointing to the documentation at kernel.org still work going forward.
> 
> And if we have moved or renamed them already, can we possibly make these
> links work again somehow?

Agreed. We discussed in the past about two alternatives for those
"well known" documents:

	1) write a small text on the old file pointing to the
	   new location;
	2) use symlink.

Right now, we're actually mixing (1) and (2). IMHO, we should either
do (1) or (2).

My personal preference is for (1), as it force people to update
cross-references to the right place, but I'm OK with (2) too.

A separate matter is what are those "well known" documents. I bet
different Kernel developers will point to different sets of documents
they consider to be the ones that require some sort of symlinks ;-)

Thanks,
Mauro
