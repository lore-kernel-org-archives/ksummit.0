Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 189B9CB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 11:03:26 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92A3682F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 11:03:24 +0000 (UTC)
Date: Mon, 17 Jun 2019 08:03:15 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190617080315.4d8fd076@coco.lan>
In-Reply-To: <20190615110107.GA5974@pendragon.ideasonboard.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<20190615110107.GA5974@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 15 Jun 2019 14:01:07 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hi Mauro,
>=20
> On Fri, Jun 14, 2019 at 12:11:37PM -0300, Mauro Carvalho Chehab wrote:
> > Em Fri, 14 Jun 2019 15:58:07 +0200 Greg KH escreveu: =20
> > > On Fri, Jun 14, 2019 at 10:24:24AM -0300, Mauro Carvalho Chehab wrote=
: =20
> > >> Em Fri, 14 Jun 2019 13:12:22 +0300 Laurent Pinchart escreveu: =20
> > >>> On Thu, Jun 13, 2019 at 10:59:16AM -0300, Mauro Carvalho Chehab wro=
te:   =20
> > >>>> Em Thu, 06 Jun 2019 19:24:35 +0300 James Bottomley escreveu:
> > >>>>      =20
> > >>>>> [splitting issues to shorten replies]
> > >>>>> On Thu, 2019-06-06 at 17:58 +0200, Greg KH wrote:     =20
> > >>>>>> On Thu, Jun 06, 2019 at 06:48:36PM +0300, James Bottomley wrote:=
       =20
> > >>>>>>> This is probably best done as two separate topics
> > >>>>>>>=20
> > >>>>>>> 1) Pull network: The pull depth is effectively how many pulls y=
our
> > >>>>>>> tree does before it goes to Linus, so pull depth 0 is sent stra=
ight
> > >>>>>>> to Linus, pull depth 1 is sent to a maintainer who sends to Lin=
us
> > >>>>>>> and so on.  We've previously spent time discussing how increasi=
ng
> > >>>>>>> the pull depth of the network would reduce the amount of time L=
inus
> > >>>>>>> spends handling pull requests.  However, in the areas I play, l=
ike
> > >>>>>>> security, we seem to be moving in the opposite direction
> > >>>>>>> (encouraging people to go from pull depth 1 to pull depth 0).  =
If
> > >>>>>>> we're deciding to move to a flat tree model, where everything is
> > >>>>>>> depth 0, that's fine, I just think we could do with making a fo=
rmal
> > >>>>>>> decision on it so we don't waste energy encouraging greater tree
> > >>>>>>> depth.       =20
> > >>>>>>=20
> > >>>>>> That depth "change" was due to the perceived problems that havin=
g a
> > >>>>>> deeper pull depth was causing.  To sort that out, Linus asked for
> > >>>>>> things to go directly to him.       =20
> > >>>>>=20
> > >>>>> This seems to go beyond problems with one tree and is becoming a =
trend.
> > >>>>>      =20
> > >>>>>> It seems like the real issue is the problem with that subsystem
> > >>>>>> collection point, and the fact that the depth changed is a sign =
that
> > >>>>>> our model works well (i.e. everyone can be routed around.)      =
 =20
> > >>>>>=20
> > >>>>> I'm not really interested in calling out "problem" maintainers, or
> > >>>>> indeed having another "my patch collection method is better than =
yours"
> > >>>>> type discussion.  What I was fishing for is whether the general
> > >>>>> impression that greater tree depth is worth striving for is actua=
lly
> > >>>>> correct, or we should all give up now and simply accept that the
> > >>>>> current flat tree is the best we can do, and, indeed is the model=
 that
> > >>>>> works best for Linus.  I get the impression this may be the case,=
 but I
> > >>>>> think making sure by having an actual discussion among the intere=
sted
> > >>>>> parties who will be at the kernel summit, would be useful.     =20
> > >>>>=20
> > >>>> On media, we came from a "depth 1" model, moving toward a "depth 2=
" level:=20
> > >>>>=20
> > >>>> patch author -> media/driver maintainer -> subsystem maintainer ->=
 Linus     =20
> > >>>=20
> > >>> I'd like to use this opportunity to ask again for pull requests to =
be
> > >>> pulled instead of cherry-picked.   =20
> > >>=20
> > >> There are other forums for discussing internal media maintainership,
> > >> like the weekly meetings we have and our own mailing lists.   =20
> > >=20
> > > You all have weekly meetings?  That's crazy... =20
> >=20
> > Yep, every week we do a meeting, usually taking about 1 hour via irc,
> > on this channel:
> >=20
> > 	https://linuxtv.org/irc/irclogger_logs//media-maint
> >  =20
> > > Anyway, I'll reiterate Laurent here, keeping things as a pull instead=
 of
> > > cherry-picking does make things a lot easier for contributors.  I know
> > > I'm guilty of it as well as a maintainer, but that's only until I sta=
rt
> > > trusting the submitter.  Once that happens, pulling is _much_ easier =
as
> > > a maintainer instead of individual patches for the usual reason that
> > > linux-next has already verified that the sub-tree works properly befo=
re
> > > I merge it in.
> > >=20
> > > Try it, it might make your load be reduced, it has for me. =20
> >=20
> > If you think this is relevant to a broader audience, let me reply with
> > a long answer about that. I prepared it and intended to reply to our
> > internal media maintainer's ML (added as c/c).=20
> >=20
> > Yet, I still think that this is media maintainer's dirty laundry
> > and should be discussed elsewhere ;-) =20
>=20
> I'll do my best to reply below with comments that are not too specific
> to the media subsystem, hoping it will be useful for a wider audience
> :-)
>=20
> > ---
> >=20
> > Laurent,
> >=20
> > I already explained a few times, including during the last Media Summit,
> > but it seems you missed the point.
> >=20
> > As shown on our stats:
> > 	https://linuxtv.org/patchwork_stats.php
> >=20
> > We're receiving about 400 to 1000 patches per month, meaning 18 to 45
> > patches per working days (22 days/month). From those, we accept about
> > 100 to 300 patches per month (4.5 to 13.6 patches per day).
> >=20
> > Currently, I review all accepted patches. =20
>=20
> As other have said or hinted, this is where things start getting wrong.
> As a maintainer your duty isn't to work for 24h a day and review every
> single patch. The duty of a maintainer is to help the subsystem stay
> healthy and move forward. This can involve lots of technical work, but
> it doesn't have to, that can also be delegated (providing, of course,
> that the subsyste=C3=B9 would have technically competent and reliable
> contributors who would be willing to help there). In my opinion
> maintaining a subsystem is partly a technical job, and partly a social
> job. Being excellent at both is the icing on the cake, not a minimal
> requirement.

There are a couple of reasons why I keep doing that. Among them:

1) I'd like to follow what's happening at the subsystem. Reviewing the
patches allow me to have at least a rough idea about what's happening,
with makes easier when we need to discuss about possible changes at
the core;

2) An additional reviewer improves code quality. One of the feedbacks
I get from sub-maintainers is that we need more core review. So, I'm
doing my part.

3) I like my work.

>=20
> > I have bandwidth to review 4.5 to 13.6 patches per day, not without a l=
ot
> > of personal efforts. For that, I use part of my spare time, as I have o=
ther
> > duties, plus I develop patches myself. So, in order to be able to handle
> > those, I typically work almost non-stop starting at 6am and sometimes
> > going up to 10pm. Also, when there are too much stuff pending (like on
> > busy months), I handle patches also during weekends. =20
>=20
> I wasn't aware of your personal work schedule, and I'm sorry to hear
> it's so extreme. This is not sustainable, and I think this clearly shows
> that a purely flat tree model with a single maintainer has difficulty
> scaling for large subsystems. If anything, this calls in my opinion for
> increasing the pull network depth to make your job bearable again.

It has been sustainable. I've doing it over the last 10 years.

It is not every day I go from 6am to 10pm. Also, it is not that I don't have
a social life. I still have time for my hobbies and for my family.

>=20
> > However, 45 patches/day (225 patches per week) is a lot for me to
> > review. I can't commit to handle such amount of patches.
> >=20
> > That's why I review patches after a first review from the other
> > media maintainers. The way I identify the patches I should review is
> > when I receive pull requests.
> >=20
> > We could do a different workflow. For example, once a media maintainer
> > review a patch, it could be delegated to me at patchwork. This would li=
kely=20
> > increase the time for merging stuff, as the workflow would change from:
> >=20
> >  +-------+    +------------------+    +---------------+
> >  | patch | -> | media maintainer | -> | submaintainer |=20
> >  +-------+    +------------------+    +---------------+
> >=20
> > to:=20
> >=20
> >  +-------+    +------------------+    +---------------+    +-----------=
-------+    +---------------+
> >  | patch | -> | media maintainer | -> | submaintainer | -> | media main=
tainer | -> | submaintainer |=20
> >  +-------+    +------------------+    +---------------+    +-----------=
-------+    +---------------+
> >=20
> >   \------------------------v--------------------------/    \-----------=
----------v------------------/
> > 			Patchwork                                           Pull Request
> >=20
> > The pull request part of the new chain could eventually be (semi-)autom=
ated
> > by some scripting that would just do a checksum sum at the received pat=
ches=20
> > that were previously reviewed by me. If matches, and if it passes on th=
e=20
> > usual checks I run for PR patches, it would push on some tree. Still, i=
t=20
> > would take more time than the previous flow. =20
>=20
> I'm sorry, but I don't think this goes in the right direction. With the
> number of patches increasing, and the number of hours in a maintainer's
> day desperately not agreeing to increase above 24, the only scalable
> solution I see is to stop reviewing every single patch that is accepted
> in the subsystem tree, through delegation/sharing of maintainer's
> duties, and trust. I know it can be difficult to let go of a driver one
> has authored and let it live its life, so I can only guess the
> psychological effect is much worse for a whole subsystem. I've authored
> drivers that I cared and still care about, and I need to constantly
> remind me that too much love can lead to suffocating. The most loving
> parent has to accept that their children will one day leave home, but
> that it doesn't mean their lives will part forever. I think the same
> applies to free software.

That's not the point. The point is that, while I have time for doing
patch reviews, I want to keep doing it.

Also, as I said, this is media dirty laundering: weather I would keep
doing patch reviews or not - and how this will work - is something for
our internal discussions, and not for KS.

>=20
> > Also, as also discussed during the media summit, in order to have such
> > kind of automation, we would need to improve our infrastructure, moving
> > the tests from a noisy/heated server I have over my desk to some VM
> > inside the cloud, once we get funds for it. =20
>=20
> Sure, and I think this is a topic that would gain from being discussed
> with a wider audience. The media subsystem isn't the only one to be
> large enough that it would benefit a lot from automation (I would even
> argue that all subsystems could benefit from that), so sharing
> experiences, and hearing other subsystem's wishes, would be useful here.

Maybe.

Are there any other subsystem currently working to get funding for
hosting/automation?

>=20
> > In any case, a discussion that affects the patch latency and our intern=
al
> > procedures within the media subsystem is something that should be discu=
ssed
> > with other media mantainers, and not at KS. =20
>=20
> Isn't improving patch latency something that would be welcome throughout
> the kernel ?

Your proposed change won't improve it. It will either keep the same,
if we keep the current flow:

	  +-------+    +------------------+    +---------------+
	  | patch | -> | media maintainer | -> | submaintainer |=20
	  +-------+    +------------------+    +---------------+

(either if I review the patch or not, the flow will be the same - and
so the patch latency)

Or make it higher, if we change it to:

  +-------+    +------------------+    +---------------+    +--------------=
----+    +---------------+
  | patch | -> | media maintainer | -> | submaintainer | -> | media maintai=
ner | -> | submaintainer |=20
  +-------+    +------------------+    +---------------+    +--------------=
----+    +---------------+
=20
   \------------------------v--------------------------/    \--------------=
-------v------------------/
 			Patchwork                                           Pull Request

More below:

>=20
> > -
> >=20
> > That's said, one day I may not be able to review all accepted patches.
> > When this day comes, I'll just apply the pull requests I receive.
> >=20
> > -
> >=20
> > Finally, if you're so interested on improving our maintenance model,
> > I beg you: please handle the patches delegated to you:
> >=20
> > 	https://patchwork.linuxtv.org/project/linux-media/list/?series=3D&subm=
itter=3D&state=3D&q=3D&archive=3D&delegate=3D2510
> >=20
> > As we agreed on our media meetings, I handled about ~60 patches that=20
> > were waiting for your review since 2017 a couple of weeks ago -=20
> > basically the ones that are not touching the drivers you currently
> > maintain, but there are still 23 patches sent between 2013-2018
> > over there, plus the 48 patches sent in 2019. =20

Reviewing the patches on your queue or delegating them to others is
actually a concrete thing you can do in order to reduce the patch
handling latency.

Thanks,
Mauro
