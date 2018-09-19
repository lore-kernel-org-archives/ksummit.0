Return-Path: <airlied@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3165BC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 20:23:20 +0000 (UTC)
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48BE9F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 20:23:20 +0000 (UTC)
Received: by mail-qt0-f179.google.com with SMTP id l42-v6so6367857qtf.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 13:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
In-Reply-To: <20180919165552.0f30bbef@coco.lan>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 20 Sep 2018 06:23:05 +1000
Message-ID: <CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
To: mchehab+samsung@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, 20 Sep 2018 at 05:56, Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Em Wed, 19 Sep 2018 10:16:21 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
>
> > On Wed, 2018-09-19 at 09:03 -0300, Mauro Carvalho Chehab wrote:
> > > Em Wed, 19 Sep 2018 08:37:49 -0300
> > > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:
> > >
> > > > Em Wed, 19 Sep 2018 07:28:02 -0400
> > > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > > >
> > > > > On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote:
> > > > > > Em Tue, 18 Sep 2018 10:02:08 -0400
> > > > > > James Bottomley <James.Bottomley@HansenPartnership.com>
> > > > > > escreveu:
> > > > > >
> > > > > > > > After the past 2-3 days I get the feeling there are
> > > > > > > > maintainers unsure about how this affects them and I think
> > > > > > > > assuaging those fears might be a good thing.
> > > > > > > >
> > > > > > >
> > > > > > > From my perspective, which is probably fairly widespread:
> > > > > > > we're already pretty much policing the lists using a set of
> > > > > > > rules which match fairly closely to the new CoC, so there
> > > > > > > should really be no huge impact.
> > > > > >
> > > > > > After carefully reading it a couple of times, I think it has a
> > > > > > huge impact.
> > > > > >
> > > > > > The more immediate impact is with regards to this wording:
> > > > > >
> > > > > >       "Examples of unacceptable behavior by participants
> > > > > > include:
> > > > > >       ...
> > > > > >       * Publishing others=E2=80=99 private information, such as=
 a
> > > > > > physical or electronic
> > > > > >         address, without explicit permission"
> > > > > >
> > > > > > When we publish a patch with a Signed-off-by, Reviewed-by,
> > > > > > Acked-by, Requested-by, Suggested-by, etc, we are actually
> > > > > > publishing an electronic address.
> > > > > >
> > > > > > The DCO 1.1 has an explicit clause that would allow to publish
> > > > > > the email address from the SOB's, together to its
> > > > > > redistribution:
> > > > > >
> > > > > > "       (d) I understand and agree that this project and the
> > > > > > contribution
> > > > > >             are public and that a record of the contribution
> > > > > > (including all
> > > > > >             personal information I submit with it, including my
> > > > > > sign-off) is
> > > > > >             maintained indefinitely and may be redistributed
> > > > > > consistent with
> > > > > >             this project or the open source license(s)
> > > > > > involved."
> > > > > >
> > > > > > But that doesn't cover the other tags.
> > > > >
> > > > > I disagree with the strictness of the interpretation: "including
> > > > > all personal information I submit with it" covers all the other
> > > > > tags. Although the expectation is the permission was obtained by
> > > > > one of the people adding the sign off because that's how the DCO
> > > > > flows, which might be a bit wishful thinking, we've always
> > > > > thought that it covers the additional tags for the use case
> > > > > section (d) was created for: national data protection acts and if
> > > > > it covers that case, it surely covers the CoC permission case.
> > > >
> > > > I see your point. Yes, that places the SOB signer's as^W backs
> > > > responsible for such thing.
> > > >
> > > > > Additionally, as others have said, if the tag was added from
> > > > > information in the public mailing list, it's not private within
> > > > > the meaning of the CoC.  I think the electronic mail example in
> > > > > the CoC is simply because it's more used in a github type
> > > > > environment where email addresses are private and not necessarily
> > > > > part of the workflow.
> > > >
> > > > If it doesn't apply, it should be removed. Legal documents with
> > > > unneeded terms only cause confusion (and this *is* a legal document
> > > > - a
> > >
> > > In time:
> > >     and this *is* a legal document -> I believe that this is a
> > > legal document
> > >
> > > I'm actually waiting for a legal advice about this under US laws.
> > > Under Brazilian laws (and probably other civil law system), I'm
> > > almost sure it is a contract - if this is a valid or a void one has
> > > yet to be seen.
> >
> > OK, I can't disagree with this.  It does definitely impose obligations
> > that are legally meaningful.  However ...

A legal document would mean there were legal repercussions for
violating it, like violating copyright laws or getting fired for
violating your employment contract.

This doesn't seem to stand on that, this is a set of guidelines for
how a community should act. The people interpreting the document are
members of the community that we in theory trust (via TAB elections).
These are examples of things that cause problems, and guidelines to
follow to avoid bad behaviours, but the intent still matters at the
end of the day. If someone complains you accidentally tagged their
email, the people on the complaints review will figure that out.

It's funny we don't really have this problem with the drm so far, due
to mainly group maintainership. If someone sends me a private email
unless it's a security issue, I ask them to resend it to the public
lists and/or use a public bugzilla, before I action it. This ensures
that members of group teams can engage as a group instead of one
maintainer having the primary inbox load.

I've no objections to clarifying this sort of thing and I think it's
important that we do, but trying to turn this document into something
like an legal employment contract isn't going to be helpful.

Dave.
