Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A2FBBC9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 07:59:56 +0000 (UTC)
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C0C8196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 07:59:56 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id v10so3769502vsv.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 23:59:56 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225760492.2499188.14152986544451112930.stgit@dwillia2-desk3.amr.corp.intel.com>
	<alpine.DEB.2.21.1811142146230.9620@hadrien>
In-Reply-To: <alpine.DEB.2.21.1811142146230.9620@hadrien>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Nov 2018 08:59:43 +0100
Message-ID: <CAMuHMdVmvCOX6gF0BskQ1NBUpdMZHSBQXpxkx085B9ZKGm0wiA@mail.gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	vishal.l.verma@intel.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	stfrench@microsoft.com, "Tobin C. Harding" <me@tobin.cc>
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

Hi Julia,

On Thu, Nov 15, 2018 at 6:48 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 14 Nov 2018, Dan Williams wrote:
> > As presented at the 2018 Linux Plumbers conference [1], the Subsystem
> > Profile is proposed as a way to reduce friction between committers and
> > maintainers and perhaps encourage conversations amongst maintainers
> > about best practice policies.
> >
> > The profile contains short answers to some of the common policy
> > questions a contributor might have, or that a maintainer might consider
> > formalizing. The current list of maintenance policies is:
> >
> > Overview: General introduction to maintaining the subsystem
> > Core: List of source files considered core
> > Leaf: List of source files that consume core functionality
> > Patches or Pull requests: Simple statement of expected submission format
> > Last -rc for new feature submissions: Expected lead time for submissions
> > Last -rc to merge features: Deadline for merge decisions
> > Non-author Ack / Review Tags Required: Patch review economics
> > Test Suite: Pass this suite before requesting inclusion
> > Resubmit Cadence: When to ping the maintainer
> > Trusted Reviewers: Help for triaging patches
> > Time Zone / Office Hours: When might a maintainer be available
> > Checkpatch / Style Cleanups: Policy on pure cleanup patches
> > Off-list review: Request for review gates
> > TODO: Potential development tasks up for grabs, or active focus areas
>
> How about patch subject lines?  What is the formula that should be used to
> transform the name(s) of the affected file(s) into an appropriate suject
> line?

Automating that may be difficult.
I always use "git log --oneline", and try to derive something sane
from its output.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
