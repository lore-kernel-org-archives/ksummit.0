Return-Path: <joelaf@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C994E70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:15:51 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09BCB7FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:15:49 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id r21so9172476qke.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 12:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
	<CAJWu+oo++AVx-xsQkVCscWLVQyExA7QUPX8AxyQ=RWFw3FrmiQ@mail.gmail.com>
	<CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
	<CAJWu+or4Lur_q65yTtPQmh8wX2A7EaXaOWXmCnOq3ThRpnN=Tg@mail.gmail.com>
In-Reply-To: <CAJWu+or4Lur_q65yTtPQmh8wX2A7EaXaOWXmCnOq3ThRpnN=Tg@mail.gmail.com>
From: Joel Fernandes <joelaf@google.com>
Date: Fri, 23 Aug 2019 15:15:36 -0400
Message-ID: <CAJWu+ooBWhwFTOaw38j1SNnY5v9nLtOZRFgfRbgDOP2Q0ocwcQ@mail.gmail.com>
To: Doug Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"
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

On Fri, Aug 23, 2019 at 3:08 PM Joel Fernandes <joelaf@google.com> wrote:
>
> On Fri, Aug 23, 2019 at 2:00 PM Doug Anderson <dianders@chromium.org> wrote:
> [snip]
> > > On Fri, Aug 23, 2019 at 12:45 PM Doug Anderson <dianders@chromium.org> wrote:
> > > [snip]
> > > > Sure, if a given patch in the series is totally wrong and I re-write
> > > > it (but still want the re-write to be considered a new version of the
> > > > previous patch) then I have to manually copy the Change-Id for a
> > > > gerrit upload.  ...but I'd also be OK if people just get a new
> > > > Change-Id in this case.
> > >
> > > Sometimes it is not "totally wrong" but just "done in a different
> > > away" and is a new series. This happens a lot since upstream
> > > development can be evolutionary. So your v1 may look nothing like v2
> > > and is a whole new series. Yet the history linking the 2 series is
> > > important. And no amount of automated commit ID generation can link
> > > them. This is the scenario I was talking about. I know the git hook
> > > works, but sometimes the Change-Id has to be manually copied. That's
> > > not automatable. May be we are slightly on different tracks, but this
> > > is the scenario that would be useful to trace IMO.
> >
> > Agreed that it would be useful and (personally) I'd do it.  Maybe
> > others who are used to the gerrit workflow would also do it.  ...but
> > what I like is that the fallback for those that don't try to hard
> > isn't that terrible.  Yes they'd end up with a new Change-Id in some
> > cases, but presumably it still wouldn't be that hard for tools to help
> > you.  Namely, if you have a series:
> >
> > Patch v1 1/3 - Add a frob - Change-Id A
> > Patch v1 2/3 - Add a larb - Change-Id B
> > Patch v1 3/3 - Use the frob to tweak the larb - Change-Id C
> >
> > ...and you decide that you should be tweaking a sneech instead of a
> > larb, you might end up with this if someone isn't careful to copy
> > Change-Ids and their workflow is to throw away the old patch #2 and #3
> > instead of amending.
> >
> > Patch v2 1/3 - Add a frob - Change-Id A
> > Patch v2 2/3 - Add a sneech - Change-Id D
> > Patch v2 3/3 - Use the frob to tweak the sneech - Change-Id E
> >
> > So you can't find v1 of patch #2 directly from v2 of patch #2.
> > ...but, a good tool could still help you here.  It would see that at
> > least one patch in this series had the same Change-Id and it should
> > help you find the whole v1 series.
> >
> > If all 3 patches were all totally new and lost Change IDs then I guess
> > you're SOL, but maybe in that case it really should be considered a
> > new series anyway?
>
> Maybe it should be. It is hard to generalize it to work all the time.
> But I agree with you the above flow is better than nothing.
>
> It does seem people need more convincing here though, that inserting a
> unique ID into a commit message is acceptable.

Just to clarify, here I meant "inserting of something other than a
message ID" into the commit message.

>
> Another thing that could be done is, have the git hook insert the

And, here I meant have git-send-email or the patch sending program
insert the unique ID into the discardable part.

In my flow, I have scripts that remove metadata from my commit message
and insert them into the discardable part of the patch already which I
use for "additional notes". I am not sure what it would take to have
people use such scripts...

> whatever-ID into the discardable part of the patch. The archive will
> then have it even if the commit doesn't. Then something email2git or
> patchwork can connect different patches in the archive with a
> particular commit. I think Thomas Gleixner or someone else also
> proposed something similar in this thread.  What's wrong with that
> idea?

 thanks,
- Joel
