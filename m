Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2817A6E14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:36:09 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr690114.outbound.protection.outlook.com [40.107.69.114])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 900B37C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:36:05 +0000 (UTC)
From: <Tim.Bird@sony.com>
To: <laurent.pinchart@ideasonboard.com>
Date: Mon, 8 Oct 2018 14:36:00 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF8051747E@USCULXMSG01.am.sony.com>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181008022931.GB30346@localhost>
	<ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
	<2170645.tuLgNU61gi@avalon>
In-Reply-To: <2170645.tuLgNU61gi@avalon>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James.Bottomley@hansenpartnership.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit
	list	of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> -----Original Message-----
> From: Laurent Pinchart
>=20
> Hi Tim,
>=20
> On Monday, 8 October 2018 17:12:05 EEST Tim.Bird@sony.com wrote:
> > > -----Original Message-----
> > > From: Josh Triplett
> > > On Sun, Oct 07, 2018 at 08:18:26PM +0300, Laurent Pinchart wrote:
> > >> On Sunday, 7 October 2018 14:35:14 EEST Josh Triplett wrote:
> > >>> On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > >>>> Providing an explicit list of discrimination factors may give the
> > >>>> false impression that discrimination based on other unlisted facto=
rs
> > >>>> would be allowed.
> > >>>>
> > >>>> Avoid any ambiguity by removing the list, to ensure "a harassment-
> > >>>> free experience for everyone", period.
> > >>>
> > >>> I would suggest reading the commit message that added this in the
> > >>> first place. "Explicit guidelines have demonstrated success in othe=
r
> > >>> projects and other areas of the kernel." See also various compariso=
ns
> > >>> of codes of conduct, which make the same point. The point of this l=
ist
> > >>> is precisely to serve as one such explicit guideline; removing it
> > >>> would rather defeat the purpose.
> > >>>
> > >>> In any case, this is not the appropriate place for such patches, an=
y
> > >>> more than it's the place for patches to the GPL.
> > >>
> > >> So what's an appropriate place to discuss the changes that we would
> > >> like, *together*, to make to the current document and propose
> upstream ?
> > >
> > > I didn't say "not the appropriate place to discuss" (ksummit-discuss =
is
> > > not ideal but we don't currently have somewhere better), I said "not =
the
> > > appropriate place for such patches".
> > >
> > > The Linux kernel is by no means the only project using the Contributo=
r
> > > Covenant. In general, we don't encourage people working on significan=
t
> > > changes to the Linux kernel to work in private for an extended period
> > > and only pop up when "done"; rather, we encourage people to start
> > > conversations early and include others in the design. Along the same
> > > lines, I'd suggest that patches or ideas for patches belong upstream.
> > > For instance, the idea of clarifying that email addresses already use=
d
> > > on a public mailing list don't count as "private information" seems l=
ike
> > > a perfectly reasonable suggestion, and one that other projects would
> > > benefit from as well.
> >
> > So I raised this issue with upstream about 2 weeks ago, and here is my
> > experience:
> > 1) I suggested that the email clarification could be put into the coven=
ant
> > itself, or in a supporting FAQ.
> > 2) The project maintainer (Coraline Ada Ehmke) was pleasant and
> supportive
> > of changes to enhance the document, and said either approach would be
> fine.
> > 3) I noticed that there was a FAQ in progress of being created.
> > 4) After thinking about it, I decided that I didn't want to alter the
> > language of the covenant, because I didn't want to dilute the expressio=
n of
> > a need to get permission when revealing private information.
> >
> > My own opinion is that putting clarifying language in a FAQ is sufficie=
nt.
> > So I made the following recommendation for the (not yet included
> upstream)
> > FAQ:
> >
> > Q: Does the prohibition on publishing private information include email
> > addresses sent to a public list? A: No. Information that has voluntaril=
y
> > been published to a public location does not fall under the category of
> > private information. Such public information may be used within the
> context
> > of the project according to project norms (such as in commit meta-data =
in
> > code repositories), without that constituting a breach of the CoC.
> >
> > You can see the history of discussion in these two issues, online:
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__github.com_ContributorCovenant_contributor-
> 5Fcovenant_issues_590&d=3DDwICAg&c=3DfP4tf--1dS0biCFlB0saz0I0kjO5v7-
> GLPtvShAo4cc&r=3DrUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> INWqfY8MsF0&m=3Db6Q42NB0w9BZPta7p9Iyr2Lw91cD5dszFL52DzV3FL0&s=3D17
> HaUjlX7xwXIvGmJLYhuclrQ1ze-ySl5xLrWIKUDbU&e=3D
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__github.com_ContributorCovenant_contributor-
> 5Fcovenant_issues_575&d=3DDwICAg&c=3DfP4tf--1dS0biCFlB0saz0I0kjO5v7-
> GLPtvShAo4cc&r=3DrUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> INWqfY8MsF0&m=3Db6Q42NB0w9BZPta7p9Iyr2Lw91cD5dszFL52DzV3FL0&s=3Dp
> MGMapO3n9KVVxipezDC8cn2BvpY2xmJKq0T7p-Gt1E&e=3D
> >
> > I hesitated to post these, because a formatting error in one of the pos=
ts
> > makes me look a bit dumb. :-)
> >
> > I don't know what progress is being made adopting the FAQ, but Coraline
> > seems very supportive, and I've told here that I will come back and hel=
p
> > with it if it stalls.
> >
> > Honestly, I believe Linux will adopt its own FAQ or some similar docume=
nt,
> > so with the Contributor Covenant adopting the clarification as a separa=
te
> > document, I don't know if Linux would inherit it (ie include the Covena=
nt
> > FAQ in our source tree).  However, I think that the existence of this e=
mail
> > clarification in the upstream FAQ would still have a beneficial effect =
for
> > all downstream users of the covenant, so I view this as a useful exerci=
se.
>=20
> The main argument I have heard against amending the code of conduct
> document
> itself is that a fork would make it more complicated for project members =
to
> understand the expectations, in a similar fashion than the fragmentation
> created by license forks. If we end up having our own FAQ, which would
> need to
> be considered in combination with the main document to understand its
> impact,
> doesn't that create the same problem ?

I'm not currently persuaded by the argument about modifying the CoC.
I see pros and cons, but 1) we have already changed the wording, and
2) I suspect that wording changes we adopt will not be that confusing
to rationalize with the upstream document, and 3) I don't think that
upstream will change so radically that it will be difficult for us to adopt=
.

So I guess a shorter way of putting this is that I'm not worried about a
fork.  The document is not long, and there should probably be debate
in the kernel community before adopting any significant upstream change
to the CoC. (similar to the debate and eventual rejection of GPL v3)

I have a similar opinion about a supporting FAQ.
 -- Tim
