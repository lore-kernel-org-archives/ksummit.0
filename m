Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10AC0483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:40:45 +0000 (UTC)
Received: from omzsmtpe03.verizonbusiness.com (omzsmtpe03.verizonbusiness.com
	[199.249.25.208])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6012DA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:40:44 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Fri, 26 Aug 2016 09:39:49 -0400
Message-ID: <20160826133949.GB25341@sasha-lappy>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
In-Reply-To: <20160826112635.GA27627@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 07:26:35AM -0400, Greg KH wrote:
> On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> >    - Making checkpatch check for (some) of the stable kernel rules
> >    (and possibly recommend adding the stable@ tag in certain cases?).
> >      - Depends on: making checkpatch sane again.
>=20
> This sounds interesting.  What do you mean by "sane"?  "sane" as in
> rewriting it so that someone who isn't a perl master can modify it?  Or
> "sane" as in "don't be so pedantic about things that don't matter"?

Both.

It actually came up during my talk: in theory we can enforce with checkpatc=
h to produce proper stable@ tags with correct version/Fixes tagging to simp=
lify our lives, but my claim was that the amount of actual people who use c=
heckpatch is dropping due to the amount of warnings it spews that people ju=
st proceed to ignore.

The perl bit is also annoying, there's no way I can do what I suggested abo=
ve myself.
=20
> >    - Improving tagging for stable. The "version tag" option is broken
> >    and the "Fixes:" tag is always preferable, how do we get people to
> >    use that more often? (script it somehow?
> >    scripts/find-version-it-fixes ?).
>=20
> Oh a script like that would be nice, but how would that work in reality?

The stable-deps script I have can find the commit dependencies you need to =
have to apply a give patch on top of that.

Since usually the broken fix is a dependency for the fix, we can figure out=
 which commit we fix by looking at the dependency tree.

It's not going to be *perfect* (and since nothing is that's fine), but it c=
ould produce a very short list of possible options for a "Fixes:" tag.

--=20

Thanks,
Sasha=
