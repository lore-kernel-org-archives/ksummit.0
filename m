Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F5AFB01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:38:55 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E618180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:38:54 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 25 Oct 2017 12:39:18 +0300
Message-ID: <3417747.sfhcdWLTze@avalon>
In-Reply-To: <CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Kees,

On Wednesday, 25 October 2017 03:54:47 EEST Kees Cook wrote:
> On Tue, Oct 24, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
> > On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
> >> On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley wrote:
> >>> On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
> >>>> Appendix: Other topics that were brought up
> >>>> [...]
> >>>> Developing across multiple areas of the kernel
> >>> 
> >>> I've got a couple of extra possibilities
> >>> [...]
> >>> 2) Trivial patches (again).
> >> 
> >> Given that the "trivial patches" topic's discussion ended up boiling
> >> down to a discussion about developing across multiple areas of the
> >> kernel, maybe we should make space for a "tree-wide changes"
> >> discussion? Even after the earlier thread about it, I tripped all over
> >> this in the last couple months while doing timer conversions, so I
> >> would at least have some more strong opinions on the subject. ;)
> > 
> > It's a ripe area (like months old limburger cheese) for discussion.
> > 
> > There's currently no good way to do tree-wide changes.
> 
> Some things stand out for me:
> 
> 1) I would like a standard way to distinguish patch submissions
> between "please ack this (it's going into my tree)" and "please apply
> this to your tree." I have tried post-"---"-line notes, cover letter
> notes, etc, and maintainers still miss it. It can sometimes be very
> disruptive (to both me and the maintainer) to have a maintainer take a
> patch out of the middle of a series that was intending to land via a
> different tree. Would "[ACK-PLEASE][PATCH]" be sufficient? Or
> "[MY-TREE]" or something?

When I receive patches from such series, I often assume (and often incorrectly 
it seems after reading this thread) that the submitter will want to merge the 
whole series through a single tree. I try to always ask when sending my ack 
whether I should take the patch in my tree or if it will be merged through 
another tree. This wastes bandwidth, and would be pretty painful for you if 
you had to tell 200 times maintainers to take the patches. I think documenting 
the expected default upstream path for tree-wide changes would help here.

[snip]

-- 
Regards,

Laurent Pinchart
