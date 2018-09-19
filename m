Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1042CBE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 14:16:39 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C5FB63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 14:16:38 +0000 (UTC)
Message-ID: <1537366581.6816.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Wed, 19 Sep 2018 10:16:21 -0400
In-Reply-To: <20180919090332.723c1b75@coco.lan>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan> <20180919090332.723c1b75@coco.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, 2018-09-19 at 09:03 -0300, Mauro Carvalho Chehab wrote:
> Em Wed, 19 Sep 2018 08:37:49 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> escreveu:
> 
> > Em Wed, 19 Sep 2018 07:28:02 -0400
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > 
> > > On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote:
> > > > Em Tue, 18 Sep 2018 10:02:08 -0400
> > > > James Bottomley <James.Bottomley@HansenPartnership.com>
> > > > escreveu:
> > > >   
> > > > > > After the past 2-3 days I get the feeling there are
> > > > > > maintainers unsure about how this affects them and I think
> > > > > > assuaging those fears might be a good thing.
> > > > > >   
> > > > > 
> > > > > From my perspective, which is probably fairly widespread:
> > > > > we're already pretty much policing the lists using a set of
> > > > > rules which match fairly closely to the new CoC, so there
> > > > > should really be no huge impact.  
> > > > 
> > > > After carefully reading it a couple of times, I think it has a
> > > > huge impact.
> > > > 
> > > > The more immediate impact is with regards to this wording:
> > > > 
> > > > 	"Examples of unacceptable behavior by participants
> > > > include:
> > > > 	...
> > > > 	* Publishing others’ private information, such as a
> > > > physical or electronic
> > > > 	  address, without explicit permission"
> > > > 
> > > > When we publish a patch with a Signed-off-by, Reviewed-by,
> > > > Acked-by, Requested-by, Suggested-by, etc, we are actually
> > > > publishing an electronic address.
> > > > 
> > > > The DCO 1.1 has an explicit clause that would allow to publish
> > > > the email address from the SOB's, together to its
> > > > redistribution:
> > > > 
> > > > "       (d) I understand and agree that this project and the
> > > > contribution
> > > >             are public and that a record of the contribution
> > > > (including all
> > > >             personal information I submit with it, including my
> > > > sign-off) is
> > > >             maintained indefinitely and may be redistributed
> > > > consistent with
> > > >             this project or the open source license(s)
> > > > involved."
> > > > 
> > > > But that doesn't cover the other tags.  
> > > 
> > > I disagree with the strictness of the interpretation: "including
> > > all personal information I submit with it" covers all the other
> > > tags. Although the expectation is the permission was obtained by
> > > one of the people adding the sign off because that's how the DCO
> > > flows, which might be a bit wishful thinking, we've always
> > > thought that it covers the additional tags for the use case
> > > section (d) was created for: national data protection acts and if
> > > it covers that case, it surely covers the CoC permission case.
> > 
> > I see your point. Yes, that places the SOB signer's as^W backs 
> > responsible for such thing.
> > 
> > > Additionally, as others have said, if the tag was added from
> > > information in the public mailing list, it's not private within
> > > the meaning of the CoC.  I think the electronic mail example in
> > > the CoC is simply because it's more used in a github type
> > > environment where email addresses are private and not necessarily
> > > part of the workflow.
> > 
> > If it doesn't apply, it should be removed. Legal documents with
> > unneeded terms only cause confusion (and this *is* a legal document
> > - a
> 
> In time:
> 	and this *is* a legal document -> I believe that this is a
> legal document
> 
> I'm actually waiting for a legal advice about this under US laws.
> Under Brazilian laws (and probably other civil law system), I'm
> almost sure it is a contract - if this is a valid or a void one has
> yet to be seen.

OK, I can't disagree with this.  It does definitely impose obligations
that are legally meaningful.  However ...

> > IMHO very badly written Contract of Adhesion - as it creates a lot
> > of new duties to maintainers and establishes punishment measures if
> > the terms of such contract are violated).

I can't disagree with that either.  Unfortunately, most codes of
conduct are definitely badly written from a legal point of view because
they're usually constructed by non-lawyers without any legal input. 
I'm not very keen on this one because, as I said somewhere upthread, it
doesn't cover a lot of our problem areas.  However, it's not the worst
I've seen.

To your specific concern, run this thought experiment with me: 
Supposing instead of  "Publishing others’ private information, such as
a physical or electronic address, without explicit permission", it had
said "publishing others non-public information ...." (sorry had to
correct the misplaced apostrophe as well).  I think you can agree with
me that an email address already sent to the list cannot be non-public, 
since it's already been disclosed by the sender in a public forum.  So
with that form of wording it would cover the tags use case, right?

Now let me point out that from a US legal point of view, "non-public"
encompasses a broader range of things than "private", so anything
that's private is also non-public but not everything that's non-public
is also private.  Thus the original wording is actually a narrower duty
which is a strict subset of the form of wording I asked you to
consider.  Thus, I still don't think our use of tags resulting from
public email exchanges can be in any way construed as a violation of
the privacy duty imposed by the CoC.

James
