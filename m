Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 826C0DC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 22:27:14 +0000 (UTC)
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3E6397A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 22:27:14 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id e12-v6so2720420iok.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 15:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
	<20180907202328.GE25756@kroah.com> <20180907211341.GJ16300@sasha-vm>
In-Reply-To: <20180907211341.GJ16300@sasha-vm>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 15:27:01 -0700
Message-ID: <CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 2:13 PM Sasha Levin via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
>
> 1. Grab a batch of ~2-3 week old commits from Linus's tree.
> 2. Review, basic tests and send stable-rc notification.

Side note: maybe the stable grabbing and testing could be automated?

IOW, right now the stable people intentionally (generally) wait a week
before they even start. Maybe there could be an automated queue for
"this has been marked for stable" (and the whole "fixes:" magic that
you guys already trigger on) that gets applied to the previous stable
tree, and starts testing immediately.

Because one of the patterns we *do* obviously see is that something
was fine in mainline, but then broke in stable because of an unforseen
lack of depdenencies. Sure, it's probably pretty rare (and *many*
dependencies willl show up as an actual conflict), but I think the
times it does happen it's particularly painful because it can be so
non-obvious.

So maybe an automated "linux-next" that starts happening *before* the
rc stage would catch some things?

Done right, maybe it can be helpful to the stable flow in other ways
too (ie trigger "oops, this doesn't even apply" flow even before you
guys start actively looking at patches)?

Of course, it's easy to say "maybe we could add automation". Possibly
it would be really difficult to actually do that due to  conflicts etc
being *so* common that it just ends up being an unhelpful mess.

             Linus
