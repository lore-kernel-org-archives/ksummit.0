Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A20EB3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 18:59:42 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBCA21A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 18:59:38 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id 193so99367itm.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 11:59:38 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Apr 2017 11:59:37 -0700
Message-ID: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The kernel summit is apparently in October, and I promised last year
to at least get the ball rolling with the people *I* would like to
see.

I even subscribed to this list, though I promised myself I wouldn't
get involved in any other discussion.

I've actually churned the numbers several ways, none of which really
make me convinced that metric matters much. Looking at actual
developers (actually, I generally just did "committers" rather than
actual "authors"), you can certainly just do it by number of commits
(or sizes of commits, or numbers of files touched), all of which I
tried, and all of which actually got fairly similar "top 20" lists.

And none of those "top 20" lists looked precisely wrong, but they
didn't look precisely right either.

So being in the quiet "late rc" period, I decided to try to just do
statistics over who I pull from, and how much I pull instead. Which is
much closer to that "maintainer summit" I think I want. And the end
result actually looks not unreasonable when I do that. I ended up
approximating the sorting by "cumulative files changed" (ie just
counting number of files changed for each pull request I do: so the
same file will count N times if it shows up in N pull requests).

Like all the other metrics I tried, it does end up skewing one way or
the other: people who touch a lot of files in trivial ways get counted
more, but looking at the list I don't see anything really odd
anywhere. In particular, with that metric I get the obvious two top
maintainers being David Miller and Greg KH - which would be pretty
much a requirement for any sane maintainership counting algorithm. The
tip and arm maintainers also show up, although they obviously get
diluted by spreading out their work.

You can see the "top 10" list by just looking at the Cc of this email.
That one looks sane too, and contains the main architectures (x86,
arm, powerpc) and the biggest driver subsystems (drm, media, sound and
rdma).  And Andrew Morton.

None of the filesystem people show up in the top 10, although Al does
show up at spot 11, and individual filesystems show up lower down the
list (mainly just xfs and ext4).

What I _would_ like to see is those top maintainers suggest
"submaintainer" names. Particularly Davem, since he doesn't tend to
want to come to the kernel summit, and being at the top of the list
that's a kind of big gaping hole. I guess we haven't had all that many
_problems_ within networking, but if we talk maintainership issues,
it's certainly a bit odd if it's entirely lacking. We have both core
networking and network drivers that both fall under "davem" as far as
my pull statistics go.

I'm appending the "top 50" list in its entirely for people to look at
- the numbers are the "cumulative files changed in pull requests
_directly_ to me over the last 12 months". I'm not saying these people
all make sense: I think we should also take other issues into account,
and in particular rather than just a fairly straightforward "size of
subsystem" it should be about maintenance burden size too.

So drm and rdma both show up fairly high on both of those lists, I
think, and thus should be part of any maintainership discussion - but
maybe some other subsystems just aren't enough of a maintenance
headache to worry about?

So the other way to split it up is by "maintenance area", ie we have

 - architectures

   Pretty much covered by x86, arm, powerpc, and those architectures
should talk about who within the group would attend.

 - drivers

   Obviously we have Greg overall, with drm and rdma because of issues.

   An example here is that Christoph doesn't show up because I don't
generally pull from him, but he's been all over and often crosses
multiple driver subsystems, and has been involved in rdma too, so I'd
add him just for that.

   Some driver subsystems may be huge (eg media and sound), but I
don't know if they have issues. Mauro/Takashi?

 - filesystems

   Al, XSF and ext4 stand out by size (XFS is mostly Dave Chinner due
to me going by past year, but is obviously Darrick Wong right now).

 - core stuff.

   We've got Andrew, and I'd add Tejun from the list, with others
possible? Maintenance issues here are actually sometimes contentious
even if the core kernel is fairly small.

 - security stuff

   Luto, Kees?

 - particular pain points. Any not mentioned?

 - other?

I'd like the maintainership summit list to be fairly small. Not even
50 people. Maybe 30. A group that can actually sit in a room for half
a day and talk to each other about the issues they have rather than
being talked to. And talk literally about *process* issues, not about
any particular technical issues within whatever subsystem. Bring up
peeves or wishes for actual process improvements?

Comments? People who should be involved? Or people who don't have any
particular issues and want to not be involved?

                   Linus

-----

 11118  David Miller
  6004  Greg KH
  5337  Dave Airlie
  5114  Ingo Molnar
  3918  Mauro Carvalho Chehab
  3381  Arnd Bergmann
  3096  Andrew Morton
  1803  Michael Ellerman
  1557  Takashi Iwai
  1414  Doug Ledford
  1341  Al Viro
  1304  Rafael Wysocki
  1233  Jens Axboe
  1221  Thomas Gleixner
  1045  Olof Johansson
   980  Linus Walleij
   924  James Bottomley
   792  Ralf Baechle
   788  Herbert Xu
   751  Stephen Boyd
   593  Martin Schwidefsky
   585  Jonathan Corbet
   529  Paolo Bonzini
   443  Ulf Hansson
   443  Bjorn Helgaas
   421  Chris Mason
   420  Mark Brown
   411  Dave Chinner
   410  James Morris
   399  Michal Marek
   383  Dmitry Torokhov
   361  Will Deacon
   353  Wolfram Sang
   320  Jiri Kosina
   310  Vineet Gupta
   299  Russell King
   298  Brian Norris
   285  Lee Jones
   280  Guenter Roeck
   279  Vinod Koul
   275  Rob Herring
   271  Radim Kr=C4=8Dm=C3=A1=C5=99
   266  James Hogan
   251  Alexandre Belloni
   239  Sebastian Reichel
   221  Ted Ts'o
   220  Tejun Heo
   215  Dan Williams
   210  Shuah Khan
   208  Catalin Marinas
