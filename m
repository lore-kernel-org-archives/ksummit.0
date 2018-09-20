Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA4AD10F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 13:04:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E600F75B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 13:04:36 +0000 (UTC)
Date: Thu, 20 Sep 2018 10:04:19 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180920100419.6d82aff1@coco.lan>
In-Reply-To: <871s9oxse0.fsf@intel.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
	<CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
	<20180919210122.694bf4a3@coco.lan>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EB915@USCULXMSG01.am.sony.com>
	<875zz0y8ym.fsf@intel.com> <20180920072351.49c41618@coco.lan>
	<871s9oxse0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: James.Bottomley@hansenpartnership.com, Tim.Bird@sony.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 20 Sep 2018 15:31:03 +0300
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Thu, 20 Sep 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> w=
rote:
> > Em Thu, 20 Sep 2018 09:33:05 +0300
> > Jani Nikula <jani.nikula@intel.com> escreveu:
> > =20
> >> On Thu, 20 Sep 2018, Tim.Bird@sony.com wrote: =20
> >> > My view is that it's intended to be a social document, with guidelin=
es
> >> > for actions within the community  (Actions by maintainers, actions
> >> > by contributors, actions by the TAB).  To me it's more like rules for
> >> > a party at my house.  If someone doesn't abide by the rules, I'll ask
> >> > them to leave the party.  And I'll ask others at the party to remind=
 people
> >> > to abide by the rules.  But the person kicked out can hardly call th=
e cops
> >> > on me for doing so.   =20
> >>=20
> >> Agreed.
> >>=20
> >> I think there's much more value in adopting a widely used code of
> >> conduct than writing your own, or even trying to tweak it. If a project
> >> uses the Contributor Covenant, you pretty much know the rules without
> >> actually having to read another document and wonder what this all mean=
s.
> >> In this regard, it's really not unlike the GPL for copyleft licenses;
> >> one acronym tells you what you can and can't do.
> >>=20
> >> With that perspective, I think the changes proposed in this thread do
> >> more harm than good. If people still insist the text should be improve=
d,
> >> I think the proper flow is to file issues or pull requests to
> >> Contributor Covenant upstream [1], and later update to a new version of
> >> the document. =20
> >
> > The main experience of the Contributor Covenant's author seems to be
> > on Github. There is a fundamental difference between a Github-based
> > project workflow and the Kernel: there, everything happens inside a GUI
> > interface. Usually, those projects don't have a large number of
> > maintainers, nor contributors. Message traffic is typically not high.
> >
> > On such kind of interface, the maintainers can edit or delete all
> > kinds of messages, even posted by a third party. So, a text like:
> >
> > 	"Maintainers have the right and responsibility to remove, edit,..."
> >
> > would work. If the number of messages are small, it is also an easy
> > task.
> >
> > It could also work on a smaller e-mail-based project where there is
> > just one or two moderated ML.
> >
> > However, on a higly e-mail based project like the Kernel, where we rece=
ive
> > hundreds to thousands of messages per day, and we have a large
> > number of mailing lists, in order to comply with that CoC statement,=20
> > all email lists should be moderated. I can't imagine any way to have
> > a list like LKML moderated. Even moderating the linux-media ML nowadays
> > would be really hard, and would be someone's full time job.
> >
> > Even if LF hires a team of moderators for all Kernel mailing lists,
> > if someone cross-post a message on more than one list, different
> > moderators could take different measurements, with could be a problem,
> > if the same email is threated different by the different moderators.
> >
> > Not practical (and it comes with a cost).
> >
> > Using the terms of the CoC, by not taking any measure to stop
> > offensive posts, maintainers wouldn't be "acting in good faith".
> > So, maintainers are violating the policy.
> >
> > Also, if someone felt abused, the "unacceptable behavior may be
> > reported by contacting the Technical Advisory Board (TAB)".
> > The *may* word indicates that he can also go to other places to
> > do a similar complain. Implicitly, it opens space to go to court.
> >
> > So, the practical effect is that, if someone wants to fire
> > a random maintainer, all it has to do is to create a fake account,
> > send a bunch of random offensive messages to himself on his real
> > account, and then complain - first on TAB - then filing a lawsuit
> > (with can envolve both the TAB and the maintainer).
> >
> > That's why I don't think that, the way it is, this CoC applies
> > to us. The way it is, it is just FUD. I can see a few=20
> > alternatives:
> >
> > 1) Revert the CoC patch;
> > 2) Use another CoC that would work for e-mail-based workflows;
> > 3) Patch it - either changing the text of the CoC or adding
> >    a prologue adding ammendments to prevent the above risk
> >    and solving the e-mail addresses on review tags.
> >
> > My view is that, currently, we have a major issue at the=20
> > contributing process. So, if nothing happens, I may wait until
> > the Maintainer's Summit before sending any pull requests
> > upstream. =20
>=20
> I think most of what you write here is FUD.

And I think the current CoC maintainer duties are FUD.

> At the most basic level it says as a maintainer you can't ignore
> unacceptable behaviour when you see it or are pointed at it.

That's what the CoC says, not me.

> Surely there are discussions to be had about what enforcement methods
> maintainers have at their disposal, beyond just asking people to behave
> themselves, and this may well be subsystem specific.=20

The point is not what maintainers can do. The point is that this
CoC *force* us to take actions. If we don't do:

+Maintainers who do not follow or enforce the Code of Conduct in good faith=
 may
+face temporary or permanent repercussions as determined by other members o=
f the
+project=E2=80=99s leadership.

See the word *enforce*. According to it, we're forced to take
actions, or otherwise, we'll suffer repercussions (and not the violators).

The only part of this CoC that mentions what would happen with
a CoC-violator is this:

+Maintainers have the right and responsibility to remove, edit, or reject
+comments, commits, code, wiki edits, issues, and other contributions that =
are
+not aligned to this Code of Conduct, or to ban temporarily or permanently =
any
+contributor for other behaviors that they deem inappropriate, threatening,
+offensive, or harmful.

=46rom what I understood about this CoC, the enforcement happens using
this workflow:

+-------------------------+     +--------------------------------------+   =
  +------------------------+
| maintainer's censorship | --> | bad behavior noticed by a maintainer | --=
> | maintainer take action |
+-------------------------+     +--------------------------------------+   =
  +------------------------+

+-----------------------------------+     +-------------------+    +-----+ =
    +---------------------+=20
| If maintainers didn't take action | --> | someone complains |--> | TAB | =
--> | maintainer punished |
+-----------------------------------+     +-------------------+    +-----+ =
    +---------------------+=20

No part of it states that the TAB would take any action against the
infractor.=20

The penalties to the infractor, are applied by the maintainer:

1) His posts can be removed, edited, or rejected - on  "comments,
   commits, code, wiki edits, issues, and other contributions".

2) be "temporarily or permanently" banned.

Now, if someone sends an e-mail and it gets mirrored on lots of
places, how are you supposed to "remove/edit/reject"?=20

That would only work if you forbid sites to mirror your posts,
and you have admin access there at the archives to manually
edit them.

> For example, the
> drm subsystem operates under freedesktop.org infrastructure, also using
> the Contributor Covenant, and we can trivially escalate there to ban
> people if asking them is not enough.

If you just ban people, you're not following the CoC to the letter.
You'll also need to edit all freedesktop.org archives (including the
ones mirrored outside your domains), removing/editing the unacceptable
behavioral emails.

Thanks,
Mauro
