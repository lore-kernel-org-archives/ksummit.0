Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4F32EA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Oct 2018 19:58:02 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D4770802
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 18 Oct 2018 19:58:00 +0000 (UTC)
Message-ID: <1539892678.18970.30.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tim.Bird@sony.com, frowand.list@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 18 Oct 2018 12:57:58 -0700
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF805271E5@USCULXMSG01.am.sony.com>
References: <1539701820.2805.6.camel@HansenPartnership.com>
	<1539701896.2805.7.camel@HansenPartnership.com>
	<e332116b-62e8-9930-c263-d022edb5828e@gmail.com>
	<1539744091.2805.108.camel@HansenPartnership.com>
	<16a20416-0045-dfe6-d937-63f2f0cff269@gmail.com>
	<1539803331.3769.62.camel@HansenPartnership.com>
	<b056cdc3-29de-b6c8-b2a7-67b93b0fd730@gmail.com>
	<1539874609.2845.5.camel@HansenPartnership.com>
	<b9f5376f-d8e8-bfe5-d27e-14c26d4859b8@gmail.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF805271E5@USCULXMSG01.am.sony.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] [PATCH v3 1/3] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2018-10-18 at 19:49 +0000, Tim.Bird@sony.com wrote:
> > -----Original Message-----
> > From: Frank Rowand
> > 
> > On 10/18/18 07:56, James Bottomley wrote:
> > > On Wed, 2018-10-17 at 12:53 -0700, Frank Rowand wrote:
> > > > On 10/17/18 12:08, James Bottomley wrote:
> > > 
> > > [...]
> > > > > > Trying to understand how you are understanding my comment
> > > > > > vs what
> > > > > > I intended to communicate, it seems to me that you are
> > > > > > focused on
> > > > > > the "where allowed" and I am focused on the "which email
> > > > > > addresses".
> > > > > > 
> > > > > > More clear?  Or am I still not communicating well enough?
> > > > > 
> > > > > I think the crux of the disagreement is that you think the
> > > > > carve
> > > > > out equates to a permission which is not specific enough and
> > > > > I
> > > > > think it
> > > > 
> > > > Nope.  That is a big place where I was not transferring my
> > > > thoughts
> > > > to clear communication.  I agree that what I wrote should have
> > > > been
> > > > written in terms of carve out instead of permission.
> > > > 
> > > > 
> > > > > doesn't equate to a permission at all, which is why there's
> > > > > no need
> > > > > to make it more explicit.  Is that a fair characterisation?
> > > > 
> > > > Nope.  My concern is "which email addresses".
> > > 
> > > The idea here was because it's a carve out that doesn't give
> > > permission
> > > and because the permission is ruled by the project contribution
> > > documents, the carve out should be broad enough to cover anything
> > > they
> > > might say hence "email addresses not ordinarily collected by the
> > > project" are still included as unacceptable behaviour.
> > > 
> > > Perhaps if you propose the wording you'd like to see it would
> > > help
> > > because there still looks to be some subtlety I'm not getting.
> > 
> > 
> > From the beginning of the thread:
> > 
> >   > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by
> > participants
> > include:
> >   >  * Trolling, insulting/derogatory comments, and personal or
> > political
> > attacks
> >   >  * Public or private harassment
> >   >  * Publishing others’ private information, such as a physical
> > or electronic
> >   > -  address, without explicit permission
> >   > +  address not ordinarily collected by the project, without
> > explicit
> > permission
> >   >  * Other conduct which could reasonably be considered
> > inappropriate in a
> >   >    professional setting
> > 
> > 
> > Alternative (and I'm sure someone else can probably clean this up a
> > little bit):
> > 
> > + address that has been provided in a public space for the project,
> > without explicit permission
> 
> This ends up reading like so:
> 
> ----
> Examples of unacceptable behavior by participants include:
> ...
> * Publishing others’ private information, such as a physical or
> electronic
> address that has been provided in a public space for the project,
> without
> explicit permission.
> ----
> 
> I think that in context, you want a 'not' in there.  That is:
> unacceptable behavior includes publishing others' private
> information... that has *not* been provided in a public space.  So, I
> think the suggested text needs some fixing, IMHO.

You beat me to this one.  However, there is another issue that I did
touch on but perhaps not in this subthread: For those of us who live in
the US, our addresses (that's physical and sometimes email) are
actually provided in a public space because they're available in the
public property records.  That's actually why I chose "not ordinarily
collected by the project" as opposed to "not previously provided in the
public space" or an equivalent because doxxing in the US is mostly
finding this information from public sources and broadcasting it.

> I looked at this issue upstream, and decided to leave the wording in
> the CoC itself alone - favoring instead to add a clarifying addition
> to the upstream CoC FAQ, about some email addresses not being
> private information.
> 
> The reason I took that approach, rather than try to change the
> wording inside the CoC, is that the current wording seems to me to be
> sufficient. The thing that is unacceptable is publishing private
> information.  The "such as..." clause is intended to convey examples
> of the types of thing that might usually be considered private
> information.  But it is not exhaustive, nor is it necessarily
> correct, depending on the circumstances.  In particular, email
> addresses are sometimes private information and sometimes not.
> In the context of kernel development, many email addresses are not
> private.
> 
> I am sympathetic to the argument that we use emails as public
> information so much in kernel development processes, that it makes
> sense to omit this or qualify it more.

I think that's the sense of the people who acked this, yes.  Personally
I'm happy with a separate clarification in another document, but I can
also see the argument that we do need our single CoC to be consistent
with our operational method, which is why I proposed the patch.

> My own views are that:
> 1) if we change this line at all, we should simply omit the "such
> as..." part of the phrase, and leave it at:
> 
> * Publishing others’ private information without explicit permission

This looks OK to me too ... the problem with the original is that the
additional qualification overlaps our normal project method of
operation, this solves the issue as well.

James


> but also
> 2) I'm OK with leaving the phrase as is and handling the concerns
> in an clarifying document.
> 
> Just my 2 cents.
>  -- Tim
> 
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
