Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CF85C8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 00:54:50 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A011180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 00:54:49 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id j17so25848167iod.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 24 Oct 2017 17:54:49 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1508888508.1955.16.camel@perches.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<CAGXu5jJAUbhEZPFYSU1ExON49LqQMTgjmRSszp6eMuaDuSimsA@mail.gmail.com>
	<1508888508.1955.16.camel@perches.com>
From: Kees Cook <keescook@chromium.org>
Date: Tue, 24 Oct 2017 17:54:47 -0700
Message-ID: <CAGXu5jJYCRVr5DpRfVD0NNuJ0yzNTeKrDOo8u1tXeSw8GxjyBQ@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 24, 2017 at 4:41 PM, Joe Perches <joe@perches.com> wrote:
> On Tue, 2017-10-24 at 16:03 -0700, Kees Cook wrote:
>> On Fri, Oct 6, 2017 at 8:27 AM, James Bottomley
>> <James.Bottomley@hansenpartnership.com> wrote:
>> > On Thu, 2017-10-05 at 15:20 -0400, Theodore Ts'o wrote:
>> > > Appendix: Other topics that were brought up
>> > > [...]
>> > > Developing across multiple areas of the kernel
>> >
>> > I've got a couple of extra possibilities
>> > [...]
>> > 2) Trivial patches (again).
>>
>> Given that the "trivial patches" topic's discussion ended up boiling
>> down to a discussion about developing across multiple areas of the
>> kernel, maybe we should make space for a "tree-wide changes"
>> discussion? Even after the earlier thread about it, I tripped all over
>> this in the last couple months while doing timer conversions, so I
>> would at least have some more strong opinions on the subject. ;)
>
> It's a ripe area (like months old limburger cheese) for discussion.
>
> There's currently no good way to do tree-wide changes.

Some things stand out for me:

1) I would like a standard way to distinguish patch submissions
between "please ack this (it's going into my tree)" and "please apply
this to your tree." I have tried post-"---"-line notes, cover letter
notes, etc, and maintainers still miss it. It can sometimes be very
disruptive (to both me and the maintainer) to have a maintainer take a
patch out of the middle of a series that was intending to land via a
different tree. Would "[ACK-PLEASE][PATCH]" be sufficient? Or
"[MY-TREE]" or something?

2) When you have a 200+ patch series, it is outrageously difficult to
figure out where to send things. The MAINTAINERS file is at best an
approximation. I use a subset of the get_maintainer output plus my own
parsing of MAINTAINERS to try to organize patches. The results tend to
be somewhat okay, but there are still bouncing addresses, or MIA
maintainers. And then a patch isn't met with silence, it might get met
with an "Ack", but no attention from a committer. Having a
representation of the "tree" of maintainership would be much more
helpful. In other words, for every section with an "M:" line, also
something "U:" ("upstream"?) that indicates either another section or
a person that is the "upstream" for that maintainer. This would allow
for a sane set of "Cc"s not based on git log guessing, and provide an
obvious "escalation" path in the face of silence (or uncommitted
Acks).

3) Maintainers (sanely) balk at getting a massive dump of patches all
at once. It would be nice to document "batch limits" in the
MAINTAINERS file too. (For example, davem asked me after I sent him 60
patches in a single day if I could please limit the batch size to 12
between commits (i.e. only send the next batch after the prior batch
has been applied/processed). "H:"ow many at once, maybe?

4) I've taken from the example of akpm and -tip commits to include
"Cc:" lines before my S-o-b. This helps me record who should be
notified about patches when emailing them, but it is a bit bulky. What
are best practices here?

5) When sending a large series, it's infeasible to either repeat the
massive cover letter (or patch #1) description in every follow-up
patch, or to Cc everyone to the 0/N cover letter. Suggestions from
some people have been, "I don't care, CC me to everything" and "OMG,
don't CC me about all these other subsystem patches I don't care
about". My understanding was that everyone should be subscribed to
lkml, and it acts as the common thread archive, so when a maintainer
gets a few patches out of a /N series, they can trivially go look at
the 0/N patch for more context. However, I've regularly gotten "please
CC me on the 0/N patch" which puts me back to square one. What should
be the definitive way to deal with this? (And if there's no one way,
do we have to include CC preferences in MAINTAINERS on a per-person
basis?)

6) Dealing with silence. This is not unique to other patch
submissions, but silence can block an API conversion, or feature
coverage. I've ultimately just used my best judgement and carried
dependent patches in my own tree if they go ignored for too long. It
seems to be implicitly okay for some contributors to do this (and I
tenuously count myself in that list now), but I think it'd be nice to
have some kind of more well defined hierarchy of escalation (see #2)
that doesn't end in silence or a catch-22 (e.g. while I tend to
include akpm in my escalation list, akpm has (correctly) wanted VFS
changes to go through Al, but I only went to akpm because Al was busy,
so then I'm stuck without a way forward). Now, I realize this is
somewhat "by design" (see #3): if a maintainer is overloaded, we don't
want things going unreviewed into the kernel. I think we need a
bottleneck-detection process, so we can more quickly deal with
maintainer silence. That said, it's not like people are falling over
themselves to offer to share maintainership of areas that get
saturated, so ... I don't have even a straw-man suggestion for this
one...

7) As seen in this topic thread, some maintainers absolutely do not
want stuff landing from "outside" their tree. This doesn't seem
feasible at all, and we do regular treewide conversions at -rc1. It
would be nice to declare, explicitly, "you need to deal with external
changes to your tree when you merge -rc1". I thought this was already
an implicit understanding. (Though in fact, sfr suggested to me that
maintainer trees should be based at least on -rc2, and I've seen some
maintainers continue to merge -rc releases, which I thought created
ugly merge commit hell when sending a pull request to Linus later, but
now I've digressed.)

8) Whatever the results of this, I'd really like to get _something_
documented as an adjunct to the SubmittingPatches document. Maybe
named TreewideChanges or MultiSubsystemChanges or something. I'm happy
to DO this documentation, I just want to have consensus on the ways to
do things, and then I can point maintainers to the document to explain
why I did something the way I did.

That's all that jumps to mind at the moment...

-Kees

-- 
Kees Cook
Pixel Security
