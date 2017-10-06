Return-Path: <jpoimboe@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72596266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 17:16:52 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 281901AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  6 Oct 2017 17:16:52 +0000 (UTC)
Date: Fri, 6 Oct 2017 12:16:50 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20171006171650.55voponunclufudz@treble>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<20171006162621.aeauqeih7uner5wp@treble>
	<20171006103259.78ab2508@lwn.net>
	<1507309004.3104.17.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1507309004.3104.17.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 06, 2017 at 09:56:44AM -0700, James Bottomley wrote:
> On Fri, 2017-10-06 at 10:32 -0600, Jonathan Corbet wrote:
> > On Fri, 6 Oct 2017 11:26:21 -0500
> > Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > 
> > > 
> > > I think it would be a good idea to have a Maintainer's Guide which
> > > tries to document a lot of this knowledge.  It would help new
> > > maintainers learn the ropes, and would also help drive consensus
> > > for maintainer's best practices.  It could document the typical
> > > processes of a maintainer, and policy guidelines like some of the
> > > above topics.
> > 
> > Strangely enough, this is a conversation that has been popping up in
> > other contexts too.  We may see an initial attempt before too long.
> > 
> > The tricky part, of course, is finding a way to document the
> > consensus on best practices without trying to "drive" it too hard.
> > 
> > My own thought is that a good starting place might be a "how to avoid
> > getting your pull request flamed" document, since there is some
> > semblance of a consensus there and it's a place where people often
> > make mistakes.
> 
> Actually, I'd argue this is the most arcane area.  Accepting a pull
> request represents the expression of a trust relationship and it's not
> entirely well documented how to form that.  The mechanics of what
> should be in it and how it should be split vary by puller.  For
> instance, Linus' requirements are reasonably well documented in git-
> request-pull, but other trees have varying requirements.  Why he might
> flame you varies from too many merge window patches in a non-merge
> window to to many merge points in the tree or "unclean" history.

Each thing you just said is a good example of something which should be
documented.  In fact I think each sentence could be expanded into a
paragraph or section in the document.

-- 
Josh
