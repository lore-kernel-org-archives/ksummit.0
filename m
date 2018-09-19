Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01AD4DB7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 11:28:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46754798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 11:28:05 +0000 (UTC)
Message-ID: <1537356482.4640.7.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Wed, 19 Sep 2018 07:28:02 -0400
In-Reply-To: <20180918162948.769dda1d@coco.lan>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<1537279328.3424.6.camel@HansenPartnership.com>
	<20180918162948.769dda1d@coco.lan>
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

On Tue, 2018-09-18 at 16:29 -0300, Mauro Carvalho Chehab wrote:
> Em Tue, 18 Sep 2018 10:02:08 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> 
> > > After the past 2-3 days I get the feeling there are maintainers
> > > unsure about how this affects them and I think assuaging those
> > > fears might be a good thing.
> > > 
> > 
> > From my perspective, which is probably fairly widespread: we're
> > already pretty much policing the lists using a set of rules which
> > match fairly closely to the new CoC, so there should really be no
> > huge impact.
> 
> After carefully reading it a couple of times, I think it has a huge
> impact.
> 
> The more immediate impact is with regards to this wording:
> 
> 	"Examples of unacceptable behavior by participants include:
> 	...
> 	* Publishing others’ private information, such as a physical or
> electronic
> 	  address, without explicit permission"
> 
> When we publish a patch with a Signed-off-by, Reviewed-by, Acked-by,
> Requested-by, Suggested-by, etc, we are actually publishing an
> electronic address.
> 
> The DCO 1.1 has an explicit clause that would allow to publish the
> email address from the SOB's, together to its redistribution:
> 
> "       (d) I understand and agree that this project and the
> contribution
>             are public and that a record of the contribution
> (including all
>             personal information I submit with it, including my sign-
> off) is
>             maintained indefinitely and may be redistributed
> consistent with
>             this project or the open source license(s) involved."
> 
> But that doesn't cover the other tags.

I disagree with the strictness of the interpretation: "including all
personal information I submit with it" covers all the other tags.
Although the expectation is the permission was obtained by one of the
people adding the sign off because that's how the DCO flows, which
might be a bit wishful thinking, we've always thought that it covers
the additional tags for the use case section (d) was created for:
national data protection acts and if it covers that case, it surely
covers the CoC permission case.

Additionally, as others have said, if the tag was added from
information in the public mailing list, it's not private within the
meaning of the CoC.  I think the electronic mail example in the CoC is
simply because it's more used in a github type environment where email
addresses are private and not necessarily part of the workflow.

James
