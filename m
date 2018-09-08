Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8BEC4CB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 04:21:50 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F18888B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 04:21:49 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id k5-v6so16694885wre.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 21:21:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 7 Sep 2018 21:21:27 -0700
Message-ID: <CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 12:18 PM, Jiri Kosina <jikos@kernel.org> wrote:
> I believe we have reasonably well-established process for handling
> security issues that are a matter of a single, reasonably self-contained
> fixup.
>
> Past experiences with Meltdown, Spectre and L1TF have shown that we're not
> really ready to handle that in a reasonably sane way yet.
>

To a large extend, I think that the problems we had with Meltdown and
Spectre weren't the fault of our processes so much as the fact that we
weren't allowed to have a sane process.  As far as I know, the number
of upstream-focused non-Intel-employed Linux developers who were told
about Meltdown and Spectre in a timely manner can be counted on a very
small number of fingers on one hand.  Those people had no channel to
communicate with any of the distro people involved in a timely manner.
This situation was not good.

Perhaps the Linux community could have a small team that handles
coordination of severe incidents along with a documented process for
what happens when the process is invoked.  It would need to be
designed in such a way that vendors would be willing to use it when
needed and that it gave the Linux world enough flexibility to actually
handle the issue.  At the very least, the relevant maintainers and
perhaps some relevant upstream reviewers would get notified, and the
people working on the issue for distros could actually communicate
with the upstream folks.  The total set of people involved would be
small.  It could be useful to try to get the process to work similarly
to whatever Microsoft and Apple do.

(There was another CVE that got much less press that I was involved,
and it didn't get much attention in Linux land because Linux was only
minimally affected.  Despite being an Intel/AMD issue, all of the
coordination was done by Microsoft, and it was done remarkably well
once the process actually got started.)
