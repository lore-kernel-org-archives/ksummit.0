Return-Path: <jpoimboe@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49860414
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 16:51:38 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E31C9470
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 16:51:37 +0000 (UTC)
Date: Fri, 6 Oct 2017 11:51:36 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20171006165136.65qevrn563q3ntw4@treble>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<20171006162621.aeauqeih7uner5wp@treble>
	<20171006103259.78ab2508@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20171006103259.78ab2508@lwn.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 06, 2017 at 10:32:59AM -0600, Jonathan Corbet wrote:
> On Fri, 6 Oct 2017 11:26:21 -0500
> Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> 
> > I think it would be a good idea to have a Maintainer's Guide which tries
> > to document a lot of this knowledge.  It would help new maintainers
> > learn the ropes, and would also help drive consensus for maintainer's
> > best practices.  It could document the typical processes of a
> > maintainer, and policy guidelines like some of the above topics.
> 
> Strangely enough, this is a conversation that has been popping up in other
> contexts too.  We may see an initial attempt before too long.

Ah, nice.

> The tricky part, of course, is finding a way to document the consensus on
> best practices without trying to "drive" it too hard.

We somehow manage to get consensus on millions of lines of code, you'd
think we could figure out how to agree on a small process document ;-)

But seriously, I think even parts which are disagreed upon, or which are
up to the maintainer's judgement, can be documented as such.

I wonder if a maintainers mailing list would help for such discussions,
if we don't already have one.

> My own thought is that a good starting place might be a "how to avoid
> getting your pull request flamed" document, since there is some semblance
> of a consensus there and it's a place where people often make mistakes.

Agreed!

-- 
Josh
