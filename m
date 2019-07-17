Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25AAEB7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:09:55 +0000 (UTC)
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 91E328A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:09:54 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id x25so24224600ljh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
In-Reply-To: <20190717092820.GA18953@kroah.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:09:40 +0200
Message-ID: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
To: Greg KH <greg@kroah.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Peter Zijlstra <peterz@infradead.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:

> > We could add an option to `git am` to save the Message-ID automatically.
>
> Kees already posted a simple git hook to add it to the message when
> using `git am`.  I've been using it for a week or so already, works
> wonderfully.

I also picked Kees script and it works like a charm as long as
you pick patches from a list that is stashed in lore.

Kees, you script is highly valuable, can we put it inside
Documentation/* somewhere?

Yours,
Linus Walleij
