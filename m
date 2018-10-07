Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D27C6916
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:29:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1186D466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:29:03 +0000 (UTC)
Message-ID: <1538926141.4115.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 07 Oct 2018 08:29:01 -0700
In-Reply-To: <CAKMK7uGvgttqL_RoXumd0F4w8UMqwaVODaMWnOZz5weSFzDJ2A@mail.gmail.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAKMK7uGvgttqL_RoXumd0F4w8UMqwaVODaMWnOZz5weSFzDJ2A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2018-10-07 at 11:04 +0200, Daniel Vetter wrote:
> On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > 
> > From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00
> > 2001
> > From: James Bottomley <James.Bottomley@HansenPartnership.com>
> > Date: Sat, 6 Oct 2018 14:21:56 -0700
> > Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about
> > collecting email
> >  addresses
> > 
> > The current code of conduct has an ambiguity in the it considers
> > publishing private information such as email addresses unacceptable
> > behaviour.  Since the Linux kernel collects and publishes email
> > addresses as part of the patch process, add an exception clause for
> > email addresses ordinarily collected by the project to correct this
> > ambiguity.
> > 
> > Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.c
> > om>
> > ---
> >  Documentation/process/code-of-conduct.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/process/code-of-conduct.rst
> > b/Documentation/process/code-of-conduct.rst
> > index ab7c24b5478c..aa40e34e7785 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants
> > include:
> >  * Trolling, insulting/derogatory comments, and personal or
> > political attacks
> >  * Public or private harassment
> >  * Publishing others’ private information, such as a physical or
> > electronic
> > -  address, without explicit permission
> > +  address not ordinarily collected by the project, without
> > explicit permission
> >  * Other conduct which could reasonably be considered inappropriate
> > in a
> >    professional setting
> 
> We've discussed this a bit with freedesktop.org people a while ago,
> both from a CoC and privacy regulations pov, and we concluded that
> attaching random people's emails in Reported-by: and similar lines,
> without their consent, is indeed a problem. Bugzilla is rather
> problematic in this way, since it looks like it's protecting your
> email address and keeping it private, but then you can still just
> grab it from the bugzilla emails without first asking for permission.
> That's one of the reasons why fd.o admins want to retire Bugzilla in
> favour of gitlab issues (where this is handled a lot more strictly).

This is a code of conduct example of a violation.  While I agree we
should exercise sensitivity in reporter expectations I don't think a
maintainer getting it wrong should be equated to doxxing.

In many ways, this is why having examples sections in quasi legal
documents is a bad thing to do because it's arguable (as you have done)
that if some behaviour isn't explicitly mentioned in the unacceptable
examples it must be acceptable.

Look at it this way: if a maintainer screws up and adds a reported by
from someone who didn't expect their email to be published should that
be treated as an immediate code of conduct violation by whatever
enforcement process we come up with?  I think most maintainers would
answer "no" to this. 

> What we discussed in the older thread here on ksummit-discuss is
> making it clear that email addresses sent to public mailing lists are
> considered public information, which I think is worth clarifying. But
> what you're excempting here is anything collected without permission
> in the past, which I don't think is a good wording. I've definitely
> been skimping on the rules here in the past. At least in my
> understanding of the legal situation, if you get a bug report through
> a private channel, or at least a channel that hides private address
> information (like Bugzilla does, albeit sloppily), then you do have
> to ask for explicit consent to publishing that information.

I think that's not the way to look at what a code of conduct is.  The
examples need to be clear and they need to exclude any usual project
habits from the violations piece.  The nuances of when to get
permission for adding our usual tags should be covered in a separate
document (the submitting patches one).

James
