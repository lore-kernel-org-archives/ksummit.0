Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA996AB7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 02:26:42 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1F0D1189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 02:26:41 +0000 (UTC)
Date: Thu, 3 Aug 2017 22:26:39 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20170804022639.p27oliuinqqatar2@thunk.org>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 03, 2017 at 06:16:44PM -0700, Andy Lutomirski wrote:
> Maybe we could pull something off where big new features hide behind a
> named feature gate for a while.  That feature gate can only be enabled
> under some circumstances that make it very hard to mistake it for true
> stability.  (For example, maybe you *can't* enable feature gates on a
> final kernel unless you manually patch something.)

I think the problem you've pointed out is a real and vexing one, and
it's good we talk about possible solution. 

The challenge with using a feature gate is that the examples you gave
weren't the simply, obvious cases of a new syscall, but flags to a
system call (O_TMPFILE) or a new socket type (e.g., for RDMA).  So
that implies that adding a feature gate is going to requre making code
changes to enforce the ability turn off the feature.  Even if it's
done using CONFIG_* #ifdefs and KConfig options, it's going to require
more effort than cc'ing the patch to linux-api@vger.kernel.org.

And if the problem is that aren't bothering to remember to cc
linux-api@, I'm not sure it's realistic to think they will implement a
feature gate.

Furthermore, problems with an API design or implementation tend to get
noticed either (a) when someone else does a code audit and tries to
define exactly what the semantics will be for the new flag or syscall
or socket type, or (b) when someone tries using it and discovers
problems (usually not in the common path, since presumably the
developer tested that bit of it, but in the error handling).  The
feature gate won't necessarily help with (a), except that it gives
people a bit more time to notice that the new feature went in, and it
probably actively makes (b) worse, since if it is under a feature
gate, fewer people are likely to experiment with the new feature.

One way that we could try to make things better is by having some kind
of semi-automated system which monitors changes in include/uapi/*.h in
linux-next.  Unfortunately there will be a lot of false negatives, so
it's going to require a human to figure out which of the changes
represent new/changed API's, and which are just cleanups /
rearragements.  (We could try to see if we could train a Machine
Learning model --- but even if we can make a some nueral nets play Go,
I'm personally dubious this is something that ML would be successful
at.  I might be pleasantly surprised, though, if someone wanted to
give it a try.  :-)

				- Ted
