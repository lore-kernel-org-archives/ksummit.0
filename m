Return-Path: <Tim.Bird@sony.com>
From: "Bird, Timothy" <Tim.Bird@sony.com>
To: Jonathan Corbet <corbet@lwn.net>, Jiri Kosina <jkosina@suse.cz>
Date: Tue, 27 Jun 2017 18:42:20 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF2E262BCF@USCULXMSG03.am.sony.com>
References: <20170623123936.42dab05f@lwn.net>
	<20170624074641.4820fecd@vento.lan>	<1779146.rtcHP5MkoH@aspire.rjw.lan>
	<20170624104142.70677fcb@vento.lan>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
	<20170626161828.3914fcc1@lwn.net>
In-Reply-To: <20170626161828.3914fcc1@lwn.net>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	"ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> -----Original Message-----
> From: Jonathan Corbet on  Monday, June 26, 2017 3:18 PM
> On Sun, 25 Jun 2017 22:56:07 +0200 (CEST)
> Jiri Kosina <jkosina@suse.cz> wrote:
>=20
> > Unfortunately option (3) has also been applied to some of the files:
> >
> > 	$ ll Documentation/kernel-parameters.txt
> > 	ls: cannot access 'Documentation/kernel-parameters.txt': No such
> file or directory
> >
> > I wasn't sure whether this was intentional or not. But if not, I'll
> > happily send a patch that introduces a symlink.
>=20
> Worries about moving well-known files are why I delayed some of this stuf=
f
> a bit so I could bring it up at conferences and the kernel summit.  It
> only proceeded after I didn't get any real pushback in those settings.
>=20
> In general, we move files around in the kernel tree all the time.  We
> don't normally leave symlinks behind; indeed, we never do.  Instead, we
> figure out where the file moved to and get on with life.  Are
> documentation files somehow different, needing different rules in this
> regard?  I wouldn't mind some clarity on that point.

My 2 cents is that files in Documentation are much more often linked to
or referenced by things outside the kernel tree, than source code is.
A quick perusal of elinux.org shows a fair number of references to text fil=
es under
Documentation, some with direct links to online git trees.
Documentation/SubmittingPatches is a good example.
This one has a "This file has moved..." line in its content, which I believ=
e
suffices for getting people to the right place.  IMHO that's better than
a symlink, at least for web references.

>=20
> My hope (cue inspirational music here) is that, someday, it will be
> possible to type "ls Documentation" and get back a reasonably sized
> listing that is easy to explore.  Let's just say that's not the situation
> at the moment.  Getting there will certainly involve moving files around;
> replacing them with symlinks or pointer files would, to a real extent,
> defeat the purpose.

I like the suggestion by Takashi Iwai to separate the new docs from the old=
,
putting symlinks and leaving legacy (not-yet-converted) docs in Documentati=
on,
and new stuff in 'docs/*'.  I think that the new docs have not been 'pinned=
' yet
by external references, and could still be moved around (in the short term)=
,
without much pain. Then "ls docs" could produce the nice listing, while
"ls Documentation" would show ugly symlinks, placeholders, and legacy junk.
 -- Tim
