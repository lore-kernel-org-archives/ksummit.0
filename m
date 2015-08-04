Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1D5D8EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:27:34 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 178161D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:27:34 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 04 Aug 2015 17:28:18 +0300
Message-ID: <4555213.bCW3TZxWso@avalon>
In-Reply-To: <CAKMK7uHgy5OO5QJRCRhWT2DRs+aoB5S=1Y_4_n7ODak8Qp5sMQ@mail.gmail.com>
References: <20150801164142.653012af@lwn.net> <6756795.jjv2YY7pQg@avalon>
	<CAKMK7uHgy5OO5QJRCRhWT2DRs+aoB5S=1Y_4_n7ODak8Qp5sMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Daniel,

On Tuesday 04 August 2015 15:03:04 Daniel Vetter wrote:
> On Tue, Aug 4, 2015 at 2:50 PM, Laurent Pinchart wrote:
> > On Monday 03 August 2015 08:33:11 Jonathan Corbet wrote:
> >> On Mon, 03 Aug 2015 15:35:36 +0200 Rafael J. Wysocki wrote:
> >> > > While I don't discourage it, I am not a fan of automated
> >> > > documentation.
> >> > > As you and mtk would know, writing high quality, informative, systems
> >> > > software documentation is an involved process. And it should be, imo.
> >> > > Same goes for describing APIs and algorithms in code comments. Sure,
> >> > > automation has its pros, particularly keeping docs up to date; yet
> >> > > this does not outweigh a well crafted document, which involves actual
> >> > > though.
> >> > 
> >> > "thought" I guess?
> >> > 
> >> > I have to say I agree here.
> >> 
> >> Surely nobody thinks I was saying that the documentation-writing process
> >> can be automated! :)  But we go to some lengths now to document our APIs
> >> in the code; I don't think we would want to break that.
> >> 
> >> > Not to mention the fact that if you are browsing the kernel tree via a
> >> > web frontend or LXR, for example, plain text docs are really good to
> >> > have.
> >> 
> >> The nice thing about formats like Markdown or ReST is that they *are*
> >> plain text for all practical purposes.  Much better than DocBook in that
> >> regard.
> > 
> > My problem with inline documentation is that it makes easier for
> > developers to write crappy doc and believe they've done their duty. It's
> > not a technical issue, and I believe inline documentation has merits,
> > especially for API documentation, but I've seen too many kerneldoc
> > comments written as
> > 
> > /**
> > 
> >  * int do_foo_bar(int foo, bool bar) - Do foo bar
> >  * @foo: the foo for bar
> >  * @bar: the value of bar
> >  *
> >  * This function does foo bar.
> >  *
> >  * Return 0 on success and a negative value on error.
> >  */
> > 
> > That's just useless. Worse, it can give the impression to reviewers that
> > the function has been documented while it clearly hasn't. Maybe we just
> > need to tighten the review process and push harder for documentation, at
> > the risk of rejecting useful contributions. That's not a new problem
> > though.
> 
> Yeah api/struct docs alone aren't enough, that's why you need overview
> sections to tie it all together. And in those you really need links to
> all the various entry points to be able to digg out the details. Same
> goes for api docs themselves, I try to always list related functions
> in there so that you can easily jump to more specific functions or
> between init/free and similar pairs.
> 
> > DocBook and kerneldoc documentation serve two very different purpose in my
> > opinion. While kerneldoc mostly aims at documenting internal APIs, DocBook
> > is more of a story telling kind of documentation, suitable for
> > documenting subsystem architectures for instance. This could be moved to
> > inline comments, but at the end of the day I don't think it will make a
> > big difference. The reason why we miss quality "background" documentation
> > today has in my opinion more to do with the fact that we don't require
> > it.
> 
> Yeah pure function docs alone are useless, which is why I always ask
> for an intro/overview section.
> 
> > A good (or bad example, depending on how you see it) of this is the
> > DRM/KMS documentation available from Documentation/DocBook/drm.tmpl. I
> > spent a considerable amount of time writing it, it got reviewed, merged in
> > the kernel, and has now been rendered completely useless as the DRM/KMS
> > internal API has evolved and the documentation hasn't been updated
> > despite my repeated requests. That was extremely demotivating, and made
> > me give up documenting DRM/KMS at all.
> 
> drm having gone downhill is why I want to pull it out of the template
> into code. E.g. we have extensive docs for vtables, but since they're
> not next to the vtables in the code no one updates those. And
> duplicating a summary in kerneldoc and then the extended version in
> the docbook is even worse imo.

The problem is two-fold. Extensive vtables documentation is definitely good, 
but it mostly serves as API reference documentation. I believe we also need a 
guide type of documentation that goes through the bits and pieces drivers need 
in a logical order. That should of course be linked to the vtables reference 
documentation, but it should be a natural text flow type of documentation that 
driver developers can read from start to end, guiding them in the process of 
writing a DRM/KMS driver.

> Also editing docbook is really a major pain imo. The drm docbook file
> is currently at over 4k lines, and that's just not something you can
> manage any more sensibly.
> -Daniel

-- 
Regards,

Laurent Pinchart
