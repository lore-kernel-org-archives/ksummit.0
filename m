Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 465C7415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 Nov 2018 14:12:33 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A91F27C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 Nov 2018 14:12:32 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id q1so42006749qkf.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 Nov 2018 06:12:32 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225760492.2499188.14152986544451112930.stgit@dwillia2-desk3.amr.corp.intel.com>
	<alpine.DEB.2.21.1811142146230.9620@hadrien>
	<CAMuHMdVmvCOX6gF0BskQ1NBUpdMZHSBQXpxkx085B9ZKGm0wiA@mail.gmail.com>
	<alpine.DEB.2.21.1811150544090.2354@hadrien> <878t1tgpk8.fsf@intel.com>
	<f08820b05467cc95cc195a2639595c0274c95d69.camel@perches.com>
In-Reply-To: <f08820b05467cc95cc195a2639595c0274c95d69.camel@perches.com>
From: Rob Herring <robherring2@gmail.com>
Date: Sat, 17 Nov 2018 08:12:18 -0600
Message-ID: <CAL_Jsq+4FbB=wj3L67=KEPb_5e8GinMJaXoB2cW6c23yazeNiw@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	linux-nvdimm <linux-nvdimm@lists.01.org>, vishal.l.verma@intel.com,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	stfrench@microsoft.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [RFC PATCH 2/3] MAINTAINERS,
 Handbook: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Nov 16, 2018 at 11:57 AM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2018-11-16 at 14:44 +0200, Jani Nikula wrote:
> > I quickly cooked up this script to produce the top-5 commit prefixes for
> > the given files over the arbitrary last 200 commits. It'll give you a
> > pretty good idea if you're even close.
> >
> > ---
> > #!/bin/sh
> > # usage: subject-prefix FILE [...]
> > # show top 5 subject prefixes for FILEs
> >
> > git log --format=%s -n 200 -- "$@" |\
> >       grep -v "^Merge " |\

--no-merges in git log can replace this line.

> >       sed 's/\(.*\):.*/\1/' |\
> >       sort | uniq -c | sort -nr | sed 's/ *[0-9]\+ //' |\
> >       head -n 5
> > ---
> >
> > Someone who knows perl could turn that into a checkpatch check: See if
> > the patch subject prefix is one of the top-5 for all files changed by
> > the patch, and ask the user to double check if it isn't. Or some
> > heuristics thereof.
>
> This won't work when a patch contains multiple files
> from different paths, or even multiple files from a
> single driver.

Different paths is often, but not always a sign that patches may need
to be split up. Maybe that is something checkpatch should point out.

> Perhaps it's better to use a generic mechanism like
>
>         basename $(dirname $filename):
>
> with some exceptions and add an override patch subject
> grammar to appropriate various sections of MAINTAINERS.

Perhaps just use the script as a starting point to populate
MAINTAINERS as it may never be that accurate.

> I also think it's better to use a separate script like
> scripts/spdxcheck.py and tie any necessary checkpatch
> use to that script.

Yes, checkpatch is getting pretty unwieldy.

Rob
