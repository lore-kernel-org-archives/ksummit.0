Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1231EBC5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:21:33 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5573414B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:21:32 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Jul 2015 13:21:50 +0300
Message-ID: <3724384.QGNEX6Sqgi@avalon>
In-Reply-To: <CAMuHMdUtvnmf1v48g+GjczrOb4+i9po1_fui_pvAAMaGWqpaVg@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de> <2196355.jXBH4erg3y@avalon>
	<CAMuHMdUtvnmf1v48g+GjczrOb4+i9po1_fui_pvAAMaGWqpaVg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Monday 13 July 2015 12:11:42 Geert Uytterhoeven wrote:
> On Mon, Jul 13, 2015 at 12:00 AM, Laurent Pinchart wrote:
> > On Friday 10 July 2015 21:00:12 David Woodhouse wrote:
> >> On Fri, 2015-07-10 at 15:51 -0400, Steven Rostedt wrote:
> >> > On Thu, 9 Jul 2015 19:07:06 -0700 Darren Hart wrote:
> >> > > As far as recruitment goes, I think we're talking about barrie=
rs to
> >> > > first-timers and such - and git-send-email is one of those thi=
ngs.
> >> > > Eventually, a developer>
> >> >=20
> >> > +1000
> >> >=20
> >> > I still don't use git-send-email, as I afraid that I'll blow it =
and end
> >> > up sending a thousand patches to every developer that ever touch=
ed the
> >> > kernel ;-)
> >>=20
> >> Rather than sending messages, it's actually better to put them as
> >> *drafts*, ready to be sent by the user's normal mailer. It's not h=
ard
> >> to do this =E2=80=94 I usually dump the mails into
> >> ~/.local/share/evolution/mail/local/.Drafts/new/ for example.
> >>=20
> >> And then I can *read* them before sending them, which is good prac=
tice
> >> anyway. Am I the only person who often finds a final minor nit wit=
h
> >> their own patch, in that final read-through just before hitting 's=
end'
> >> on an email?
> >=20
> > Certainly not, but what prevents you from doing that with git-send-=
email ?
> > In my workflow I always format patches with git-format-patch, proof=
-read
> > them with my favourite $EDITOR and then use git-send-email to send =
them.
>
> Apparently some people think you should feed a rev-list to git-send-e=
mail
> (a feature I learned about only recently), instead of patches created=
 by
> git-format-patch. As you need the patches for checkpatch.pl anyway...=


Passing a revlist to git-send-email seems like asking for trouble, I ce=
rtainly=20
wouldn't recommend that. I use git-send-email as a glorified sendmail, =
I've=20
even used it recently to send a party invitation to a large number of f=
riends=20
:-)

--=20
Regards,

Laurent Pinchart
