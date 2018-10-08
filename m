Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 41CF86D4E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:12:12 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0109.outbound.protection.outlook.com
	[104.47.37.109])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A64A7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:12:11 +0000 (UTC)
From: <Tim.Bird@sony.com>
To: <josh@joshtriplett.org>, <laurent.pinchart@ideasonboard.com>
Date: Mon, 8 Oct 2018 14:12:05 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181007113514.GA21217@localhost> <1814283.64diKEr4zR@avalon>
	<20181008022931.GB30346@localhost>
In-Reply-To: <20181008022931.GB30346@localhost>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James.Bottomley@hansenpartnership.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> -----Original Message-----
> From: Josh Triplett
>=20
> On Sun, Oct 07, 2018 at 08:18:26PM +0300, Laurent Pinchart wrote:
> > Hi Josh,
> >
> > On Sunday, 7 October 2018 14:35:14 EEST Josh Triplett wrote:
> > > On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > > > Providing an explicit list of discrimination factors may give the f=
alse
> > > > impression that discrimination based on other unlisted factors woul=
d be
> > > > allowed.
> > > >
> > > > Avoid any ambiguity by removing the list, to ensure "a harassment-f=
ree
> > > > experience for everyone", period.
> > >
> > > I would suggest reading the commit message that added this in the fir=
st
> > > place. "Explicit guidelines have demonstrated success in other projec=
ts
> > > and other areas of the kernel." See also various comparisons of codes=
 of
> > > conduct, which make the same point. The point of this list is precise=
ly
> > > to serve as one such explicit guideline; removing it would rather def=
eat
> > > the purpose.
> > >
> > > In any case, this is not the appropriate place for such patches, any
> > > more than it's the place for patches to the GPL.
> >
> > So what's an appropriate place to discuss the changes that we would lik=
e,
> > *together*, to make to the current document and propose upstream ?
>=20
> I didn't say "not the appropriate place to discuss" (ksummit-discuss is
> not ideal but we don't currently have somewhere better), I said "not the
> appropriate place for such patches".
>=20
> The Linux kernel is by no means the only project using the Contributor
> Covenant. In general, we don't encourage people working on significant
> changes to the Linux kernel to work in private for an extended period
> and only pop up when "done"; rather, we encourage people to start
> conversations early and include others in the design. Along the same
> lines, I'd suggest that patches or ideas for patches belong upstream.
> For instance, the idea of clarifying that email addresses already used
> on a public mailing list don't count as "private information" seems like
> a perfectly reasonable suggestion, and one that other projects would
> benefit from as well.

So I raised this issue with upstream about 2 weeks ago, and here is my
experience:
1) I suggested that the email clarification could be put into the covenant
itself, or in a supporting FAQ.
2) The project maintainer (Coraline Ada Ehmke) was pleasant and supportive
of changes to enhance the document, and said either approach would be fine.
3) I noticed that there was a FAQ in progress of being created.
4) After thinking about it, I decided that I didn't want to alter the langu=
age
of the covenant, because I didn't want to dilute the expression of a need t=
o
get permission when revealing private information.

My own opinion is that putting clarifying language in a FAQ is sufficient.
So I made the following recommendation for the (not yet included upstream)
FAQ:

Q: Does the prohibition on publishing private information include email add=
resses sent to a public list?
A: No. Information that has voluntarily been published to a public location=
 does not fall under the category of private information. Such public infor=
mation may be used within the context of the project according to project n=
orms (such as in commit meta-data in code repositories), without that const=
ituting a breach of the CoC.

You can see the history of discussion in these two issues, online:
https://github.com/ContributorCovenant/contributor_covenant/issues/590
https://github.com/ContributorCovenant/contributor_covenant/issues/575

I hesitated to post these, because a formatting error in one of the posts m=
akes
me look a bit dumb. :-)

I don't know what progress is being made adopting the FAQ, but Coraline see=
ms very
supportive, and I've told here that I will come back and help with it if it=
 stalls.

Honestly, I believe Linux will adopt its own FAQ or some similar document, =
so with the
Contributor Covenant adopting the clarification as a separate document, I d=
on't know
if Linux would inherit it (ie include the Covenant FAQ in our source tree).=
  However, I think
that the existence of this email clarification in the upstream FAQ would st=
ill have a
beneficial effect for all downstream users of the covenant, so I view this =
as a useful
exercise.

 -- Tim
