Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBBCADD0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 17:02:44 +0000 (UTC)
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FD247F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 17:02:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so19399205plo.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Jul 2019 10:02:36 -0700 (PDT)
Date: Mon, 22 Jul 2019 10:02:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <201907221001.965A5D36A@keescook>
References: <alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de> <20190717092313.GA3111@kadam>
	<20190717092820.GA18953@kroah.com>
	<CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdbVHHOm0KoK3cjxs-4DBhZ8nB8cNTE-yt17zTRpTfAgpw@mail.gmail.com>
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

On Wed, Jul 17, 2019 at 06:09:40PM +0200, Linus Walleij wrote:
> On Wed, Jul 17, 2019 at 11:28 AM Greg KH <greg@kroah.com> wrote:
> > On Wed, Jul 17, 2019 at 12:23:13PM +0300, Dan Carpenter wrote:
> 
> > > We could add an option to `git am` to save the Message-ID automatically.
> >
> > Kees already posted a simple git hook to add it to the message when
> > using `git am`.  I've been using it for a week or so already, works
> > wonderfully.
> 
> I also picked Kees script and it works like a charm as long as
> you pick patches from a list that is stashed in lore.
> 
> Kees, you script is highly valuable, can we put it inside
> Documentation/* somewhere?

Yeah, absolutely! Do we already have somewhere to put these kinds of
maintainer scripts? (Has Dan Williams already thought about this for
the maintainer's handbook?)

-- 
Kees Cook
