Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80705C9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 02:58:24 +0000 (UTC)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3CF067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 02:58:23 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x3so7453921lji.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 19:58:23 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
	[209.85.208.174])
	by smtp.gmail.com with ESMTPSA id f17sm360951lfa.67.2019.08.22.19.58.19
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 19:58:20 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id h15so7426060ljg.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 19:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
In-Reply-To: <20190823013619.GA8130@mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Aug 2019 19:58:03 -0700
Message-ID: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 22, 2019 at 6:36 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> Surely it's obvious that:
>
> Link: https://linux-review.googlesource.com/c/1158
>
> is more useful than:
>
> Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384

Yes, I think that just using the link when you have a public-facing
gerrit database is perfectly fine already today, and people could
start using it.

Might that link some day die? Sure. That's fundamental to any external
link. I don't think it's all that productive to then argue whose links
are more likely to die before some other link, unless it looks like
some project is actively trying to game the system and has a pattern
of having links that are active only for a short while after the
commit has gone public.

And I don't see much point to doing that.

So yes, I'd *much* rather see that "Link" line than try to make a
"Change-ID" line be a thing.

Of course, looking at that particular link, my initial reaction is
"people are bad spellers". The word 'amend' has a single 'm' ;)

And it _is_ important that the link in question is stable, of course.
Some systems have problems with that. Is that "c/1158" actually a
stable long-lived name that will stay around as the thing is modified?
I don't know how that system works.

           Linus
