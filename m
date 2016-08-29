Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D99D26C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 02:22:18 +0000 (UTC)
Received: from omzsmtpe03.verizonbusiness.com (omzsmtpe03.verizonbusiness.com
	[199.249.25.208])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 31E1410A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 02:22:18 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Joe Perches <joe@perches.com>
Date: Sun, 28 Aug 2016 22:22:13 -0400
Message-ID: <20160829021055.GA24216@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<1472426452.26978.151.camel@perches.com>
In-Reply-To: <1472426452.26978.151.camel@perches.com>
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

On Sun, Aug 28, 2016 at 07:20:52PM -0400, Joe Perches wrote:
> On Sun, 2016-08-28 at 18:37 -0400, Levin, Alexander wrote:
> > On Sun, Aug 28, 2016 at 01:15:57PM -0400, Joe Perches wrote:
> > > On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:
> > > > Would you agree that by default we shouldn't show anything that's
> > > > not an error/defect?
> > > Not particularly, no.
> > I think that we need to figure out this disagreement first then. My
> > claim is that checkpatch's output isn't useful.
> []
> > It'll be interesting to hear from these people about their view of
> > checkpatch, but IMO when on average there are more issues than commits
> > I can suggest two possible causes:
> >=20
> > =A01. People are used to ignore checkpatch warnings.
> > =A02. People aren't using checkpatch.
> >=20
> > Can you really make the claim that this is how checkpatch is supposed
> > to be working?
>=20
> <shrug>. =A0I make no particular claims about checkpatch.
>=20
> I think checkpatch isn't particularly useful for those
> thoroughly inculcated in what style the kernel uses and
> is more useful for infrequent or new submitters.
>=20
> The long time submitters and key maintainers are already
> pretty consistent about coding style.

I did the same test for authors of 5-9 commits (just an arbitrary choice of=
 numbers for "infrequent"), the results there are much worse: 3981 commits,=
 7175 issues.

The only big subsystem that seems to be forcing checkpatch "correctness" is=
 mm/, where akpm is fixing up checkpatch issues himself. Otherwise, it look=
s like maintainers are not running checkpatch nor are making sure that the =
commits they merge in don't have checkpatch issues.

> It would be good to examine the specific messages though.

What for? The point is that with that amount of issues it's evident that pe=
ople don't actually use checkpatch to begin with. We can discuss whether th=
e output it produces makes sense all we want, but the fact is that people j=
ust don't use it - and I've tried to give my opinion of why I think it happ=
ens.

--=20

Thanks,
Sasha=
