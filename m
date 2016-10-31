Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B346416
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 04:47:15 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D01DB88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 04:47:13 +0000 (UTC)
Date: Mon, 31 Oct 2016 00:47:09 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Rob Herring <robherring2@gmail.com>
Message-ID: <20161031044708.wpfzazdj65ibtqgj@thunk.org>
References: <CAB=NE6XscoaYq7_0wbEtgdGZt-duhMb6a-o8O+09FrJRy9EkLQ@mail.gmail.com>
	<CAL_JsqJ95-7mE+qW8zzPeEPMsOCTXZc-8m8MG-NogM2=os3zBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJ95-7mE+qW8zzPeEPMsOCTXZc-8m8MG-NogM2=os3zBQ@mail.gmail.com>
Cc: Jiri Kosina <jkosina@suse.cz>, Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Schedule slot suggestion- Generic drivers -
 core topic
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Oct 30, 2016 at 09:13:34PM -0500, Rob Herring wrote:
> On Fri, Oct 28, 2016 at 4:16 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
> > I see some open slots for Monday, there is some overlap in interest
> > between the Audio workshop folks and the tech topic for Tuesday
> > "addressing complex dependencies". We seem to have come to some
> > arrangement to split topics up to avoid such overlap, but one subject
> > overlapping both, but that seems more appropriate for the core day is
> > "Generic drivers":
> >
> > Having some generic device driver load, prior to a specific driver,
> > and issues / maintenance issues that come with the hacks currently in
> > place to support this / re-invent the wheel to support this per
> > subsystem.
> 
> This is a looming, unsolved problem for DT as well. We can potentially
> bind different drivers to same device if the device has multiple
> compatible strings. There's not any control of which one binds first
> either other than link or initcall order.

So in general, sessions, either at the Kernel Summit, or the LPC,
which are of the form, "we should bell the cat", generally aren't
particularly productive.

>From what I can tell, people have hacks that mostly work, but they
take the form of hard-coded lists or quirk tables, and fact that they
are hacks are making people sad.  Is that a fair summary?

If people have ideas towards a better solution, or better yet, a
patch, and there is resistance to accepting the patch, or if there are
multiple competing solutions, then it's much more likely we would make
forward progress by scheduling a sessions.

Do we have something that makes it likely that we would make forwawrd
progress by scheduling such a session on Monday

> > It might be good then to move this to a Monday slot, provided most
> > interested folks can and will be there. Thoughts?
> 
> I'd like to be there and won't be there on Mon.
> 
> BTW, is there a schedule for Tues published?

There is are the Audio, RDMA, and Wireless workshops.  We also
currently have an "Addressing Complex Depndencies" session scheduled
for Tuesday at 9:30am.

Please see:

	https://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/schedule
and
	http://goo.gl/qtSi1v

Cheers,

				- Ted
				
