Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21131104A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:46:06 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF7D967F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:46:05 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c2so5865713plz.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:46:05 -0700 (PDT)
Date: Fri, 23 Aug 2019 09:46:02 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Joel Fernandes <joelaf@google.com>
Message-ID: <20190823164602.GB112509@dtor-ws>
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
> On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > Hi Thomas,
> >
> > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> > >
> > > Yes, it's work for the submitter, but it's always work if the submitter
> > > wants to have a proper trace.
> >
> > Here is where I disagree with you. As a patch submitter, I frankly could
> > not care less about proper trace, history, etc. I might be putting cover
> 
> But that is exactly what the problem statement is. Doug does care
> about tracing/history and wants that to be more robust etc.

Doug here is not a submitter ;)

> 
> > letter and outline the version changes, but I am doing that to reduce
> > friction and help committer to land my change. Thant's it. And
> > committers seem to have enough context from the provided version history
> > and memory of the previous iterations.
> >
> > Who this new ID benefits most is a system integrator that is tracking
> > all bits and pieces that are needed for their board to boot and work
> > properly. Hopefully the system integrator is a good community citizen
> > and not only wants to apply patches locally, but also make sure
> > stragglers end up in mainline after all. But they need additional
> > history to know whether the series was just forgotten, a new solution
> > was adopted instead, and so on.
> >
> > It also can help maintainers who need (maybe years later) to research
> > why particular change was made and whether there was additional
> > discussion around certain point of the change.
> >
> > The process you outlined above (collecting msg ids from previous
> > submissions, putting them into cover letter, etc) adds too much friction
> > at submission time so that submitters will not actually do any of that.
> > However having a git hook adding an ID to any new commit is much more
> > workable.
> 
> I don't think a git-hook will solve what Doug is asking. There is
> always some need for manual labor to add the metadata pointing to
> previous patch posting. How does anyone but the patch submitter know
> what the link/id/whatever of the previous patch posting or series is?
> Unless git has some telepathy abilities that I did not know about.

git does not know nor does it care. It simply records ID in the commit
message. That ID might be encoded as a link, or be just an ID to be
indexed later.

> 
> Since my day job involves gerrit usage, I have used gerrit and
> whenever I have a brand new patch for something; I have had to
> manually add the old Change-Id to the new change so that gerrit
> recognizes that it is linked to the old patch. That process is not
> done by a hook. Sure the initial generation is through a hook, but
> still.

Huh? In our set up the post-commit(?) hook checks the commit message and
adds Change-Id if it is not there yet. I have never needed to manually
add Change-Id...

Thanks.

-- 
Dmitry
