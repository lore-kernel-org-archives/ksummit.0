Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 00AC99A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 19:23:26 +0000 (UTC)
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 639D3200D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 19:23:25 +0000 (UTC)
Received: by mail-vc0-f175.google.com with SMTP id lh4so9101444vcb.20
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 12:23:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5367D989.1000504@linaro.org>
References: <5367D989.1000504@linaro.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 5 May 2014 12:23:04 -0700
Message-ID: <CALCETrWDH1FkkZAtJ3d2NnPRccS2=yCFpMO-GsworhV+uhs6YA@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 5, 2014 at 11:33 AM, John Stultz <john.stultz@linaro.org> wrote:
> I'd like to discuss some thoughts on how to address the 2038 issues on
> 32bit architectures. This is important, as vendors are still producing
> lots of 32bit hardware, which may very well have 24+ year lifespans
> (think industrial control applications, security systems).  NetBSD and
> OpenBSD have recently broken their ABI, converted their time_t to long
> long, to properly address this. So I'd like to discuss thoughts on how
> Linux can do similar despite our no-breaking-userspace rules, after all,
> one way or another (almost) all of Linux's 32bit architectures are
> terminally broken past 2038.
>
> Thomas (who I don't think can attend due to other plans) and I have had
> some small talks about this and we have different initial preferences on
> how to go about solving things, so I'd like to present the pros and cons
> of the current options we're stewing on, open the discussion up to other
> ideas, and see if there's a consensus on which way to go.

I'm interested in this discussion.

It would be nice to try to do something about the seconds, nanoseconds
representation in clock_gettime at the same time.  One way or another,
a lot of programs will continue to expect to see seconds and
nanoseconds, but it's simpler and faster to be able to feed userspace
a nanosecond count.

Also, leap seconds :(

--Andy
