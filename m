Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E57CFCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:48:59 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 057BE67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:48:58 +0000 (UTC)
Date: Fri, 23 Aug 2019 17:48:55 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Sean Paul <seanpaul@chromium.org>
In-Reply-To: <CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
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

On Fri, 23 Aug 2019, Sean Paul wrote:
> On Fri, Aug 23, 2019 at 11:18 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > On Fri, Aug 23, 2019 at 09:15:30AM -0400, Sean Paul wrote:
> > > Only if you've uploaded the patch somewhere before sending it to the
> > > mailing list. I think this would satisfy the Gerrit crowd, since
> > > they're presumably uploading the patch to Gerrit, getting some review
> > > on it and then sending it upstream. They will have a link. If you're
> > > just interested in being archival tool friendly, you probably just
> > > want to add some uuid cookie to the patch and post it directly to the
> > > mailing list.
> >
> > And this is why I think something like one of the two:
> >
> > Link: https://linux-review.googlesource.com/c/1158
> > Link: https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384
> >
> > ... is a better choice.
> >
> 
> Agreed. If you have a url for the patch this makes sense.
> 
> I don't upload my patches to Gerrit, but I am interested in enabling
> patchwork (or equivalent tool) to do a better job of tracking revision
> changes.
> 
> Currently I just link to all past revisions in the latest one (see
> [1]) so folks can see the prior discussion. It'd be nice if there was
> an easier way of achieving this.

That's mostly a question of being careful about it. The initial submissions
cover letter starts the whole thing. For any following version, the cover
letter should have:

    This is version X of this series. The previous version can be found
    here:

	https://lkml.kernel.org/r/$MSGID_PREV_COVERLETTER

So when the final version gets applied, then each commit gets a link:

   Link: https://lkml.kernel.org/r/$MSGID_OF_PATCH_$N

Then it's just a matter of following the links and that can be automated.

For a single patch w/o cover letter this can be solved as well:

    Subject ....

    changelog

    SOB
    ---
    V3: Fixed stuff
    V2: https://lkml.kernel.org/r/$MSGID_OF_PATCH_V2

    diffstat
    ---
    diff

And looking at the above example, you can add even gerrit ids or whatever
information into the '---' discard section. It's going to be in the mail
archive and traceable by the commit Link.

Yes, it's work for the submitter, but it's always work if the submitter
wants to have a proper trace.

For the committer it's a matter of tooling to add the link with the message
id per patch. I'm doing that for years fully automated.

Thanks,

	tglx
