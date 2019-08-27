Return-Path: <dvyukov@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0E84C8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 00:30:11 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26CA0887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 00:30:09 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id b11so19725281qtp.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 17:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
In-Reply-To: <20190826230206.GC28066@mit.edu>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 26 Aug 2019 17:29:53 -0700
Message-ID: <CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 26, 2019 at 4:02 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Aug 26, 2019 at 02:35:33PM -0700, Doug Anderson wrote:
> > * This requires extra tooling that I think nobody will adopt.  People
> > today already (accidentally) adopt Change-Id in the non-discardable
> > portion.  I think it would be easier to get everyone currently
> > removing Change-Id to start including it again than it will be to get
> > everyone to change their tools to move it to the discardable portion.
>
> The reason why people Change-Id's exist in commits today is because of
> tooling which is distributed as part of Gerrit.  That's why people are
> deeply suspicious of any solution that involves Change-Id in the
> non-discarded portion --- because the majority of Gerrit servers up
> until now are behind corporate firewalls and since Gerrit servers have
> robots.txt files, most Change-Id tend to be useless.
>
> If we come up with new tooling which is more useful, people will use
> it.  If it's not useful and doesn't makes life easier, people won't.
>
>
>
> On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> > 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> > will modify the tools I use to post upstream (currently patman) to
> > encode the Change-Id.  My naive proposal would be:
> >
> > Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> >
> > If I try this and it works for me then I will post out and suggest
> > that any other like-minded people encode Change-Id into Message-Id in
> > a similar way.
>
> ... and I would expect patches with this would get NACK'ed because
> they would be just as useless as Change-Id's are perceived to be
> today.  People who are gaming the rules will tend not to looked upon
> favorably; the same will apply to their patches.
>
> BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
> msg-id has to look like a e-mail address (left-hand-side@example.com).
> So something like this is legal as a message id:
>
> I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com
>
> ... and indeed, that's more useful, because it tells us how to
> interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
> Change-Id assigned by the linux-review.googlesource.com Gerrit server.
>
> In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
> going to be presumed to be useless.  And in fact, a Google search for
> this ID returns *nothing*.  Yet visiting the link
> https://linux-review.googlesource.com/c/1158 actually returns
> something useful.   That's why the latter is superior to the former.
>
> In summary,
>
> Not useful: (and will be probably nacked)
>
> Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
> Message-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
>
> Useful:
>
> Link: https://linux-review.googlesource.com/c/1158
> Link: https://lkml.kernel.org/r/20190826204407.17759-1-daniel.lezcano@linaro.org
>
> Not as useful: (people will prefer the Link example above)
>
> Message-Id: 20190826204407.17759-1-daniel.lezcano@linaro.org


Hi,

A somewhat related point re UUID/Change-ID.
For syzbot (or any other bug tracking system) we want to associate
bugs with fixes. It turned out there is no good identity of a change
that we could use. Commit hash is an obvious first thing to consider,
but (1) it changes in linux-next, (2) sometimes the change is not
committed yet when we do the association, (3) it is different when
backported to LTS (so not possible to say if a fix is in that stable
tree or not).
We decided to use commit subject, which works to some degree, but also
has problems: (1) not necessary unique, (2) sometimes people change
subject during backporting (e.g. prepend some prefix), (3) has all the
same problems of email clients messing with text (e.g. I can't issue
#syz fix command for loo long commit subjects with my email client).
Some real UUID/Change-ID would solve all of these problems by giving
us capability to refer to changes rather than a commit in a particular
tree only.
