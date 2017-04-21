Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF30BA6E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 11:07:29 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CE1A8141
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 11:07:28 +0000 (UTC)
From: Michael Ellerman <mpe@ellerman.id.au>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
In-Reply-To: <1492633237.3217.50.camel@HansenPartnership.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
Date: Fri, 21 Apr 2017 21:07:24 +1000
Message-ID: <87vapyauj7.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
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

James Bottomley <James.Bottomley@HansenPartnership.com> writes:

> On Tue, 2017-04-18 at 11:59 -0700, Linus Torvalds wrote:
>> I'd like the maintainership summit list to be fairly small. Not even
>> 50 people. Maybe 30. A group that can actually sit in a room for half
>> a day and talk to each other about the issues they have rather than
>> being talked to. And talk literally about *process* issues, not about
>> any particular technical issues within whatever subsystem. Bring up
>> peeves or wishes for actual process improvements?
>> 
>> Comments? People who should be involved? Or people who don't have any
>> particular issues and want to not be involved?
>
> I'd like closure on one process issue, if we could achieve it:
>
> Maintainer script automation: Quite a few of us have maintainer scripts
> that send automated email notifications of the status of patches in the
> tree (mostly to stop people flooding the lists with questions about
> what happened to their patches).  We did a script show and tell at the
> last kernel summit, but perhaps we could get closure on a couple of
> issues:
>
>    1. Since most people agree that these form of notifications are useful,
>       should we have a standard email for it (or at least a list of things
>       which should be in that email, like commit-id, tree, maintainer,
>       mailing list and the version of the kernel it is expected to be
>       pushed for).

We could have suggestions, I'm not sure an actual standard is feasible
given the differences in the processes people use.

>    2. Given that we all run ad-hoc infrastructure to produce these emails,
>       could we get a set of blessed scripts up on kernel.org for all
>       comers so we can use the central infrastructure rather than rolling
>       our own.

This would be great.

But is there actually a set of scripts out there which are in
sufficiently good state that we could ask the kernel.org admins to run
them?

If the mail sending happens on kernel.org how do the scripts know which
mail to respond to for a given commit? It could be in the commit message
somehow, but that's ugly. My scripts use git-notes for that sort of
metadata, which works quite well, so maybe that's an option.

Or maybe you're thinking that they don't reply to the original patch,
they just mail the author?

There's also times when you push commits that have already been
responded to by someone else (ie. a submaintainer), so there'd need to
be some way to flag that. And then obviously the case where you fast
forward to Linus' branch, you don't want to send mails for all those
commits :)

Another thing that's nice is to only send one mail when you merge a big
series, which complicates things a bit more.

Anyway a slightly old version of my terrible scripts are here, if anyone
wants to have a look.

  https://github.com/mpe/patchwork-scripts

They rely on having the mbox of the original patch in .git/patchwork, and
they don't actually send the mails, just generate them, allowing some
manual tweaking before sending.

cheers
