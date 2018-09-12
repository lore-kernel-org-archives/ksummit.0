Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78C1DD24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:59:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E92ED716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:59:52 +0000 (UTC)
Date: Wed, 12 Sep 2018 11:59:49 -0700
From: Darren Hart <dvhart@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20180912185949.GC25894@wrath>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 05:31:25PM +0200, Daniel Vetter wrote:
> I need to split this up, otherwise I'll get lost on the different
> sub-topics. I'll start with the easy ones.
> 
> On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >> Specific topics I'm interested in:
> >> - New experiments in group maintainership, and sharing lessons learned
> >> in general.
> >
> > I think that's good. But again, partly because these kinds of subjects
> > tend to devolve into too much of a generic overview, may I suggest
> > again trying to make things very concrete.
> >
> > For example, talk about the actual tools you use. Make it tangible. A
> > couple of years ago the ARM people talked about the way they split
> > their time to avoid stepping on each other (both in timezones, but
> > also in how they pass the baton around in general, in addition to
> > using branches).
> >
> > And yes, a lot of it probably ends up being "we didn't actually make
> > this official or write it up, but we worked enough together that we
> > ended up doing XYZ". That's fine. That's how real flows develop. With
> > discussion of what the problems were, and what this solved.
> >
> > In other words, make it down to earth. Not the "visionary keynote",
> > but the "this is the everyday flow".
> 
> Yup, fully agreed. We don't need another overview over group
> maintainer ship. Also I don't think an update from arm-soc/tip or drm
> is interesting either. I think only if there's a new group/subsystem
> trying this out, with all the nitty-gritty details of "this totally
> blew up in our faces" and "this worked shockingly well" and "here we
> need to improve still, we're not happy" is what I'm looking for.
> Without those details there's nothing really to learn, beyond just
> rehashing one of the old discussions. I guess I should have put more
> emphasis on _new_ experiments :-)
> 
> And if nothing changed, no new groups I think think we should table
> this right away.

For x86 platform drivers, Andy and I raised a few issues a while back
regarding some of the new tests added to -next which broke our process.
We discussed those in some detail back then, but I think the general
case that much of our process seems to assume a single maintainer. We
have put some fences in place to work around this, but they are rather
fragile. We don't have a combined testing branch anymore (but I think we
should). If we catch a bug in a commit far enough back in the history of
a "published" branch that we have both committed on top of it, it's a
major logistical pain to get back to good.

Regarding tooling, Andy and I have documented our process and shared our
tooling which has evolved to try and prevent human error. I believe DRM
has something even more evolved.

https://github.com/dvhart/pdx86-tools

For us, most of the patches we receive are one-offs to fix a specific
laptop. I expect these could work just fine from a GitHub workflow
and would help bridge the gap between all the people filing bugs in
bugzilla and the people submitting patches to LKML. With something like
GitHub, I think it's possible more of the bug reporters would consider
submitting fixes - even if Andy and I had to do a bit more work to get
them merged.

The question here is: how do we ensure patches submitted via
github/gitlab are also sent to LKML and to bridge the reviewers there
with the authors. Some kind of a bridge/gateway seems doable, but I'd
want this to be a broader effort than just our subsystem to make it
worthwhile - as well as socialize it sufficiently that the initial
glitches are anticipated and dealt with constructively.

-- 
Darren Hart
VMware Open Source Technology Center
