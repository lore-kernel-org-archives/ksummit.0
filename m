Return-Path: <alexander.levin@verizon.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 984D8412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:44:54 +0000 (UTC)
Received: from omzsmtpe02.verizonbusiness.com (omzsmtpe02.verizonbusiness.com
	[199.249.25.209])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFD6AA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 13:44:53 +0000 (UTC)
From: "Levin, Alexander" <alexander.levin@verizon.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Fri, 26 Aug 2016 09:44:46 -0400
Message-ID: <20160826134446.GC25341@sasha-lappy>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
	<20160826115653.GA28645@kroah.com>
In-Reply-To: <20160826115653.GA28645@kroah.com>
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

On Fri, Aug 26, 2016 at 07:56:53AM -0400, Greg KH wrote:
> On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
> > On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> > > >    - Improving tagging for stable. The "version tag" option is brok=
en
> > > >    and the "Fixes:" tag is always preferable, how do we get people =
to
> > > >    use that more often? (script it somehow?
> > > >    scripts/find-version-it-fixes ?).
> > >=20
> > > Oh a script like that would be nice, but how would that work in reali=
ty?
> >=20
> > Not all Fixes: tags are suitable for stable though. I've been caught ou=
t
> > by patches being applied to stable (4.2 maybe) due to a Fixes tag,
> > without prerequisite patches being applied.
>=20
> Yeah, it is true, but it gives me a hint as to where I should stop at,
> or where I should look around at.  If I see a "3.14" mark, and the patch
> doesn't apply at all there, then I'll push back on the developer of the
> patch to see if they can provide a version for that kernel.  If I don't
> have that mark, and it doesn't apply to 3.14, I'll just drop it on the
> floor as "obviously" it doesn't apply there.

Yup, I fully agree that "Fixes:" doesn't guarantee that the commit is stabl=
e
material, but in reality neither does the stable@ tag. It's just another
marker for us.

What I was originally talking about is "cc: stable@vger.kernel.org # vX.Y+"=
 vs
"Fixes: hash ("subject"): It's obvious that for and commit that fixes somet=
hing
there's another commit that broke that thing, but it's also possible that t=
hat
commit that broke something fixed something else and made it's way into sta=
ble.

Therefore, by using version tags instead of "Fixes:" we have a very good ch=
ance
of missing the fact that a certain commit might need to be applied to older
stable trees as well.

--=20

Thanks,
Sasha=
