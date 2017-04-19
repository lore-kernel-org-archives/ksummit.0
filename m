Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E28FBC09
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 20:20:39 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6960E1F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 20:20:39 +0000 (UTC)
Message-ID: <1492633237.3217.50.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, ksummit
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 19 Apr 2017 13:20:37 -0700
In-Reply-To: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Doug Ledford <dledford@redhat.com>, Ingo Molnar <mingo@kernel.org>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2017-04-18 at 11:59 -0700, Linus Torvalds wrote:
> I'd like the maintainership summit list to be fairly small. Not even
> 50 people. Maybe 30. A group that can actually sit in a room for half
> a day and talk to each other about the issues they have rather than
> being talked to. And talk literally about *process* issues, not about
> any particular technical issues within whatever subsystem. Bring up
> peeves or wishes for actual process improvements?
> 
> Comments? People who should be involved? Or people who don't have any
> particular issues and want to not be involved?

I'd like closure on one process issue, if we could achieve it:

Maintainer script automation: Quite a few of us have maintainer scripts
that send automated email notifications of the status of patches in the
tree (mostly to stop people flooding the lists with questions about
what happened to their patches).  We did a script show and tell at the
last kernel summit, but perhaps we could get closure on a couple of
issues:

   1. Since most people agree that these form of notifications are useful,
      should we have a standard email for it (or at least a list of things
      which should be in that email, like commit-id, tree, maintainer,
      mailing list and the version of the kernel it is expected to be
      pushed for).
   2. Given that we all run ad-hoc infrastructure to produce these emails,
      could we get a set of blessed scripts up on kernel.org for all
      comers so we can use the central infrastructure rather than rolling
      our own.

The other things I think it might do us all good is to have a frank
session on "tasteful rebasing".  We've come around (finally) to the
conclusion that rebasing isn't always bad.  My own opinion is that
rebasing to fix issues in patches (particularly those marked for
stable) so they can backport cleanly and atomically.  There's also less
of a consensus that rebasing to clean up history is a reasonably good
thing (provided it's not done just before requesting a pull).  However,
we have a divergence of opinions not just on whether we should rebase,
but what constitutes a tasteful rebase.  Just telling people,
particularly would be new maintainers, that it's a judgement call
always is unhelpful, we could do with putting together some more
detailed guidance (assuming we can agree on it).

Finally, since Daniel Vetter brought it up, having CI tests is seen as
a requirement for most git automation nowadays.  I tend to see 0day
plus my user base as the CI infrastructure but we should discuss
whether this is adequate.  I think 0day and linux-next pick up most
merge and generic test issues, and no-one has all the hardware to run a
true driver CI, so perhaps this is the best we can do, but we should at
least discuss whether we want to try to do better.

James
