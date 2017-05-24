Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22967910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 May 2017 04:55:42 +0000 (UTC)
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CBCF15C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 May 2017 04:55:41 +0000 (UTC)
Received: by mail-it0-f53.google.com with SMTP id r63so32491373itc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 May 2017 21:55:41 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170523.233420.139500787670013890.davem@davemloft.net>
References: <CALCETrVVQ4XtMY-fxr_Vmo1OCHWSZ8ry9dUBhJimH30J0L+MGg@mail.gmail.com>
	<CA+55aFxy9RjdRJOoCmw9F+s3iQ9BiHK34xd6iB5NqpSgWbL-1g@mail.gmail.com>
	<CA+55aFw=1uH1vNmG_NzH8mWCP-sfMAdUQtWnB3wDXCfBEyPgtA@mail.gmail.com>
	<20170523.233420.139500787670013890.davem@davemloft.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 23 May 2017 21:55:40 -0700
Message-ID: <CA+55aFzWAErZjWn_cVBCtyWPmB82NK_gdhnVhs_PN3JUvXjUVw@mail.gmail.com>
To: David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 23, 2017 at 8:34 PM, David Miller <davem@davemloft.net> wrote:
>
> I'm still looking into whether I can be in Prague in October.
>
> My schedule is really tight as we are having netconf/netdev
> in early November in Seoul, South Korea.

Ok. Which I assume means that all the other networking people will be
in the same situation.

But maybe there is somebody who is at least close to you from a
workflow and maintainership angle, and where Prague is more convenient
despite netconf/netdev?

Looking at your merges, you seem to merge mostly from Jef Kirsher,
Johannes Berg or Pablo Neira Ayuso.

Although that was from some very rough git scripting that that might
be debatable:

    git rev-list --merges --author=davem --since=12.months  HEAD |
        while read i; do git log -1 --pretty='%cn' $i^2; done |
        sort | uniq -c | sort -n

although looking at that, it really doesn't look like core networking.

Another way to show networking maintainership stats:

    git shortlog -csn --since=12.months net/

and yeah, you clearly do seem to work mostly with patches rather than
submaintainers., backing up that "davem's merge sources aren't very
interesting"

> Unfortunately, I cannot currently recommend anyone seriously as an
> alternate to represent networking.  I know that's not the answer you
> want to hear, but I'll keep thinking about this.
>
> The last time I left the networking tree in someone else's hands
> for even just a few days was about a decade ago and that person's
> focus is significantly different these days.

Heh. Maybe we should have a maintainership discussion about "What if
davem is hit by a bus?" ;)

                    Linus
