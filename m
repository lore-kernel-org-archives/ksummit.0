Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Date: Sat, 24 Jun 2017 14:20:40 +0200
Message-ID: <1779146.rtcHP5MkoH@aspire.rjw.lan>
In-Reply-To: <20170624074641.4820fecd@vento.lan>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

On Saturday, June 24, 2017 07:46:41 AM Mauro Carvalho Chehab wrote:
> Em Fri, 23 Jun 2017 12:39:36 -0600
> Jonathan Corbet <corbet@lwn.net> escreveu:
> 
> > The docs pull for 4.13 will include the conversion of the last DocBook
> > template files, thanks mostly to Mauro.  That's the good news; the bad
> > news is that I get to explain a lot of merge conflicts to Linus, most of
> > which result from other trees reaching into Documentation/ and changing
> > files that have been converted.
> > 
> > I can continue in this mode, but I do wonder if there's a better way out
> > there somewhere.  So I think there would be value in a session on the
> > maintenance of "subsystems" that don't fit neatly into the kernel
> > source-tree hierarchy.
> 
> Unfortunately, conflicts are unavoidable for such kind of conversion,
> as git won't identify it as a rename.
> 
> > We could also talk about the state of the RST conversion and whether/how
> > we'd like it to continue.  Perhaps we would rather, as Peter recently
> > suggested, "just delete all that nonsense and go back to 80 column 7bit
> > ASCII"?  In general, what do the maintainers want from the documentation
> > subsystem, and how can we make it easy to continue improving our docs?
> 
> From my side, going to plain ASCII is a very bad idea. 
> 
> After converting hundreds of text files to ReST, the big problem we have
> with text files is that they don't use the same notation. It is a big
> mess. Even before the ReST conversion, what we had is:
> 
> 	Some files there doesn't even have titles
> 	Some files use markdown
> 	Some files use MediaWiki notation
> 	Some files use ReST
> 	Some files use their own notation.
> 
> I guess the great benefit of adopting ReST (with would have been
> achieved if we had adopted any other notation) is that now we have a
> documentation style.
> 
> Just placing all documents in the same style is a huge improvement
> from what we had before.

Agreed.

> Being able of grouping the documents into books is another big
> advantage. It is now clearer where some document should be placed.

I'm not so sure about this one.

I sometimes find it somewhat hard to split things to make them fall nicely into
one of the prescribed "bins".

I guess it gets easier when writing documentation from scratch.

> Also, several text editors (both TUI and GUI) are able to recognize 
> ReST format and use colors for highlights.

Honestly, I've had a mixed experience with that.  In some cases I wish they
had not done that. :-)

> So, there are improvements even for those that don't care about
> fancy html/pdf books, as the documentation will look more coherent
> and better organized.

I actually think that being able to generate HTML output with active
cross-reference links is a *huge* advantage as it makes it way easier to
browse it (plus the fact that it is automatically made available in HTML
by kernel.org).

> In the specific case of media, converting to plain ASCII is a *huge*
> regression, and some tables simply don't fit at a 80 columns
> requirement. In summary, We have several tables there to describe
> bit fields on a 64-bits word (for example, do describe how images
> are encoded). For such tables, we would require at least 210+ characters
> per line. So, converting them to plain ASCII simply makes them a lot
> worse to read.
> 
> Also, as our uAPI documentation was always using an enriched text
> language (they were originally written in LaTeX and PDF, back in the
> nineties), converting them to plain ASCII actually means to rewrite
> the entire thing.
> 
> Even the conversion to ReST required us to change the format of
> several tables (as we were using a lot to have tables inside tables,
> and ReST doesn't support it). Thankfully, Markus found a way to
> do such conversion via script. Yet, we had lots of manual work to
> fix stuff after that.
> 
> So, I think we should continue the conversion.

I agree and, as I said, I'm going to do that for the PM and ACPI documentation.

At the same time I think it would be good to take that as an opportinity to
improve the *content* of the documentation files as well, so not just
convert them, but also make them more up to date etc in the process.

> -
> 
> From my PoV, after the next merge window, we shouldn't expect more
> conflicts related to DocBook conversion. 
> 
> However, we'll still have conflicts for the files that are under 
> Documentation/*.txt, as there are stuff there from random subsystems,
> although get_maintainers usually point them all to the docs subsystem.
> 
> I recently took the effort of sending patches converting all those
> text patches to ReST (except for logo.txt). I opted to not rename them
> to ReST nor add them on any existing book[1], in order to avoid
> merge conflicts.
> 
> [1] I added a patch that creates an "unsorted" book at the end of 
> series meant just to allow testing the conversion.
> 
> IMHO, the next step would be to merge those patches by the end of the
> next merge window (in order to avoid most conflicts).
> 
> Then, I would move those files to subdirectories, renaming them to ReST
> and adding on some index.rst file.

One comment on that.

There are pieces of .txt documentation falling into the "well-knows source of
information" category, with many references to them all over the Web.
kernel-parameters.txt is probably the most spectacular example here, but there
are others.

Let us not move or rename these, please, or at least put symbolic links in
place to point to the new locations or similar, such that the existing WWW
links pointing to the documentation at kernel.org still work going forward.

And if we have moved or renamed them already, can we possibly make these
links work again somehow?

Thanks,
Rafael
