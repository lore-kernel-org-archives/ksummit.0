Return-Path: <mchehab@s-opensource.com>
Date: Sat, 24 Jun 2017 07:46:41 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20170624074641.4820fecd@vento.lan>
In-Reply-To: <20170623123936.42dab05f@lwn.net>
References: <20170623123936.42dab05f@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
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

Em Fri, 23 Jun 2017 12:39:36 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> The docs pull for 4.13 will include the conversion of the last DocBook
> template files, thanks mostly to Mauro.  That's the good news; the bad
> news is that I get to explain a lot of merge conflicts to Linus, most of
> which result from other trees reaching into Documentation/ and changing
> files that have been converted.
>=20
> I can continue in this mode, but I do wonder if there's a better way out
> there somewhere.  So I think there would be value in a session on the
> maintenance of "subsystems" that don't fit neatly into the kernel
> source-tree hierarchy.

Unfortunately, conflicts are unavoidable for such kind of conversion,
as git won't identify it as a rename.

> We could also talk about the state of the RST conversion and whether/how
> we'd like it to continue.  Perhaps we would rather, as Peter recently
> suggested, "just delete all that nonsense and go back to 80 column 7bit
> ASCII"?  In general, what do the maintainers want from the documentation
> subsystem, and how can we make it easy to continue improving our docs?

=46rom my side, going to plain ASCII is a very bad idea.=20

After converting hundreds of text files to ReST, the big problem we have
with text files is that they don't use the same notation. It is a big
mess. Even before the ReST conversion, what we had is:

	Some files there doesn't even have titles
	Some files use markdown
	Some files use MediaWiki notation
	Some files use ReST
	Some files use their own notation.

I guess the great benefit of adopting ReST (with would have been
achieved if we had adopted any other notation) is that now we have a
documentation style.

Just placing all documents in the same style is a huge improvement
from what we had before.

Being able of grouping the documents into books is another big
advantage. It is now clearer where some document should be placed.

Also, several text editors (both TUI and GUI) are able to recognize=20
ReST format and use colors for highlights.

So, there are improvements even for those that don't care about
fancy html/pdf books, as the documentation will look more coherent
and better organized.

In the specific case of media, converting to plain ASCII is a *huge*
regression, and some tables simply don't fit at a 80 columns
requirement. In summary, We have several tables there to describe
bit fields on a 64-bits word (for example, do describe how images
are encoded). For such tables, we would require at least 210+ characters
per line. So, converting them to plain ASCII simply makes them a lot
worse to read.

Also, as our uAPI documentation was always using an enriched text
language (they were originally written in LaTeX and PDF, back in the
nineties), converting them to plain ASCII actually means to rewrite
the entire thing.

Even the conversion to ReST required us to change the format of
several tables (as we were using a lot to have tables inside tables,
and ReST doesn't support it). Thankfully, Markus found a way to
do such conversion via script. Yet, we had lots of manual work to
fix stuff after that.

So, I think we should continue the conversion.

-

=46rom my PoV, after the next merge window, we shouldn't expect more
conflicts related to DocBook conversion.=20

However, we'll still have conflicts for the files that are under=20
Documentation/*.txt, as there are stuff there from random subsystems,
although get_maintainers usually point them all to the docs subsystem.

I recently took the effort of sending patches converting all those
text patches to ReST (except for logo.txt). I opted to not rename them
to ReST nor add them on any existing book[1], in order to avoid
merge conflicts.

[1] I added a patch that creates an "unsorted" book at the end of=20
series meant just to allow testing the conversion.

IMHO, the next step would be to merge those patches by the end of the
next merge window (in order to avoid most conflicts).

Then, I would move those files to subdirectories, renaming them to ReST
and adding on some index.rst file.


Thanks,
Mauro
