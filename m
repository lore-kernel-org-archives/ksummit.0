Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C5C56845
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 03:33:35 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6D8434F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 03:33:32 +0000 (UTC)
Message-ID: <1538883209.4088.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tim.Bird@sony.com, ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 06 Oct 2018 20:33:29 -0700
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF80516F31@USCULXMSG01.am.sony.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80516F31@USCULXMSG01.am.sony.com>
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

On Sat, 2018-10-06 at 21:43 +0000, Tim.Bird@sony.com wrote:
> > -----Original Message-----
> > From: James Bottomley
> > 
> > Significant concern has been expressed about the responsibilities
> > outlined in the enforcement clause of the new code of
> > conduct.  Since there is concern that this becomes binding on the
> > release of the 4.19 kernel, strip the enforcement clauses to give
> > the community time to consider and debate how this should be
> > handled.
> > 
> > Signed-off-by: James Bottomley
> > <James.Bottomley@HansenPartnership.com>
> > ---
> >  Documentation/process/code-of-conduct.rst | 15 ---------------
> >  1 file changed, 15 deletions(-)
> > 
> > diff --git a/Documentation/process/code-of-conduct.rst
> > b/Documentation/process/code-of-conduct.rst
> > index aa40e34e7785..4dd90987305b 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -59,21 +59,6 @@ address, posting via an official social media
> > account, or
> > acting as an appointed
> >  representative at an online or offline event. Representation of a
> > project may
> > be
> >  further defined and clarified by project maintainers.
> > 
> > -Enforcement
> > -===========
> > -
> > -Instances of abusive, harassing, or otherwise unacceptable
> > behavior may be
> > -reported by contacting the Technical Advisory Board (TAB) at
> > -<tab@lists.linux-foundation.org>. All complaints will be reviewed
> > and
> > -investigated and will result in a response that is deemed
> > necessary and
> > -appropriate to the circumstances. The TAB is obligated to maintain
> > -confidentiality with regard to the reporter of an
> > incident.  Further details of
> > -specific enforcement policies may be posted separately.
> 
> I think it's OK to leave the above section, as it doesn't speak to
> enforcement, but rather is just a set of reporting instructions,
> with an assurance of confidentiality.  This seems to me not to be
> the objectionable part of this section.
> (IOW, I would omit this removal from the patch).

So I did think about that, but it struck me that with both paragraphs
removed, the current CoC is very similar to the status quo: namely
every subsystem handles their own issues and that's formalised by the
"Our Responsibilities" section.  That also makes me think that whether
we want a centralised channel of reporting or enforcement and what it
should be also ought to be part of the debate.  The TAB was created to
channel community technical input into the Linux Foundation.  That's
not to say it can't provide the reporting and arbitration structure,
but if we're going to do it right we should debate the expansion of its
duties (and powers).

I happen to think that the fact that the TAB cannot compel where it
cannot persuade is a huge strength of the system because it means
there's no power structure to subvert if someone were interested in
using it to try to impose their own viewpoint on the community.  But
that's just my opinion and I did write the TAB charter, so I'm probably
biased in this viewpoint.

James


> If the next part is indeed removed, then maybe the section
> needs to be renamed?
>  -- Tim
> 
> > -
> > -Maintainers who do not follow or enforce the Code of Conduct in
> > good faith
> > may
> > -face temporary or permanent repercussions as determined by other
> > members of the
> > -project’s leadership.
> > -
> >  Attribution
> >  ===========
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
