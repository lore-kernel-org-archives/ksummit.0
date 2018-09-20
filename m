Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15EC41321
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 13:55:37 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A9ED07E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 13:55:35 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 20 Sep 2018 16:55:46 +0300
Message-ID: <2153698.dD80FJtCWu@avalon>
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF7C1EBC69@USCULXMSG01.am.sony.com>
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180920072351.49c41618@coco.lan>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EBC69@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: mchehab+samsung@kernel.org, Tim.Bird@sony.com,
	James.Bottomley@hansenpartnership.com
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

Hi Tim,

On Thursday, 20 September 2018 16:49:40 EEST Tim.Bird@sony.com wrote:
> On Thu, 20 Sep 2018 09:33:05 +0300 Mauro Carvalho Chehab wrote:
> > Jani Nikula <jani.nikula@intel.com> escreveu:
> >> On Thu, 20 Sep 2018, Tim.Bird@sony.com wrote:
> >>> My view is that it's intended to be a social document, with guidelines
> >>> for actions within the community  (Actions by maintainers, actions
> >>> by contributors, actions by the TAB).  To me it's more like rules for
> >>> a party at my house.  If someone doesn't abide by the rules, I'll ask
> >>> them to leave the party.  And I'll ask others at the party to remind
> >>> people to abide by the rules.  But the person kicked out can hardly call
> >>> the cops on me for doing so.
> >> 
> >> Agreed.
> >> 
> >> I think there's much more value in adopting a widely used code of
> >> conduct than writing your own, or even trying to tweak it. If a project
> >> uses the Contributor Covenant, you pretty much know the rules without
> >> actually having to read another document and wonder what this all means.
> >> In this regard, it's really not unlike the GPL for copyleft licenses;
> >> one acronym tells you what you can and can't do.
> >> 
> >> With that perspective, I think the changes proposed in this thread do
> >> more harm than good. If people still insist the text should be improved,
> >> I think the proper flow is to file issues or pull requests to
> >> Contributor Covenant upstream [1], and later update to a new version of
> >> the document.
> > 
> > The main experience of the Contributor Covenant's author seems to be
> > on Github. There is a fundamental difference between a Github-based
> > project workflow and the Kernel: there, everything happens inside a GUI
> > interface. Usually, those projects don't have a large number of
> > maintainers, nor contributors. Message traffic is typically not high.
> > 
> > On such kind of interface, the maintainers can edit or delete all
> > 
> > kinds of messages, even posted by a third party. So, a text like:
> > 	"Maintainers have the right and responsibility to remove, edit,..."
> > 
> > would work. If the number of messages are small, it is also an easy
> > task.
> > 
> > It could also work on a smaller e-mail-based project where there is
> > just one or two moderated ML.
> > 
> > However, on a higly e-mail based project like the Kernel, where we receive
> > hundreds to thousands of messages per day, and we have a large
> > number of mailing lists, in order to comply with that CoC statement,
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
> 
> I think the risk of a lawsuit is blown out of proportion.
> But, I think your characterization of the CoC as not a great fit,
> due to the issues you describe above, is justified.
> 
> I believe that possibly there's a misperception about the
> "direction" of responsibility by Maintainers in the CoC.  For most
> projects, the Maintainers are the top of the hierarchy, with all
> the power.  And this section reads to most communities like
> a pledge that the Maintainers will defend the community
> and the rank-and-file members in it from abusive behavior.
> That is, they will take it upon themselves to do this, when
> they wouldn't face any repercussions for not making
> such a pledge.  It's an honorable and noble thing.
> 
> The Linux kernel is a bit more complex than that.  Maintainers at
> all levels are usually both contributors as well as leaders, and they're
> squished in the middle between other contributors and Linus.
> 
> No one wants maintainers or reviewers to feel overwhelmed
> by more responsibilities. I think it's a well-acknowledged fact that
> maintainers and reviewers are a precious and over-taxed resource.
> And we certainly don't want maintainers fearing repercussions
> for failing to enforce stuff.  I don't believe there is any record of
> an extreme action, like banning, for anyone failing to enforce
> a CoC.
> 
> > That's why I don't think that, the way it is, this CoC applies
> > to us. The way it is, it is just FUD. I can see a few
> > alternatives:
> > 
> > 1) Revert the CoC patch;
> > 2) Use another CoC that would work for e-mail-based workflows;
> > 3) Patch it - either changing the text of the CoC or adding
> >    a prologue adding ammendments to prevent the above risk
> >    and solving the e-mail addresses on review tags.
> > 
> > My view is that, currently, we have a major issue at the
> > contributing process. So, if nothing happens, I may wait until
> > the Maintainer's Summit before sending any pull requests
> > upstream.
> 
> May I suggest that a more productive way to proceed is to keep
> doing what you usually do.  The TAB is working out the details
> of enforcement policy, and a FAQ to go along with the CoC, that we
> plan to present at the Maintainers Summit.

May I suggest a (public) forum where everybody could post their concerns ? One 
big concern is that the new code of conduct was dumped on the community 
without much warning, dumping a FAQ the same way without consulting the user 
base could produce a similar feeling.

Discussing the FAQ in public would be best but I understand that would be 
difficult as it would very well quickly go in all kinds of random directions. 
A way to report our concerns and feel heard would in my opinion be a good 
middle ground.

> I think the roll-out of CoC enforcement will be a long, slow process, with
> plenty of time for us to hash out what we, as a community, believe are the
> best practices for dealing with violations.  I think the vast majority of
> the kernel community consists of respectful and well-meaning
> individuals, who will see no negative repercussions personally, from
> the adoption of this CoC.

-- 
Regards,

Laurent Pinchart
