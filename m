Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19DBA25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 02:48:38 +0000 (UTC)
Received: from omzsmtpe03.verizonbusiness.com (omzsmtpe03.verizonbusiness.com
	[199.249.25.208])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 22D5A11D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 02:48:37 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Joe Perches <joe@perches.com>
Date: Sat, 27 Aug 2016 22:47:40 -0400
Message-ID: <20160828023807.GC19088@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
In-Reply-To: <1472348579.26978.47.camel@perches.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 27, 2016 at 09:42:59PM -0400, Joe Perches wrote:
> On Sat, 2016-08-27 at 21:06 -0400, Levin, Alexander wrote:
> > On Sat, Aug 27, 2016 at 04:40:52PM -0400, Joe Perches wrote:
> > > On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > > > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> > > > >=20
> > > > > =A0=A0=A0=A0- Making checkpatch check for (some) of the stable ke=
rnel rules
> > > > > =A0=A0=A0=A0(and possibly recommend adding the stable@ tag in cer=
tain cases?).
> > > > > =A0=A0=A0=A0=A0=A0- Depends on: making checkpatch sane again
> > > > > >This sounds interesting.=A0=A0What do you mean by "sane"?
> > > Sasha, can you expand your thoughts here please?
> > Sure. I have 2.5 concerns about the state of checkpatch:
> []
> > > Most all of the trivial spacing stuff can easily be
> > > ignored either by a human determining what's important
> > > or by using command line options like --ignore=3Dspacing
> > 1.
> > This is the wrong default. By default checkpatch shouldn't be showing t=
rivial
> > issues that encourage folks to try and work around them and as a result
> > produce worse code.
> >=20
> > Look at the 80 character limit warning for example, what good does it d=
o?
>=20
> That argument's been done several times. It keeps Linus happy.
> I don't care one way or another.

I'm not trying to be specific with the 80 character thing, it's also true f=
or
a few other things that makes people produce less readable code than what i=
t
would have looked like if they'd ignore the warning.
=20
> I think the biggest issue is the seriousness that some people
> take checkpatch messages as dicta instead of ignorable bleats.

That makes sense to you, but it doesn't make sense to the newer folks who a=
re
told not to submit any patches with checkpatch errors/warnings. You know to
ignore these 80-character warnings when it makes sense, they see it as "you
must make the warning disappear no matter what".
=20
> I still think ERROR->defect, WARNING->unstylish, CHECK->nitpick
> would be a good change.
>=20
> https://lkml.org/lkml/2015/7/16/568

Probably. Would you agree that by default we shouldn't show anything that's
not an error/defect?

> >  It
> > encourages people to do even stupider things to work around it and resu=
lts in
> > a bunch of "fix checkpatch warning" that touch existing code just to ma=
ke the
> > result harder to read and make 'git blame' harder to work with.
>=20
> Almost all of the crud in git-blame can be avoided with -w

That doesn't deal with newlines people add to hide the 80 character stuff, =
nor it
deals with the "harder to read" part.

> > By default you should only get the most critical warnings we have in th=
e
> > kernel like missing S-O-B or corrupt patch.
>=20
> I don't think so, but if you do, add a filter for ERROR only.

I could, but the problem is the people who see the default output as "holy"=
.

> > 2. A "who wrote these rules?": there seems to be a disconnect between t=
he rules
> > checkpatch is trying to enforce and the accepted coding style enforced =
by
> > maintainers.=A0
>=20
> Name some please.

Well look at the git commit id SHA1 length thingie for example (GIT_COMMIT_=
ID). checkpatch says 12 chars minimum, but as far as I can tell Linus and G=
reg didn't get the memo.

> > Do a git-format-patch on all of the commits Linus authored in the past =
year or
> > two and see how many of them fail checkpatch (or do the same for any of=
 the
> > commits that passed through and were accepted by the top maintainers),
> > according to checkpatch we need to make those guys stop touching the ke=
rnel.
>=20
> Try it yourself and tell me what's wrong with the messages:
>=20
> $ git log --pretty=3Doneline --author=3Dtorvalds --no-merges --since=3D1-=
year-ago | \
> =A0 grep -v " Linux [34]" | \
> =A0 while read commit ; do \
> =A0 =A0 echo $commit ; \
> =A0 =A0 git log --stat -p -1 --format=3Demail $(echo $commit | cut -f1 -d=
" ")  | \
>       ./scripts/checkpatch.pl - ; \
>   done
>=20
> Here's a summary done with an additional
>=20
> =A0 grep -P "^(ERROR|WARNING)" | cut -f1,2 -d":" | \
> =A0 sort |uniq -c | sort -rn
>=20
> =A0 =A0 =A046 WARNING:LONG_LINE_COMMENT
> =A0=A0=A0=A0=A045 WARNING:LEADING_SPACE
> =A0=A0=A0=A0=A037 WARNING:LONG_LINE
> =A0=A0=A0=A0=A016 ERROR:GIT_COMMIT_ID
> =A0=A0=A0=A0=A011 WARNING:COMMIT_LOG_LONG_LINE
> =A0=A0=A0=A0=A0=A05 WARNING:BRACES
> =A0=A0=A0=A0=A0=A02 WARNING:BAD_SIGN_OFF
> =A0=A0=A0=A0=A0=A02 WARNING:AVOID_BUG
> =A0=A0=A0=A0=A0=A02 ERROR:SPACING
> =A0=A0=A0=A0=A0=A01 WARNING:SPLIT_STRING
> =A0=A0=A0=A0=A0=A01 WARNING:FILE_PATH_CHANGES
> =A0=A0=A0=A0=A0=A01 WARNING:ENOSYS
> =A0=A0=A0=A0=A0=A01 ERROR:MISSING_SIGN_OFF

$ git log --pretty=3Doneline --author=3Dtorvalds --no-merges --since=3D1-ye=
ar-ago | grep -v " Linux [34]" | wc -l
64

Linus has more errors/warnings than commits. Why do we let him commit stuff=
?

> > 3. This one is somewhat subjective: scripts/checkpatch.pl is a massive =
blob of
> > perl code that a fair amount of people don't know how to deal with. In =
4.8 it's
> > 6142 lines, making it the 124th largest source file in the kernel, well=
 within
> > the top 1% of source files in the kernel.
> >=20
> > This combination of size/language pushes people away from being involve=
d in
> > what is supposed to be a central tool and gives them a reason to never =
use
> > it again after they see results they don't agree with (rather than fixi=
ng it).
>=20
> Meh, I'm not a perl guy either.
>=20
> I think almost all of it is regexes and most people
> aren't very good at those.
>=20
> So it wouldn't matter if it was perl or python.
>=20
> spatch isn't the right tool.
>=20
> What would you suggest instead?

This is a good topic to talk about, making checkpatch accessible to us
commoners could be useful, we just need to figure out how.

--=20

Thanks,
Sasha=
