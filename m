Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 671C26D28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:27:33 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0168D7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:27:31 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Tim.Bird@sony.com
Date: Mon, 08 Oct 2018 17:27:50 +0300
Message-ID: <2170645.tuLgNU61gi@avalon>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181008022931.GB30346@localhost>
	<ECADFF3FD767C149AD96A924E7EA6EAF80517449@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James.Bottomley@hansenpartnership.com,
	ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
	of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Tim,

On Monday, 8 October 2018 17:12:05 EEST Tim.Bird@sony.com wrote:
> > -----Original Message-----
> > From: Josh Triplett
> > On Sun, Oct 07, 2018 at 08:18:26PM +0300, Laurent Pinchart wrote:
> >> On Sunday, 7 October 2018 14:35:14 EEST Josh Triplett wrote:
> >>> On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> >>>> Providing an explicit list of discrimination factors may give the
> >>>> false impression that discrimination based on other unlisted factors
> >>>> would be allowed.
> >>>> 
> >>>> Avoid any ambiguity by removing the list, to ensure "a harassment-
> >>>> free experience for everyone", period.
> >>> 
> >>> I would suggest reading the commit message that added this in the
> >>> first place. "Explicit guidelines have demonstrated success in other
> >>> projects and other areas of the kernel." See also various comparisons
> >>> of codes of conduct, which make the same point. The point of this list
> >>> is precisely to serve as one such explicit guideline; removing it
> >>> would rather defeat the purpose.
> >>> 
> >>> In any case, this is not the appropriate place for such patches, any
> >>> more than it's the place for patches to the GPL.
> >> 
> >> So what's an appropriate place to discuss the changes that we would
> >> like, *together*, to make to the current document and propose upstream ?
> > 
> > I didn't say "not the appropriate place to discuss" (ksummit-discuss is
> > not ideal but we don't currently have somewhere better), I said "not the
> > appropriate place for such patches".
> > 
> > The Linux kernel is by no means the only project using the Contributor
> > Covenant. In general, we don't encourage people working on significant
> > changes to the Linux kernel to work in private for an extended period
> > and only pop up when "done"; rather, we encourage people to start
> > conversations early and include others in the design. Along the same
> > lines, I'd suggest that patches or ideas for patches belong upstream.
> > For instance, the idea of clarifying that email addresses already used
> > on a public mailing list don't count as "private information" seems like
> > a perfectly reasonable suggestion, and one that other projects would
> > benefit from as well.
> 
> So I raised this issue with upstream about 2 weeks ago, and here is my
> experience:
> 1) I suggested that the email clarification could be put into the covenant
> itself, or in a supporting FAQ.
> 2) The project maintainer (Coraline Ada Ehmke) was pleasant and supportive
> of changes to enhance the document, and said either approach would be fine.
> 3) I noticed that there was a FAQ in progress of being created.
> 4) After thinking about it, I decided that I didn't want to alter the
> language of the covenant, because I didn't want to dilute the expression of
> a need to get permission when revealing private information.
> 
> My own opinion is that putting clarifying language in a FAQ is sufficient.
> So I made the following recommendation for the (not yet included upstream)
> FAQ:
> 
> Q: Does the prohibition on publishing private information include email
> addresses sent to a public list? A: No. Information that has voluntarily
> been published to a public location does not fall under the category of
> private information. Such public information may be used within the context
> of the project according to project norms (such as in commit meta-data in
> code repositories), without that constituting a breach of the CoC.
> 
> You can see the history of discussion in these two issues, online:
> https://github.com/ContributorCovenant/contributor_covenant/issues/590
> https://github.com/ContributorCovenant/contributor_covenant/issues/575
> 
> I hesitated to post these, because a formatting error in one of the posts
> makes me look a bit dumb. :-)
> 
> I don't know what progress is being made adopting the FAQ, but Coraline
> seems very supportive, and I've told here that I will come back and help
> with it if it stalls.
> 
> Honestly, I believe Linux will adopt its own FAQ or some similar document,
> so with the Contributor Covenant adopting the clarification as a separate
> document, I don't know if Linux would inherit it (ie include the Covenant
> FAQ in our source tree).  However, I think that the existence of this email
> clarification in the upstream FAQ would still have a beneficial effect for
> all downstream users of the covenant, so I view this as a useful exercise.

The main argument I have heard against amending the code of conduct document 
itself is that a fork would make it more complicated for project members to 
understand the expectations, in a similar fashion than the fragmentation 
created by license forks. If we end up having our own FAQ, which would need to 
be considered in combination with the main document to understand its impact, 
doesn't that create the same problem ?

-- 
Regards,

Laurent Pinchart
