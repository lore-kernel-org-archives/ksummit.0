Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9004592B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:52:10 +0000 (UTC)
Received: from omzsmtpe03.verizonbusiness.com (omzsmtpe03.verizonbusiness.com
	[199.249.25.208])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 071D8AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:52:09 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Fri, 26 Aug 2016 09:51:41 -0400
Message-ID: <20160826135141.GD25341@sasha-lappy>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<cfea840fae5911cdff7fbad535e9261b@newmail.lip6.fr>
	<20160826121119.GA29929@kroah.com>
In-Reply-To: <20160826121119.GA29929@kroah.com>
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

On Fri, Aug 26, 2016 at 08:11:19AM -0400, Greg KH wrote:
> On Fri, Aug 26, 2016 at 01:55:27PM +0200, Julia Lawall wrote:
> > Not sure if I was clear about what I was asking you to agree to :)
> >=20
> > Basically, we can take the patches sent to stable and the patches not s=
ent
> > to stable as a training set, but then the machine learning comes up wit=
h
> > some algorithm that produces some results.  An expert is needed to eval=
uate
> > the results.  Ie for a thousand (number chosen at random) patches, if t=
he
> > algorithm says it is a bug fixing patch, is it or isn't it, and vice ve=
rsa.
> > Of course, we could also evaluate on patches that previously have and h=
ave
> > not been sent too stable, but there is a problem there, because our goa=
l is
> > to have more patches sent to stable than are already being sent there, =
so we
> > need to show that the algorithm can capture what humans are missing.
>=20
> I think that is very interesting research and I would be glad to help
> out with it how ever I can, as the result might be very useful for us.
>=20
> So sign me up!

I'd be happy to do this as well.

Per Greg's advice, I'm reviewing distro kernels for upstream commits that
they carry which should have been in our LTS trees, those commits usually
aren't tagged in any way and can be a good set of commits for training or
validation.

I do think that we should be using the algorithm to produce a list of autho=
rs
and maintainers who don't provide proper tags when they should and have a
discussion with them about why that doesn't happen and how we can help them
to get it "right" (vs just using the algorithm to apply patches).

--=20

Thanks,
Sasha=
