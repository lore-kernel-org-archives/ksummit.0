Return-Path: <BATV+2585e5bea6578d96f265+5170+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D102AD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 11:35:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2ED061AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 11:35:02 +0000 (UTC)
Date: Thu, 19 Oct 2017 04:35:01 -0700
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>
Message-ID: <20171019043501.7de7aee3@vela.lan>
In-Reply-To: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
References: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft Agenda for the Kernel Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

Em Thu, 12 Oct 2017 20:15:34 -0400
Theodore Ts'o <tytso@mit.edu> escreveu:

> The following is a draft agenda for the Kernel Summit.
>=20
> Please note that three are still a number of TBD slots, and there will
> also be another room available for unconference topics.  The timeslots
> are still largely arbitrary and subject to change.
>=20
> Please comment and propose any requests you might have for schedule
> changes, things that you would like to talk about, etc.
>=20
> Thanks!
>=20
> 						- Ted
>=20
>=20
> Tuesday
> =3D=3D=3D=3D=3D=3D=3D=3D
>=20
>  9:00 Keynotes
> 10:25 Coffee Break=20
> 10:55 Pulling away from the tracing ABI quicksand (Mattieu Desnoyer, Stev=
e Rostedt)
> 11:45 Printk redesign (Petr Mladek & Steve Rostedt)
> 12:25 Lunch
> 14:05 Media Summit issues to discuss (Mauro Carvalho)

The idea here were to have the media summit discussions as part of the
KS. We'll end by doing it on Friday. So, we can remove it as a topic.

-

Yet, as we'll now have an open slot, and we ended by not adding
documentation to the Maintainers Summit, if this would be OK for
Jonathan, I propose to take this slot to do some technical discuss
about documentation.

=46rom my side, there are two topics related to documentation that
that could fit at the technical non-maintainers part of KS:


1) Grouping drivers documentation files

While working on media and input doc file conversion to ReST, and while
looking to other similar driver-specific subsystems, I found a problem
about how we gather driver documentation.

On a typical driver subsystem, we have different sorts of documentation:

	- uAPI;
	- subsystem's core kAPI;
	- driver's implementation:
	- driver's user-centric stuff (like driver's specific modprobe
	  parameters and explanation about how hardware features will
	  be visible on userspace);

The model that it was used with DocBook were to place the uAPI docs under
the driver API book, and the rest on plain files.

I believe that the main reason for it was technical: with the old building=
=20
system, we needed a XML file in order to handle kernel-doc markups.
However, using XML for every single doc file was not too practical.

Now that all doc files can include kernel-doc markups, IMHO we could do
a better job organizing them.

2) Documentation conversion to ReST

We finally got rid of the DocBook documents, with were all converted
to ReST. So, now documentation outside kernel-doc source file markups
are all in plain text, either using a ReST compatible format or
using some other random format[1].

[1] On a patch series I wrote to convert Documentation/*.txt files
    to a common style, I found several documents using some other
    Markup language (Markdown, Twiki, media wiki, ...). I also
    found several documents that seemed to be created by cloning
    a documentation style that were presenting on other .txt files
    (probably some de-facto Kernel's own documentation style).

=46rom maintainer's PoV, in order to make the Kernel documentation
coherent, we need to stick with just one format and ensure that=20
all new documents should follow it (that's basically why I proposed
it as a theme for the Maintainers summit), using some tool to check
if those files are following the documentation style - perhaps adding
some logic at checkpatch.pl to call Sphinx if a text file is inside a
patch - letting Sphinx do the file validation. In other words, I still
think we should discuss it at the Maintainer's summit.

Yet, from technical standpoint, it makes sense to discuss about how should
we organize the files at Documentation/ that aren't currently included
into any existing book.

My proposal is to cleanup all Documentation/*.txt files, discarding
the ones that are too outdated up to a point where it won't make sense to
keep. The remaining files would be moved into a sub-directory,
renamed to *.rst and added into an existing book (or a new one).

Cheers,
Mauro
