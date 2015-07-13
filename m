Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 261A5982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 03:32:46 +0000 (UTC)
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61451A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 03:32:45 +0000 (UTC)
Received: by lahh5 with SMTP id h5so8957458lah.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 20:32:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150713105210.6e367f4b@noble>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 12 Jul 2015 20:32:23 -0700
Message-ID: <CALCETrW0=LGgEEJ++gcrtavCp7QdtT5vFaqVoqPhR77swtFggQ@mail.gmail.com>
To: NeilBrown <neilb@suse.com>
Content-Type: text/plain; charset=UTF-8
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 12, 2015 at 5:52 PM, NeilBrown <neilb@suse.com> wrote:
>
> I've been bitten by this a couple of times too.  At least two fairly
> serious md bugs *never* got into a release from Linus, but did get into
> -stable and at least one into a vendor kernel.
>

I've had -stable regression issues, too (both regressions I caused and
regressions I've been bitten by).

>
> I would rather that the default was that patches don't go into -stable
> until they have
>   - been in a full release from Linus and
>   - been in a Linus's tree for at least 2 weeks.
>     (or 1 week times the age of the target in releases.
>      So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
>      after 2 weeks etc .... maybe I'm going over-board here).
>
> Many fixes are important but simply aren't that urgent so the two or
> more weeks is no great cost.

I tend to agree.  It makes me quite nervous when brand-new
non-critical fixes get backported before they've had a nice soak in
some -rc releases.

--Andy
