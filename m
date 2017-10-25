Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CF3BAE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:18:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0216.hostedemail.com
	[216.40.44.216])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C791C180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:18:12 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 5FFE2182D4569
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 04:29:30 +0000 (UTC)
Message-ID: <1508905764.10651.10.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Kees Cook <keescook@chromium.org>
Date: Tue, 24 Oct 2017 21:29:24 -0700
In-Reply-To: <alpine.DEB.2.20.1710250605170.2242@hadrien>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
	<CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
	<alpine.DEB.2.20.1710250605170.2242@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-10-25 at 06:21 +0200, Julia Lawall wrote:
> 
> On Tue, 24 Oct 2017, Kees Cook wrote:
> 
> > On Tue, Oct 24, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
> > > On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
> > > > On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley
> > > > <James.Bottomley@hansenpartnership.com> wrote:
> > > > > On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
> > > > > > Appendix: Other topics that were brought up
> > > > > > [...]
> > > > > > Developing across multiple areas of the kernel
> > > > > 
> > > > > I've got a couple of extra possibilities
> > > > > [...]
> > > > > 2) Trivial patches (again).
> > > > 
> > > > Given that the "trivial patches" topic's discussion ended up boiling
> > > > down to a discussion about developing across multiple areas of the
> > > > kernel, maybe we should make space for a "tree-wide changes"
> > > > discussion? Even after the earlier thread about it, I tripped all over
> > > > this in the last couple months while doing timer conversions, so I
> > > > would at least have some more strong opinions on the subject. ;)
> > > 
> > > It's a ripe area (like months old limburger cheese) for discussion.
> > > 
> > > There's currently no good way to do tree-wide changes.
> > 
> > Some things stand out for me:
> > 
> > 1) I would like a standard way to distinguish patch submissions
> > between "please ack this (it's going into my tree)" and "please apply
> > this to your tree." I have tried post-"---"-line notes, cover letter
> > notes, etc, and maintainers still miss it. It can sometimes be very
> > disruptive (to both me and the maintainer) to have a maintainer take a
> > patch out of the middle of a series that was intending to land via a
> > different tree. Would "[ACK-PLEASE][PATCH]" be sufficient? Or
> > "[MY-TREE]" or something?
> 
> Nothing is going into my tree, since I don't have one.

Me too.

> Most changes I do
> are independent, so I hope that the recipient of the patch will take it.

And generally I will only send such a patch series once.

> I only send such patches to the maintainers of the patch, with the cover
> letter CCd to some superset of all relevant mailing lists.  I don't really
> know what to do with dependent patches.  Sending all patches to the union
> of all maintainers can lead to a huge CC list.  In that case, I would have
> to hope that someone who step up to pick up the patch, perhaps the person
> who is maintaining the dependency part, or when someone asked for the
> change, the person whoc asked for it in the first place.

I generally send treewide patches by second-level directory,
third if it's drivers/net/

> > 2) When you have a 200+ patch series, it is outrageously difficult to
> > figure out where to send things.

More like impossible.

> > This would allow
> > for a sane set of "Cc"s not based on git log guessing, and provide an
> > obvious "escalation" path in the face of silence (or uncommitted
> > Acks).

More likely a treewide maintainer for the obvious/trivial but acceptable
would help more.

> I send things to maintainers and mailing lists only.  My hypothesis is
> that the things affected by treewide canges are typically not things that
> other developers feel a strong ownership of.

Unfortunately, that's also the class of patches that no one cares much
about.

> > 8) Whatever the results of this, I'd really like to get _something_
> > documented as an adjunct to the SubmittingPatches document. Maybe
> > named TreewideChanges or MultiSubsystemChanges or something. I'm happy
> > to DO this documentation, I just want to have consensus on the ways to
> > do things, and then I can point maintainers to the document to explain
> > why I did something the way I did.
> 
> Documentation would indeed be very helpful.
> 
> Another question is how a patch series should be cut up?  Some people have
> complained about it being cut up by file, if the changes are all going
> into the same tree.  And of course there are complaints if files from two
> trees are mixed into a single patch.  I normally cut them up by unique set
> of maintainers, but sometimes quite different files get put into a single
> patch, or files that are very similar get split between different patches
> just because there is one extra maintainer on one of them.  Would it be
> better to follow the T: entry in MAINTAINERS, if there is one?  That
> information doesn't seem to be complete.

It's not and it's also incomplete when overlap of ownership occurs.
