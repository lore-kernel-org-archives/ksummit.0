Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B480B85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:16:15 +0000 (UTC)
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D91F21F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 May 2014 04:16:13 +0000 (UTC)
Received: by mail-ig0-f169.google.com with SMTP id hl10so2213542igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 May 2014 21:16:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400952709.6956.50.camel@dabdike.int.hansenpartnership.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<CAHQdGtS-sWiNKmucHxi+mY6GTf+NfOFPGFBG0KUTk=rtSBjjNA@mail.gmail.com>
	<1400952709.6956.50.camel@dabdike.int.hansenpartnership.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Sat, 24 May 2014 22:15:52 -0600
Message-ID: <CAErSpo4XtYN2x6LWcpvdtgC-eXu0FSnZRp2tkwAGCD9eak5upw@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, May 24, 2014 at 11:31 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Sat, 2014-05-24 at 11:50 -0400, Trond Myklebust wrote:
>> On Sat, May 24, 2014 at 5:53 AM, James Bottomley
>> <James.Bottomley@hansenpartnership.com> wrote:
>> > A lot of the problems accepting patches into the kernel stem from trying
>> > to get them reviewed ... some patch series even go for months without
>> > being reviewed.  This is caused by a couple of problems.  The first one
>> > is a submission issue, where you get a long N patch series (usually N >
>> > 10) you review and provide feedback, then you get a long N+Y series back
>> > eventually with no indication what disposition was taken on any of the
>> > review points ... even the most hardy reviewers get a bit demotivated at
>> > this point. The second is an actual lack of reviewers in particular
>> > fields, meaning that a small number of people tend to be the ones
>> > reviewing patches in particular subsystems.

Reviewing is a big problem for me, as evidenced by my long backlog of
PCI patches.

When people are adding brand-new functionality, e.g., a new host
bridge driver, sometimes several people are interested in it, and
people in that group tend to review each other's stuff.  That's good,
of course.

But the bigger problem for me is reviewing changes to the core
architecture.  Usually there aren't very many people interested in
those, and at the same time, they have a much broader impact, so I
feel like I have to vet them much more carefully.

Technical debt also makes it harder to work in the core than in a
brand-new driver.  We often have changes that seemed to solve a
problem at the time, but later turned out to be band-aids that only
covered it up.  This sort of stuff accumulates and makes future work
harder.  There's a lot of history that has to be understood before
making changes, and usually you can't test to make sure a refactoring
doesn't reintroduce a problem.

I guess I'm just agreeing that a lack of reviewers is a problem.  I
don't know how to solve it.  I do think that if core code were cleaner
and more approachable, people would be more inclined to read it and
work on it.

>> I agree that ensuring quality of review is difficult. Part of the
>> problem there is that our toolchain has nothing to capture reviews,
>> and to preserve them for posterity other than the mailing lists. The
>> best you can do then is to use 'Link:' in order to tag the review
>> thread in the commit log.

I haven't found preservation of reviews to be a big problem for me.
Maybe this is because PCI reviews are usually two-party conversations
(just the author and me), and I just keep them forever in my gmail
archives.

> Heh, perhaps, at last, we might have found a use for git notes.
>
>>  It would be nice to have a better solution.
>> Patchworks is one option, but it doesn't really work well for capture
>> the full process if the submitter pushes out a new patchset in
>> response to a review (you end up starting afresh).

To the extent that archived reviews are useful, I think it's good that
they're in the mailing list archives on the web rather than buried in
a tool like git notes or patchwork.

> I've not really tried patchwork, so can't comment
>
>> Bugzillas are another option, but their main task isn't really to
>> preserve patch reviews, and furthermore, they are less well adapted to
>> our working habits (which has lead to pushback from a number of
>> maintainers).
>> Other options?
>
> Well, the other obvious one is gerrit, but I'm really not keen on it ...
> it provides a nice log of the reviews, but it's set up around the
> process of owning the git tree as well.
>
> However, I don't really think better tools would help us grow
> reviewers ... OpenStack has exactly the same review bottleneck problem
> we have and they already use a full Gerrit workflow.

I agree.  I use gerrit internally, and I don't care for it.  It's sort
of OK for minor checkpatch-type issues, but it tends to fragment
commentary into disconnected little pieces.  I feel like I'm always
clicking something and typing into tiny little text boxes.

Most of my reviewing effort goes into researching the code, reading
specs, searching the web for similar issues, formulating alternatives,
and writing responses.  Tools like patchwork and gerrit help with
organizational stuff (and I do use patchwork as a to-do list), but in
my experience they don't help at all with the activities where I spend
the bulk of my time.

Better tools are always nice, but I agree they won't address the "lack
of reviewers" problem.  I'm a little concerned that the real problem
is that the complexity of the system makes it unapproachable except to
the few who can afford to work in one area full-time (I'm talking
about the complexity of accumulated warts, not the unavoidable
complexity of the hardware itself).

Bjorn
