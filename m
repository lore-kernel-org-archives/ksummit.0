Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19701B8C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:38:48 +0000 (UTC)
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 097921A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:38:46 +0000 (UTC)
Received: by mail-it0-f50.google.com with SMTP id e132so2056807ite.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 13:38:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPM=9tyU0Q+CZRpgnx34wRNLzMU1B5DmOSA+S-SRXghVbWKnSw@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAPM=9tyU0Q+CZRpgnx34wRNLzMU1B5DmOSA+S-SRXghVbWKnSw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 18 Apr 2017 22:38:45 +0200
Message-ID: <CAKMK7uE+E0RAB7z3zhtKn5tj45g_0PsLnNrGwJOxGJzUyqos8g@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Rom Lemarchand <romlem@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Ingo Molnar <mingo@kernel.org>,
	Doug Ledford <dledford@redhat.com>, Sean Paul <seanpaul@chromium.org>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 10:00 PM, Dave Airlie <airlied@gmail.com> wrote:
>>  11118  David Miller
>>   6004  Greg KH
>>   5337  Dave Airlie
>
> I am not a number, I AM A FREE MAN.
>
>>   5114  Ingo Molnar
>>   3918  Mauro Carvalho Chehab
>>   3381  Arnd Bergmann
>
> Though it should probably be Arnd sending this considering he's number 6.
>
> Sorry couldn't resist, on a more serious note, I'm unlikely to be
> travelling much this year due to have a baby arriving hopefully in September.
>
> I think for drm stuff Daniel Vetter is definitely the best person to have there,
> if he can make it.

It's on the same continent, I'm low on real excuses :-)

Depending what we talk about it might be useful to invite Sean Paul
and/or Jani Nikula as drm-misc co-maintainers (which really is the drm
core + subsystem wide refactorings + misc small drivers in one team
nowadays). Sean Paul is also doing ChromeOS from Google's pov, so
could bring that perspective.

For Android I think it'd be great to have Rom Lemarchand invited (he's
google's overall android kernel engineer). Especially on the drm side
we've made some great improvements with getting Android stuff running
on pure upstream over the last year (and not just as a pile of hacks
and shortcuts, but with all the features Android wants). From the
infrastructure pov it's essentially mission accomplished afaiui, and
the gaps are "just" with some of the drivers (but that's nothing new,
upstream open source gfx is still not supported by many vendors
unfortunately).

Sean, Jani&Rom on cc in case you need their mail address.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
