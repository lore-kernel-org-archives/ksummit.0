Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E27AA6DB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:31:11 +0000 (UTC)
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
	[209.85.221.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D7767C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:31:11 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id g80-v6so4549333vke.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 08 Oct 2018 07:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181007113514.GA21217@localhost>
	<1814283.64diKEr4zR@avalon> <20181008022931.GB30346@localhost>
	<ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Oct 2018 16:30:57 +0200
Message-ID: <CAMuHMdVmz-ZF+ypp4WEkW6txxjw66DTb5PRsSGPsUfBqT+NbMQ@mail.gmail.com>
To: "Bird, Timothy" <Tim.Bird@sony.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

Hi Tim,

On Mon, Oct 8, 2018 at 4:12 PM <Tim.Bird@sony.com> wrote:
> > From: Josh Triplett
> > On Sun, Oct 07, 2018 at 08:18:26PM +0300, Laurent Pinchart wrote:
> > > On Sunday, 7 October 2018 14:35:14 EEST Josh Triplett wrote:
> > > > On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > > > > Providing an explicit list of discrimination factors may give the=
 false
> > > > > impression that discrimination based on other unlisted factors wo=
uld be
> > > > > allowed.
> > > > >
> > > > > Avoid any ambiguity by removing the list, to ensure "a harassment=
-free
> > > > > experience for everyone", period.
> > > >
> > > > I would suggest reading the commit message that added this in the f=
irst
> > > > place. "Explicit guidelines have demonstrated success in other proj=
ects
> > > > and other areas of the kernel." See also various comparisons of cod=
es of
> > > > conduct, which make the same point. The point of this list is preci=
sely
> > > > to serve as one such explicit guideline; removing it would rather d=
efeat
> > > > the purpose.
> > > >
> > > > In any case, this is not the appropriate place for such patches, an=
y
> > > > more than it's the place for patches to the GPL.
> > >
> > > So what's an appropriate place to discuss the changes that we would l=
ike,
> > > *together*, to make to the current document and propose upstream ?
> >
> > I didn't say "not the appropriate place to discuss" (ksummit-discuss is
> > not ideal but we don't currently have somewhere better), I said "not th=
e
> > appropriate place for such patches".
> >
> > The Linux kernel is by no means the only project using the Contributor
> > Covenant. In general, we don't encourage people working on significant
> > changes to the Linux kernel to work in private for an extended period
> > and only pop up when "done"; rather, we encourage people to start
> > conversations early and include others in the design. Along the same
> > lines, I'd suggest that patches or ideas for patches belong upstream.
> > For instance, the idea of clarifying that email addresses already used
> > on a public mailing list don't count as "private information" seems lik=
e
> > a perfectly reasonable suggestion, and one that other projects would
> > benefit from as well.
>
> So I raised this issue with upstream about 2 weeks ago, and here is my
> experience:
> 1) I suggested that the email clarification could be put into the covenan=
t
> itself, or in a supporting FAQ.
> 2) The project maintainer (Coraline Ada Ehmke) was pleasant and supportiv=
e
> of changes to enhance the document, and said either approach would be fin=
e.
> 3) I noticed that there was a FAQ in progress of being created.
> 4) After thinking about it, I decided that I didn't want to alter the lan=
guage
> of the covenant, because I didn't want to dilute the expression of a need=
 to
> get permission when revealing private information.
>
> My own opinion is that putting clarifying language in a FAQ is sufficient=
.
> So I made the following recommendation for the (not yet included upstream=
)
> FAQ:
>
> Q: Does the prohibition on publishing private information include email a=
ddresses sent to a public list?
> A: No. Information that has voluntarily been published to a public locati=
on does not fall under the category of private information. Such public inf=
ormation may be used within the context of the project according to project=
 norms (such as in commit meta-data in code repositories), without that con=
stituting a breach of the CoC.

I noticed this morning this is actually already included in the FAQ
(I didn't know this is recent thing):
https://www.contributor-covenant.org/faq

> I don't know what progress is being made adopting the FAQ, but Coraline s=
eems very
> supportive, and I've told here that I will come back and help with it if =
it stalls.

I'm glad to heart that!

FTR, I've submitted my patch earlier today, too:
https://github.com/ContributorCovenant/contributor_covenant/issues/610

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
