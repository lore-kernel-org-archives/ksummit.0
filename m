Return-Path: <SRS0=iitZ=XL=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E60FCC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 14:11:46 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A5A2E214D9
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 14:11:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A5A2E214D9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ubuntu.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 592B8177A;
	Mon, 16 Sep 2019 14:11:46 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B9D1176A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 14:11:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 503498A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 14:11:29 +0000 (UTC)
Received: from static-dcd-cqq-121001.business.bouyguestelecom.com
	([212.194.121.1] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1i9riw-0006YJ-00; Mon, 16 Sep 2019 14:11:26 +0000
Date: Mon, 16 Sep 2019 16:11:25 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Doug Anderson <dianders@chromium.org>, Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20190916141124.e7s3bjr4sp3bmtbp@wittgenstein>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Aug 26, 2019 at 04:11:12PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Aug 26, 2019 at 4:02 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > On Mon, Aug 26, 2019 at 02:35:33PM -0700, Doug Anderson wrote:
> > > * This requires extra tooling that I think nobody will adopt.  People
> > > today already (accidentally) adopt Change-Id in the non-discardable
> > > portion.  I think it would be easier to get everyone currently
> > > removing Change-Id to start including it again than it will be to get
> > > everyone to change their tools to move it to the discardable portion.
> >
> > The reason why people Change-Id's exist in commits today is because of
> > tooling which is distributed as part of Gerrit.  That's why people are
> > deeply suspicious of any solution that involves Change-Id in the
> > non-discarded portion --- because the majority of Gerrit servers up
> > until now are behind corporate firewalls and since Gerrit servers have
> > robots.txt files, most Change-Id tend to be useless.
> >
> > If we come up with new tooling which is more useful, people will use
> > it.  If it's not useful and doesn't makes life easier, people won't.
> 
> Unfortunately the tooling won't come up until Change-Id is there and
> Change-Id can't be there till the tooling is there.  ;-)
> 
> 
> > On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> > > 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> > > will modify the tools I use to post upstream (currently patman) to
> > > encode the Change-Id.  My naive proposal would be:
> > >
> > > Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> > >
> > > If I try this and it works for me then I will post out and suggest
> > > that any other like-minded people encode Change-Id into Message-Id in
> > > a similar way.
> >
> > ... and I would expect patches with this would get NACK'ed because
> > they would be just as useless as Change-Id's are perceived to be
> > today.  People who are gaming the rules will tend not to looked upon
> > favorably; the same will apply to their patches.
> 
> Sigh.  Email is so hard to communicate over.  I'm not intending to
> include the Message-Id in the commit.  I'm intending to use the
> Change-Id _in_ the Message-Id.  The Message-Id already has a bunch of
> random characters in it.  Why not make them useful for something?
> 
> 
> > BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
> > msg-id has to look like a e-mail address (left-hand-side@example.com).
> > So something like this is legal as a message id:
> >
> > I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com
> 
> I think this is the same comment that Thomas Gleixner had.  I will
> certainly make sure my Message-Ids are formed correctly.  Thank you
> both for pointing this out to me.  Presumably I would have noticed it
> when actually trying to implement this but now I definitely will.
> 
> 
> > ... and indeed, that's more useful, because it tells us how to
> > interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
> > Change-Id assigned by the linux-review.googlesource.com Gerrit server.
> >
> > In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
> > going to be presumed to be useless.  And in fact, a Google search for
> > this ID returns *nothing*.  Yet visiting the link
> > https://linux-review.googlesource.com/c/1158 actually returns
> > something useful.   That's why the latter is superior to the former.
> 
> Sure, except that in my case there is no gerrit server to provide a
> link to.  I use an upstream-first approach which means that all
> initial work is done with mailing lists.  There is no server to
> provide context to.  I think we are re-hashing old emails in this
> thread.
> 
> 
> > In summary,
> >
> > Not useful: (and will be probably nacked)
> >
> > Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
> > Message-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
> >
> > Useful:
> >
> > Link: https://linux-review.googlesource.com/c/1158
> > Link: https://lkml.kernel.org/r/20190826204407.17759-1-daniel.lezcano@linaro.org
> >
> > Not as useful: (people will prefer the Link example above)
> >
> > Message-Id: 20190826204407.17759-1-daniel.lezcano@linaro.org
> 
> Presumably all the above is because you thought I was including the
> Message-Id in the commit.  I'm not.  Locally I will have Change-Id in
> my commit.  The scripts I use to post to the mailing lists will strip
> the Change-Id out and use it to make the actual Message-Id.  I will

Hm, I've spoken in favour of the Link: approach for upstream purposes.
But I do see the point in making it possible for people to somehow have
a workflow involving change-ids that does not interfer with regular
upstream expectations, i.e. no Change-Ids in commit messages.

One thing that came up was to place stuff like Change-Id after the ---
which git format-patch would leave out. This still has the problem
though that a git merge will keep the stuff after the --- and so a git
tag followed by a git request-pull would have the stuff in there as well
afaict. So I wonder if you couldn't simply enable Gerrit to look for
stuff like Change-Ids in git notes. They wouldn't show up on merges and
pulls afaict...

Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
