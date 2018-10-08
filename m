Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A3E5677F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 18:12:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D6C07E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 18:12:00 +0000 (UTC)
Message-ID: <1539022317.4344.17.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tim.Bird@sony.com, ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 08 Oct 2018 11:11:57 -0700
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF80518843@USCULXMSG01.am.sony.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80516F31@USCULXMSG01.am.sony.com>
	<1538883209.4088.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80517411@USCULXMSG01.am.sony.com>
	<1539007780.4344.3.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80518843@USCULXMSG01.am.sony.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] [PATCH 2/2] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2018-10-08 at 17:58 +0000, Tim.Bird@sony.com wrote:
> > -----Original Message-----
> > From: James Bottomley
> > 
> > On Mon, 2018-10-08 at 13:51 +0000, Tim.Bird@sony.com wrote:
> > > > -----Original Message-----
> > > > From: James Bottomley
> > > > On Sat, 2018-10-06 at 21:43 +0000, Tim.Bird@sony.com wrote:
> > > > > > -----Original Message-----
> > > > > > From: James Bottomley
> > > > > > 
> > > > > > Significant concern has been expressed about the
> > > > > > responsibilities outlined in the enforcement clause of the
> > > > > > new
> > > > > > code of conduct.  Since there is concern that this becomes
> > > > > > binding on the release of the 4.19 kernel, strip the
> > > > > > enforcement clauses to give the community time to consider
> > > > > > and
> > > > > > debate how this should be handled.
> > > > > > 
> > > > > > Signed-off-by: James Bottomley
> > > > > > <James.Bottomley@HansenPartnership.com>
> > > > > > ---
> > > > > >  Documentation/process/code-of-conduct.rst | 15 ---------
> > > > > > ------
> > > > > >  1 file changed, 15 deletions(-)
> > > > > > 
> > > > > > diff --git a/Documentation/process/code-of-conduct.rst
> > > > > > b/Documentation/process/code-of-conduct.rst
> > > > > > index aa40e34e7785..4dd90987305b 100644
> > > > > > --- a/Documentation/process/code-of-conduct.rst
> > > > > > +++ b/Documentation/process/code-of-conduct.rst
> > > > > > @@ -59,21 +59,6 @@ address, posting via an official social
> > > > > > media account, or acting as an appointed representative at
> > > > > > an
> > > > > > online or offline event. Representation of a project may be
> > > > > >  further defined and clarified by project maintainers.
> > > > > > 
> > > > > > -Enforcement
> > > > > > -===========
> > > > > > -
> > > > > > -Instances of abusive, harassing, or otherwise unacceptable
> > > > > > behavior may be
> > > > > > -reported by contacting the Technical Advisory Board (TAB)
> > > > > > at
> > > > > > -<tab@lists.linux-foundation.org>. All complaints will be
> > > > > > reviewed and
> > > > > > -investigated and will result in a response that is deemed
> > > > > > necessary and
> > > > > > -appropriate to the circumstances. The TAB is obligated to
> > > > > > maintain
> > > > > > -confidentiality with regard to the reporter of an
> > > > > > incident.  Further details of
> > > > > > -specific enforcement policies may be posted separately.
> > > > > 
> > > > > I think it's OK to leave the above section, as it doesn't
> > > > > speak
> > > > > to enforcement, but rather is just a set of reporting
> > > > > instructions, with an assurance of confidentiality.  This
> > > > > seems
> > > > > to me not to be the objectionable part of this section.
> > > > > (IOW, I would omit this removal from the patch).
> > > > 
> > > > So I did think about that, but it struck me that with both
> > > > paragraphs removed, the current CoC is very similar to the
> > > > status quo: namely every subsystem handles their own issues and
> > > > that's formalised by the "Our Responsibilities" section.  That
> > > > also makes me think that whether we want a centralised channel
> > > > of reporting or enforcement and what it should be also ought to
> > > > be part of the debate.  The TAB was created to channel
> > > > community technical input into the Linux Foundation.  That's
> > > > not to say it can't provide the reporting and arbitration
> > > > structure, but if we're going to do it right we should debate
> > > > the expansion of its duties (and powers).
> > > 
> > > When the Code of Conflict was adopted 3 years ago, we already
> > > created the central reporting mechanism, so I actually think
> > > leaving (ie including) the above paragraph is closer to the
> > > status quo.  I think it's the expanded powers and duties (or
> > > perception thereof) that are causing concern and I think debating
> > > those to clarify intent, and adopting changes as needed  to
> > > ameliorate concerns is worthwhile. 
> > If we want to go back to the status quo, then a plain revert is the
> > patch series I should submit.
> 
> Let me try to be more clear.  I don't want to go back to the status
> quo. I was saying that if we keep this document, but omit the central
> reporting mechanism, that is a large departure from the status quo,
> because the Code of Conflict already established that.  And I think
> that having an ombudsman-type role somewhere in the community
> is beneficial.

The purpose of this patch is not to be the final point but to take us
up to a useful starting point for Shuah's CoC debate proposal at the
kernel summit (and beyond).  Shuah asked that I clarify this in the
commit message, so I will in v2.

> I believe parts of the Code of Conduct are an improvement over the
> Code of Conflict, so my personal preference would be to keep it
> and try to adjust it moving forward.  I think your patches, with
> clear suggestions for improvements (or for deletions in the case
> where we want more debate on particular sections before adopting
> them) is a good approach, and I like that process as opposed to
> starting over from scratch.

OK, so you're happy with the current patch as the starting not the
ending point?

> > > I believe that in the vast majority of cases, the TAB will end up
> > > performing a mediator role to smooth hurt feelings and remind and
> > > encourage improved communication - very similar to what we've
> > > done in the past.  I really believe that bans will continue to be
> > > very few and far between, as they have been historically (I can
> > > only think of 3 in the past decade.)
> > 
> > That might very well be the position the discussion arrives at;
> > however, I really think making the process fully transparent this
> > time requires not prejudging the outcome.
> 
> I don't understand your point here.  Can you elaborate?

Yes: I could foresee an outcome where the kernel community decides to
vest CoC enforcement in a different body from the TAB, or even in no
body but an informal maintainers list.  I'm not saying that *will*
happen, merely that it's an outcome that should not be foreclosed at
this point.

James
