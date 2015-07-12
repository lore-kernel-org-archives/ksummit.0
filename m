Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5DCB93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:59:56 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 70EACEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:59:56 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 13 Jul 2015 01:00:14 +0300
Message-ID: <2196355.jXBH4erg3y@avalon>
In-Reply-To: <1436558412.24408.35.camel@infradead.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 10 July 2015 21:00:12 David Woodhouse wrote:
> On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
> > On Thu, 9 Jul 2015 19:07:06 -0700 Darren Hart wrote:
> > > As far as recruitment goes, I think we're talking about barriers =
to
> > > first-timers and such - and git-send-email is one of those things=
.
> > > Eventually, a developer>=20
> > +1000
> >=20
> > I still don't use git-send-email, as I afraid that I'll blow it and=
 end
> > up sending a thousand patches to every developer that ever touched =
the
> > kernel ;-)
>=20
> Rather than sending messages, it's actually better to put them as
> *drafts*, ready to be sent by the user's normal mailer. It's not hard=

> to do this =E2=80=94 I usually dump the mails into
> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.
>=20
> And then I can *read* them before sending them, which is good practic=
e
> anyway. Am I the only person who often finds a final minor nit with
> their own patch, in that final read-through just before hitting 'send=
'
> on an email?

Certainly not, but what prevents you from doing that with git-send-emai=
l ? In=20
my workflow I always format patches with git-format-patch, proof-read t=
hem=20
with my favourite $EDITOR and then use git-send-email to send them.

> Perhaps we should provide tools which make it trivial to do the same
> for various different mail clients, without users having to know wher=
e,
> and in what form, their drafts folders are?

--=20
Regards,

Laurent Pinchart
