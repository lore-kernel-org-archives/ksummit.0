Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 13E8E1073
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:37:20 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0138.outbound.protection.outlook.com [104.47.34.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7527179F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 17:37:18 +0000 (UTC)
From: <Tim.Bird@sony.com>
To: <torvalds@linux-foundation.org>, <dmitry.torokhov@gmail.com>
Date: Tue, 18 Sep 2018 17:37:13 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF7C1EAB94@USCULXMSG01.am.sony.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<2174637.IVJC5EhCEq@avalon> <20180918160236.GK2471@sirena.org.uk>
	<20180918163231.GB10134@agluck-desk>
	<CAKdAkRRc8U+Y9M3mP378hw5PsUoG-TM33gX_0oT8PX9APT9pyw@mail.gmail.com>
	<CA+55aFxgc+OOs4E8z9vdEpbArwi2+MaxfUUnZSisX6Y3K1HTHQ@mail.gmail.com>
In-Reply-To: <CA+55aFxgc+OOs4E8z9vdEpbArwi2+MaxfUUnZSisX6Y3K1HTHQ@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: mchehab+samsung@kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: Linus Torvalds
>=20
> On Tue, Sep 18, 2018 at 9:35 AM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> > On Tue, Sep 18, 2018 at 9:33 AM Luck, Tony <tony.luck@intel.com> wrote:
> > >
> > > Or, shock, horror, tell one-time contributors that it is OK to
> > > put the patch in an attachment to the e-mail.  Outlook doesn't
> > > (usually) mess with the contents of attachments.
> >
> > And then have maintainer having hard time trying to comment on said
> > patch in the attachment. I'd rather not.
>=20
> I actually think that *this* could be easily handled by trivial
> tooling that doesn't have to be set up over and over again inside
> companies or teaching people.
>=20
> In fact, doesn't patchwork already do exactly that?
>=20
> I have to say, there are real technical advantages to using
> attachments for patches, particularly when you have odd combinations
> of locales. It's gotten to be less of an issue over time and we're
> still almost entirely US-ASCII with the occasional UTF-8, but we do
> still have the occasional problem. Using attachments at least detaches
> the email charset from the user locale, and from random other MUA
> issues.
>=20
> But yes, the "comment on individual parts of the patch" part is very
> important too.
>=20
> The main problem with having something that rewrites things is that it
> breaks DKIM etc, so you can't just have a pure email gateway. It
> almost needs to be something at a higher semantic level like patchwork
> (that could still send out rewritten emails).
>=20
> In many cases, you might want that anyway (ie wouldn't it be lovely
> when the patch is also checked for "does it build" and looks up the
> maintainers based on what paths it touches etc etc).
>=20
> So a sane email / web-interface kind of gateway that allows people to
> work the way they prefer.

Would it suffice to have some front-end e-mail receiver, listed in=20
MAINTAINERS even, where patches were sent to, that did patch
processing (including CI stuff) before sending it on to the "official"
list?  It could also automatically send responses to submitters with
things to fix.  That would be good for both the senders and the receivers.
I'm not that familiar with 0day, but it does some of this now, right,
but without the separate e-mail address?

The benefit of putting together this kind of gateway is that it clearly
delineates where the automatic patch pre-processing will occur,
and different sub-systems could opt in or out of individual checks
by the service.
 -- Tim
