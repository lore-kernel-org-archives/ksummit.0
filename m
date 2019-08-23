Return-Path: <torvalds@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8087D12F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 03:04:12 +0000 (UTC)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30C9967F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 03:04:11 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id t14so7480283lji.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 20:04:11 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
	[209.85.208.182])
	by smtp.gmail.com with ESMTPSA id b9sm405771ljd.52.2019.08.22.20.04.07
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Aug 2019 20:04:08 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id t14so7480244lji.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Aug 2019 20:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
In-Reply-To: <CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Aug 2019 20:03:51 -0700
Message-ID: <CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
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

On Thu, Aug 22, 2019 at 7:58 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> So yes, I'd *much* rather see that "Link" line than try to make a
> "Change-ID" line be a thing.

Tangential note: since it looks like "Link:" lines are going to get
more common in general, maybe somebody with the right tck/tk-fu can
make a tool like 'gitk' be able to just do the hyperlinking thing (it
already does it for commit hashes in the commit message, but wouldn't
it be convenient to do that for web links too and open a browser
tab?).

And maybe we can even make git.kernel.org do it too (I think that uses cgit?).

I think that might make it just nicer in general to browse the logs
and actually follow the links without cut-and-paste games..

So using a generic "Link:" tag that can be used for multiple different
things sounds like a win in general over some specialized change-ID
tag. No?

              Linus
