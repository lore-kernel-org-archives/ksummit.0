Return-Path: <christian.brauner@ubuntu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AF4B2D0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:22:39 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C86918BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 12:22:38 +0000 (UTC)
Date: Wed, 28 Aug 2019 14:22:35 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190828122234.3femrepecvswo7ws@wittgenstein>
References: <alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190828090837.GA31704@kroah.com>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
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

On Wed, Aug 28, 2019 at 11:08:37AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 05:34:47PM -0400, Joel Fernandes wrote:
> > On Tue, Aug 27, 2019 at 3:53 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Tue, Aug 27, 2019 at 02:55:28PM -0400, Konstantin Ryabitsev wrote:
> > > > On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > > >        Link: https://lkml.kernel.org/$Message-ID
> > > > > >
> > > > > > then you have your UUID tag. The tip bot sends you a reply based on that
> > > > > > tag and I know you got some of them already.
> > > > >
> > > > > I'm using:
> > > > >             Link: https://lore.kernel.org/r/$message-id
> > > > >
> > > > > should we standardize on the lkml one instead as it's shorter?  The lore
> > > > > one handles any message id that is on any mailing list it handles, is
> > > > > the lkml one the same?
> > > >
> > > > It's the exact same system and the /r/ is always required. I prefer
> > > > lore.kernel.org because it doesn't imply that the message is going to
> > > > be on the LKML (i.e. it can be on a list that isn't even hosted on
> > > > vger.kernel.org).
> > > >
> > > > So, my recommendation is Link: https://lore.kernel.org/r/$message-id
> > >
> > > Great, will stick with that one, thanks.
> > 
> > I am thinking of how to make this automagic and useful for me. My plan
> > is (and ymmv):
> > 
> > When I write a patch, have a git hook generate  "Message-Id" in my
> > patch changelog itself when it is written using Greg/Andrew's
> > make_message_id. This Message-Id is not the final message-id and is
> > just for reference purposes for later processing. Then when sending
> > it, after git format-patch I will do a few things:
> >   (a) Consult the archive to check the highest value of N for which
> > Message-Id-<N> does not exist
> >   (b) Add Message-Id: Message-Id-<N> to the patch header so git
> > send-email uses this as the Message-Id-<N>
> >   (c) Add this Message-Id-<N> as a Link: to the changelog;  Possibly
> > removing Message-Id<N-1> link.
> >   (d) Remove the original "Message-Id" without the -<N> from the
> > changelog since it has no purpose.
> >   (e) Send the patch
> 
> Wow, what an overly complex thing for something that should be trivial
> to do...

Agreed.
We also have simpler ways of doing this which were brought up here multiple
times and which can likely be automated and or gain more adoption if properly documented.
Here's an example of how a bunch of people (including me) are already
doing this. All commits currently in my tree that had multiple versions
do as the last line have a lore-Link tag. (This is based on the script
by Kees that came out of a prior discussion.). Here is an example for
the waitid patch for 5.4-rc1
( https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/commit/?h=pidfd&id=590ef0128b4277eaa9cb74d7ba878d48b261950c ):

	waitid: Add support for waiting for the current process group
	It was recently discovered that the linux version of waitid is not a
	superset of the other wait functions because it does not include support
	
	[...]
	
	Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
	Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
	[...]
	Link: https://lore.kernel.org/r/20190814154400.6371-2-christian.brauner@ubuntu.com

If you click on that link it takes you to the patch sent to the mailing
list that was actually applied. The actual version might differ because
of merge-conflict resolution. In this example it was v3. The cover
letter for v3
( https://lore.kernel.org/lkml/20190814154400.6371-1-christian.brauner@ubuntu.com/ )
contains lore-Links to all previous versions of the patchset:

	Hey everyone,
	
	[...]
	
	Thanks!
	Christian
	
	/* v0 */
	Link: https://www.sourceware.org/ml/libc-alpha/2019-07/msg00587.html
	
	/* v1 */
	Link: https://lore.kernel.org/lkml/20190814113822.9505-1-christian.brauner@ubuntu.com/
	
	/* v2 */
	Link: https://lore.kernel.org/lkml/20190814130732.23572-1-christian.brauner@ubuntu.com

That's a pretty simple trail to all versions of the patchset. If no
cover letter is wanted or needed placing it after --- works just as
well.

> 
> How about this, when sending a v2, you have it be in response to the v1
> patch?  Same for v3, have it be in response for the v2 one.  And so on.

As long as you have the link to the prior version in the patchset you
can even skip this part.

Christian
