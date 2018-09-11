Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F215FF40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:35:53 +0000 (UTC)
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A65257CD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:35:53 +0000 (UTC)
Received: by mail-io0-f180.google.com with SMTP id l14-v6so4242751iob.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 10:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180911104707.65613222@canb.auug.org.au>
In-Reply-To: <20180911104707.65613222@canb.auug.org.au>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 11 Sep 2018 07:35:40 -1000
Message-ID: <CA+55aFyxpYJ=ia_ip+9xYHa=foMLxtbKY4od8z7vQ79JAZABgQ@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 2:47 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> I am pretty sure that Linus does not follow linux-next (except to see
> what is still coming during the merge window),

Correct. I follow next only for tracking how much to expect, and then
verifying the occasional borderline pull (if if something looks fishy,
I might check :was it in linux-next?"). I don't really track it
otherwise.

>                   so maybe I should be
> yelling at people - but yelling is not one of my better skills :-)

I wish I wasn't always the bad guy ("when daddy gets home, you'll
really get it"), but one thing that might be worth doing is to just
track what causes failures, and inform me.

If a failure persists, I'll know at least to not pull it.

But that requires that the failures be pinpointed at lest to which
linux-next pull it was, so that you (or somebody else who runs tests)
can do more than "build/boot failed for linux-next", and actually
point to where the failure came in.

             Linus
