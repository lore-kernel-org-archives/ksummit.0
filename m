Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ACFFFB3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 17:58:38 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34E38256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 17:58:38 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id d68so17765373ita.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 10:58:38 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CA+55aFxy9RjdRJOoCmw9F+s3iQ9BiHK34xd6iB5NqpSgWbL-1g@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CALCETrVVQ4XtMY-fxr_Vmo1OCHWSZ8ry9dUBhJimH30J0L+MGg@mail.gmail.com>
	<CA+55aFxy9RjdRJOoCmw9F+s3iQ9BiHK34xd6iB5NqpSgWbL-1g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 23 May 2017 10:58:36 -0700
Message-ID: <CA+55aFw=1uH1vNmG_NzH8mWCP-sfMAdUQtWnB3wDXCfBEyPgtA@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Ok, I'm re-starting this thread because it's been about a month of
quiet and nothing has really changed. James asked me to do another
email (but during the merge window, so I was busy) and today Thorsten
Leemhuis emailed about regression tracking issues, which just reminded
me to get this going again.

Removed everybody from the cc list except for David, because I still
want him to give an alternate for the networking subsystem (unless,
wonder of wonders, you're planning to be in Prague in October,
David?).

But the basic list that _I_ would like to see hasn't changed. That
doesn't mean that this should be "The List", but I think it's just
time to pass it over the wall to Ted?James?whoever is working on the
non-maintainer parts of the Kernel Summit.

One open question mark that James mentioned is just he vendor people -
particularly if they end up being KS sponsors. I have actually
traditionally liked the talks from vendors when they talk about their
issues (as long as they were actual technical talks, not the marketing
stuff - that's been a disaster), but I know some people found them
annoying. But I think that is partly organizational and ends up
involving Angela etc. We've always had sponsor people at the KS, I
would not mind if they ended up having double roles as sponsor people
with actual maintainer issues that they'd like to bring up.

Anyway, the top-ten maintainers haven't changed, and this just
reflects the "Dave Airlie suggests Daniel Vetter as a replacement".
Davem, your name remains on that list because you didn't suggest
alternatives..

  David Miller                  networking and network drivers
  Greg KH                       stable and misc drivers
  Daniel Vetter                 drm (Dave Airlie)
  Ingo Molnar                   x86 and core
  Mauro Carvalho Chehab         media drivers
  Arnd Bergmann                 arm and misc arch support
  Andrew Morton                 misc core
  Michael Ellerman              powerpc
  Takashi Iwai                  sound (and SuSE)
  Doug Ledford                  rdma

and I think any of those except probably Greg can suggest alternatives.

On top of those, I had me, stable and linux-next:

  Linus Torvalds
  Ben Hutchings                 stable, suggested by Greg
  Stephen Rothwell              linux-next

and that's kind of the "core maintainer" list. The rest of the names
are more tentative, in the sense that they are suggestions for the
kinds of areas that aren't directly touched by the above. Like:

 - the TAB people and KS people themselves. You know who you are, and
you're probably already on this list.

   I think there's a fair amount of overlap with this group and the
developers, but it might be worth looking exactly for those kinds of
"overlap" people.

 - Infrastructure:

   Konstantin Ryabitsev         k.org
   Fengguang Wu                 kernel test robot
   Steven Rostedt               ktest
   Shuah Khan                   tools/testing
   Thorsten Leemhuis            regression tracking
   Jonathan Corbet              documentaion
   .. and syzcaller/KASAN people?

 - Security:

   Andy Lutomirski              security and core
   Kees Cook                    security
   James Morris                 security subsystem

 - Distro people:

   Laura Abbott                 Fedora
   Jiri Kosina (MM? JM?)        Suse
   Rom Lemarchand               Android

 - Filesystems?

   Al Viro                      vfs process
   Darrick Wong                 xfs
   Ted Ts'o                     ext4

 - Block layer:

   Christoph Hellwig             also rdma and taste
   James Bottomley
   Jens Axboe

and I suspect picking people from these "misc" groups is at least
partly about the *other* days and who is in Prague anyway..

And again, there's the whole vendor/sponsor thing, ie facebook,
google, hw vendors etc.

I tried to gather up names as they flew past when I thought they fit
the maintainership agenda, but I was also trying to keep this
particular list fairly minimal. I suspect we'll see

                  Linus
