Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A851F9CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 06:47:40 +0000 (UTC)
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D28DAD0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 06:47:39 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id i10so3982343vsm.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Oct 2018 23:47:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<CAKON4Owevjg=wyQrxJ4z7x=hUryKGhHkXB=htL5G6MhuruwZ-Q@mail.gmail.com>
	<CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
	<20181008183423.4bdcaeea@coco.lan>
	<CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
	<20181009070736.42b8fea5@coco.lan>
	<D9A3A892-FF4B-4A63-99C9-C29C58AB5AAC@fb.com>
	<CAPcyv4hWMZkS0KMVihL5R99nQp6CAG3wkOfF2nWdVLq9w3bOcQ@mail.gmail.com>
In-Reply-To: <CAPcyv4hWMZkS0KMVihL5R99nQp6CAG3wkOfF2nWdVLq9w3bOcQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 10 Oct 2018 08:47:26 +0200
Message-ID: <CAMuHMdWBWKtZDpdYn0zaWFnF27pnenu6Ha5wq-40QPWE+D-pFQ@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 10, 2018 at 12:03 AM Dan Williams <dan.j.williams@intel.com> wrote:
> On Tue, Oct 9, 2018 at 9:53 AM Chris Mason <clm@fb.com> wrote:
> > On 9 Oct 2018, at 6:07, Mauro Carvalho Chehab wrote:
> > >> So, a company would fire maintainer for being conniving with an
> > >> harassment
> > >> or any other unacceptable behavior, right?!
> > >>
> > >> So, Developer A shouts racists words, maintainer C doesn't C the
> > >> email.
> > >> Developer B complains to the TAB against Developer A and Maintainer
> > >> C.
> > >
> > > No. If you read the CoC carefully, you'll see that it doesn't
> > > have anything saying that TAB would be taking any action against
> > > Developer A. The only person that this CoC who would be punished,
> > > on this CoC's "enforcement" section is the maintainer.

Indeed.

The only repercussion for violators (not considering existing legal
frameworks) is being banned, and/or their work being rejected, but not by
the TAB.

The CoC says it is the _maintainer_'s responsibility to take action
w.r.t. the violator, by (translated to Linux kernel development and
maintenance tasks):
  1) Replying to email clarifying the standards of acceptable behavior,
  2) Removing or editing the comment and/or contribution,
  3) Editing the patch description and/or patch body,
  4) Rejecting the patch,
  5) Banning the contributor from the mailing list,

2) cannot be done on public mailing lists,
5) also needs external help from the mailing list administrator, so it is not
    under direct control of the maintainer.

So "Maintainers have the right and responsibility [...]" needs to be updated
to match the above.

> > The code of conduct asks maintainers to be involved in maintaining
> > culture as well as code.  It does mention repercussions for maintainers,
> > but it's important to apply some common sense here.  If you enable
> > people to send in terrible code, someone is going to talk to you about
> > your poor decisions.  If you're enabling people to violate the code of
> > conduct, it's a good idea to sit down and talk about ways to improve the
> > level of discourse in your subsystem.
>
> I'd also add, it's clear that these situations can be messy and a
> maintainer may not feel equipped, or have the emotional resources to
> engage at all times. So I think reasonable way for a maintainer to
> engage is to simply ask for help. At a minimum we need trusted people
> in the community that are willing to be available to help out
> contributors and fellow maintainers alike, and the TAB is tasked with
> being available to help. That was the situation with the previous
> code, this one is more explicit, but the intent is the same to have a
> concerted effort and an escalation path to help keep development
> discourse productive.

Indeed, so for 1), assistance can be provided by other members of the community.

-Maintainers are responsible for clarifying the standards of acceptable behavior
-and are expected to take appropriate and fair corrective action in response to
+All project members are encouraged to clarify the standards of
acceptable behavior
+and take appropriate and fair corrective action in response to
 any instances of unacceptable behavior.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
