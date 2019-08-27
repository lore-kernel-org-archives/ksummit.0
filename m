Return-Path: <joelaf@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B83F15E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 21:35:01 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 717F188E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 21:35:00 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id l9so599303qtu.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:35:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
In-Reply-To: <20190827195351.GA30710@kroah.com>
From: Joel Fernandes <joelaf@google.com>
Date: Tue, 27 Aug 2019 17:34:47 -0400
Message-ID: <CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, Aug 27, 2019 at 3:53 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> > On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > >        Link: https://lkml.kernel.org/$Message-ID
> > > >
> > > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > > tag and I know you got some of them already.
> > >
> > > I'm using:
> > >             Link: https://lore.kernel.org/r/$message-id
> > >
> > > should we standardize on the lkml one instead as it's shorter?  The lore
> > > one handles any message id that is on any mailing list it handles, is
> > > the lkml one the same?
> >
> > It's the exact same system and the /r/ is always required. I prefer
> > lore.kernel.org because it doesn't imply that the message is going to
> > be on the LKML (i.e. it can be on a list that isn't even hosted on
> > vger.kernel.org).
> >
> > So, my recommendation is Link: https://lore.kernel.org/r/$message-id
>
> Great, will stick with that one, thanks.

I am thinking of how to make this automagic and useful for me. My plan
is (and ymmv):

When I write a patch, have a git hook generate  "Message-Id" in my
patch changelog itself when it is written using Greg/Andrew's
make_message_id. This Message-Id is not the final message-id and is
just for reference purposes for later processing. Then when sending
it, after git format-patch I will do a few things:
  (a) Consult the archive to check the highest value of N for which
Message-Id-<N> does not exist
  (b) Add Message-Id: Message-Id-<N> to the patch header so git
send-email uses this as the Message-Id-<N>
  (c) Add this Message-Id-<N> as a Link: to the changelog;  Possibly
removing Message-Id<N-1> link.
  (d) Remove the original "Message-Id" without the -<N> from the
changelog since it has no purpose.
  (e) Send the patch

This will automatically link all the previous revisions of a patch
vN..vN-1...v1...0.  And also does not need any manual labor - which is
one of the main selling points AIUI of Google's git hooks for using
"Change-Id:".  Also works for Doug's use case and for people wanting
to have a Link: tag.

Such a git hook can then be provided to the kernel community to better
automate their flow of Link: generation. Although the steps (a) to (e)
may require additional tooling and changing of the local git tree at
the time a patch is submitted - which is Ok for my flow but not sure
if it would work for everyone.

Thoughts?

thanks,

- Joel
