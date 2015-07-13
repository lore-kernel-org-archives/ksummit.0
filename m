Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B11938B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:15:08 +0000 (UTC)
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9784DF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:15:04 +0000 (UTC)
Received: by iebmu5 with SMTP id mu5so155281ieb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:15:04 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20150711163838.GA4441@thunk.org>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<20150711160202.GC23515@io.lakedaemon.net>
	<20150711163838.GA4441@thunk.org>
Date: Mon, 13 Jul 2015 16:15:03 -0700
Message-ID: <CAGXu5jKTVka04AXdKJh48yHEy4nJm3MSK5wdaBiD9NpG+mBStg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 11, 2015 at 9:38 AM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Sat, Jul 11, 2015 at 04:02:02PM +0000, Jason Cooper wrote:
>>
>> Could we have some sort of post-vuln/CVE conversation dissecting the
>> vulnerability and how it got there?  Or, perhaps select a few for
>> process-dissection to be presented at the summit?
>
> Kees did a really good presentation entitled "security anti-patterns"
> a year or two ago at a kernel summit (the one at Edinburgh if I
> remember correctly?).  Kees, do you think it would be worth updating
> and re-doing that presentation?  And perhaps at a wider set of venues
> beyond just the kernel summit....

I can, yeah, but I sort of think stuff like that is really just
"reference material", and sometimes too specific. Reviewers (and
authors) need to think about high-level risks, not just mechanical
flaws. I would agree that beefing up reviewer roles could really help
this part of the problem, though.

-Kees

-- 
Kees Cook
Chrome OS Security
