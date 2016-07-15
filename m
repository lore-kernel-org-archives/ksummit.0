Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B74E950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:05:34 +0000 (UTC)
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9ABD51C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:05:33 +0000 (UTC)
Received: by mail-io0-f193.google.com with SMTP id q83so6078106iod.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 04:05:33 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1468564337.2420.37.camel@HansenPartnership.com>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
	<578850EB.3090109@roeck-us.net> <20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468564337.2420.37.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 Jul 2016 13:05:31 +0200
Message-ID: <CAMuHMdVpH7NVkzr2aquoruXvbVR6y4kbb8Yn9SbOMYVahqXObA@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 15, 2016 at 8:32 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
>> I do find quilt useful when backporting a series of patches so that I
>> can resolve the conflicts on each patch individually and move
>> backwards and forwards through the list of patches.  I don't think
>> git has an easy way to store a branch of patches-that-I-need-to-apply
>> and to then give me one at a time, removing them from the branch.  I
>> could use 'stgit' for that if necessary, though it is very tempting
>> to write something that is better integrated with git.
>
> Git cherry and git cherry-pick can do this.  Git cherry-pick can take a
> range of patches to apply, so you can select a bunch of patches to
> backport or otherwise move all at once.  Git cherry can tell you (to
> within an approximation, since it uses matching) what patches are
> common between two branches even if they have differing commit ids.

... which is basically the same as creating a new branch matching your old
private tree, and rebasing that --onto the new upstream.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
