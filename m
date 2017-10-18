Return-Path: <andrew@fubar.geek.nz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 410C95AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 23:36:12 +0000 (UTC)
Received: from fry.fubar.geek.nz (fry.fubar.geek.nz [139.59.165.16])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 727F6196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 23:36:11 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Andrew Turner <andrew@fubar.geek.nz>
In-Reply-To: <20171018175910.GP12015@bill-the-cat>
Date: Thu, 19 Oct 2017 00:28:56 +0100
Content-Transfer-Encoding: quoted-printable
Message-Id: <FD387FCC-3F95-48DF-B412-3384EF96FCFC@fubar.geek.nz>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
	<20171018110958.mh76pngzluazmc7y@sirena.co.uk>
	<20171018175910.GP12015@bill-the-cat>
To: Tom Rini <trini@konsulko.com>
Cc: Rob Herring <rob.herring@linaro.org>, Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [Ksummit-discuss] Devicetree Workshop at Kernel Summit Prague
 (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> On 18 Oct 2017, at 18:59, Tom Rini <trini@konsulko.com> wrote:
>=20
> On Wed, Oct 18, 2017 at 12:09:58PM +0100, Mark Brown wrote:
>> On Wed, Oct 18, 2017 at 06:35:24PM +0800, Chen-Yu Tsai wrote:
>>=20
>>> I'd like to add something on the topic of non-Linux projects. In =
this
>>> case it's diverging DT bindings from U-boot:
>>=20
>>> https://patchwork.ozlabs.org/patch/823158/
>>=20
>>> U-boot already has a set of devicetree binding additions:
>>> =
https://github.com/u-boot/u-boot/tree/master/doc/device-tree-bindings
>>=20
>>> The patch in question wants to ab(use) the regulator-name property =
for
>>> driver instance binding. In my opinion this is not going to fly, as
>>> boards are free to define the names. This either sees no use other =
than
>>> as a dirty workaround for dts files that aren't following the PMIC
>>> regulator bindings (regulator node names should follow well defined,
>>> identifying names), or results in divergence of the DT files.
>>=20
>> One meta issue I'm seeing here is that the u-boot people appear to =
have
>> their own divergent copy of some of the binding documents.
>=20
> Putting on my U-Boot hat now, it's mostly unintentional and something =
in
> general (yes, the initial topic here is not such an example) we try =
and
> avoid, or use u-boot, as the prefix on as it's something that had been
> previously rejected or deemed inappropriate to be in the upstream
> version of the binding.
>=20
> But perhaps it's time to try and force the issue again, given what Rob
> and others have said in other parts of the thread.

=46rom the FreeBSD perspective I=E2=80=99d like it if there was a common =
repo for all devicetree consumers to share. We are trying to not have =
FreeBSD specific properties as this has caused issues in the past where =
we had (and still have) FreeBSD specific dts files. We are trying to =
remove these as drivers are updated to handle the common bindings.

I have also spoken with some NetBSD and OpenBSD developers. They are =
both using devicetree to handle device enumeration. Having all 5 =
projects using a common set of dts files and binding would simplify =
keeping them in sync.

Andrew
