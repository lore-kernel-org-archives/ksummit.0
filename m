Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBB9B258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 01:07:10 +0000 (UTC)
Received: from omzsmtpe02.verizonbusiness.com (omzsmtpe02.verizonbusiness.com
	[199.249.25.209])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA2DE8C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 01:07:09 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Joe Perches <joe@perches.com>
Date: Sat, 27 Aug 2016 21:06:13 -0400
Message-ID: <20160828005636.GB19088@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
In-Reply-To: <1472330452.26978.23.camel@perches.com>
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

On Sat, Aug 27, 2016 at 04:40:52PM -0400, Joe Perches wrote:
> On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> >>=A0=A0=A0=A0- Making checkpatch check for (some) of the stable kernel r=
ules
> >>=A0=A0=A0=A0(and possibly recommend adding the stable@ tag in certain c=
ases?).
> >>=A0=A0=A0=A0=A0=A0- Depends on: making checkpatch sane again.>This soun=
ds interesting.=A0=A0What do you mean by "sane"?
>=20
> Sasha, can you expand your thoughts here please?

Sure. I have 2.5 concerns about the state of checkpatch:

On Sat, Aug 27, 2016 at 04:40:52PM -0400, Joe Perches wrote:=20
> Most all of the trivial spacing stuff can easily be
> ignored either by a human determining what's important
> or by using command line options like --ignore=3Dspacing

1.
This is the wrong default. By default checkpatch shouldn't be showing trivi=
al
issues that encourage folks to try and work around them and as a result
produce worse code.

Look at the 80 character limit warning for example, what good does it do? I=
t
encourages people to do even stupider things to work around it and results =
in
a bunch of "fix checkpatch warning" that touch existing code just to make t=
he
result harder to read and make 'git blame' harder to work with.

By default you should only get the most critical warnings we have in the
kernel like missing S-O-B or corrupt patch.


2. A "who wrote these rules?": there seems to be a disconnect between the r=
ules
checkpatch is trying to enforce and the accepted coding style enforced by
maintainers.=20

Do a git-format-patch on all of the commits Linus authored in the past year=
 or
two and see how many of them fail checkpatch (or do the same for any of the
commits that passed through and were accepted by the top maintainers),
according to checkpatch we need to make those guys stop touching the kernel=
.


3. This one is somewhat subjective: scripts/checkpatch.pl is a massive blob=
 of
perl code that a fair amount of people don't know how to deal with. In 4.8 =
it's
6142 lines, making it the 124th largest source file in the kernel, well wit=
hin
the top 1% of source files in the kernel.

This combination of size/language pushes people away from being involved in
what is supposed to be a central tool and gives them a reason to never use
it again after they see results they don't agree with (rather than fixing i=
t).

--=20

Thanks,
Sasha
