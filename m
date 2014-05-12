Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 57F51A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:19:05 +0000 (UTC)
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5AA82027B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:19:04 +0000 (UTC)
Received: by mail-vc0-f174.google.com with SMTP id lh14so4656918vcb.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:19:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5370DB7B.2040706@fb.com>
References: <5370DB7B.2040706@fb.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 12 May 2014 09:18:43 -0700
Message-ID: <CALCETrXzKwnYaA1+UBG_Lr_b8XkSbGpXz0QBCR3fLGdH66hSBw@mail.gmail.com>
To: Chris Mason <clm@fb.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 7:32 AM, Chris Mason <clm@fb.com> wrote:
> Hi everyone,
>
> We're in the middle of upgrading the tiers here from older kernels (2.6.38,
> 3.2) into 3.10 and higher.
>
> I've been doing this upgrade game for a number of years now, with different
> business cards taped to my forehead and with different target workloads.
>
> The result is always the same...if I'm really lucky the system isn't slower,
> but usually I'm left with a steaming pile of 10-30% regressions.
>
> The KS dates should put us right at the end of our regression hunt, I can
> talk through the main problems we hit, how (if) we fixed them and hopefully
> offer tests to keep them from coming back.
>
> We've split the tiers up between Josef Bacik, Jens Axboe, myself and a few
> others.  I'd nominate Josef and Jens to come share their findings as well.
>
> Another topic here is controlling preemption from userland without needing
> to go full real time.  CPU intensive in-memory databases are leaving a ton
> of performance on the floor in context switches.  I'm hoping to experiment
> with better preemption controls and the userland RCU project to improve
> things.

I wonder how much of this overhead is the actual interrupt + context
switch and how much is overhead due to caching effects.  If the
former, there may be value in having a simple benchmark for how long
preemption takes and running it periodically.

--Andy
