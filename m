Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD5AA950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:17:33 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48417D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:17:33 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id u186so1104487ita.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 05:17:33 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20160715114214.GB27936@kroah.com>
References: <20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<20160715061424.GA16223@kroah.com>
	<alpine.LNX.2.00.1607150853390.24757@cbobk.fhfr.pm>
	<20160715114214.GB27936@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Jul 2016 14:17:31 +0200
Message-ID: <CAMuHMdUkEmKL58x7b4RLXoP1Pb2kgDL5g=ELJr8jLifhWB0rZw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Greg,

On Fri, Jul 15, 2016 at 1:42 PM, Greg KH <greg@kroah.com> wrote:
> But how do you deal with patches in the middle of the series that get
> changed, when you rebuild the git branch?  Or do you have a lot of
> different branches?  Any pointer to some workflow documentation that you
> might have for how this all works?

# Make a new branch pointing to previous LTSI release
git branch v4.1.27-ltsi v4.1.17-ltsi
# Rebase it on top of latest LTS
git rebase --onto v4.1.27 v4.1.17 v4.1.27-ltsi

If there were no conflicts, "git diff v4.1.17-ltsi..v4.1.27-ltsi" should be
identical (modulo context changes) to "git diff v4.1.17..v4.1.27".

If you have to make some changes in the middle of the series,
you could have used git rebase -i instead, and edit the commit list:
  - Drop/reorder/replace commits,
  - Mark commits for amendment ("edit"),
  - Add commits (but you better do that afterwards, using git cherry-pick -x).

Or do you mean recreating the quilt series after the rebase?
I'd suggest to use "git format-patch v4.1.27" for that.

This is all basic workflow for developers rebasing their local work before
(re)submission ;-) So if you have questions, feel free to ask!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
