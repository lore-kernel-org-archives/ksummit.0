Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD55F94F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 21:05:07 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9374143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 21:05:05 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id w78so11469982oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 14:05:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160906185143.GF2356@ZenIV.linux.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
From: Shuah Khan <shuahkhan@gmail.com>
Date: Tue, 6 Sep 2016 15:05:04 -0600
Message-ID: <CAKocOON-REZwmQZGsnmqKEo2WJshAn7AbeRC-bZx2CEumRL14w@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
	stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 6, 2016 at 12:51 PM, Al Viro <viro@zeniv.linux.org.uk> wrote:
>         Right now there is no mechanism for saying "if this tracepoints
> breaks, it's Not Our Problem(tm)".  All of them are parts of userland
> ABI, potentially casting in stone all kinds of kernel internals.  E.g.
> just today a patch series adding tracepoints to kobject primitives
> had been posted; if _that_ becomes a part of stable ABI, we get the
> lifetime rules for anything with an embedded kobject exposed to userland
> and potentially impossible to change - all it takes is a single piece of
> software making non-trivial use of those.

I honestly didn't think that my patch series will result in a special
KS topic :)
However, I think it is a good idea to discuss it as general topic for
what kind of
kernel information should/should not be made visible via tracepoints or other
debug mechanisms.

We do support a wide range of tracepoints and events in various sub-systems
skb.h, pagemap.h, and pagemap.h so on. Maybe it would be helpful to agree
on some sort of guidelines for exposure.

Guess I never considered tracepoints as userspace API, anymore than debug
messages. It is part of debug and only visible to root.

In my mind it is mainly a debug information that would only make sense to
kernel developers. That is why I didn't think about needing to keep the
tracepoints identical. That said, it is a good idea for us to discuss at the KS.

thanks,
-- Shuah

>
>         Exposing kernel internals to debugging scripts et.al. is fine,
> but only as long as we are promising to keep those scripts working.
> Otherwise we end up promising that arseloads of code we can't even see,
> sticking its fingers very deep into the kernel internals, will be kept
> functional through the kernel changes.  This is absolutely insane, of
> course, and I doubt that anybody would be willing to make such promises,
> no matter how much value would that add.
>
>         The tracepoints are undiffirentiated mass, with no way for userland
> to tell whether it's using something stable or an equivalent of someone's
> debugging printks with no promise of stability.  And folks, there *are*
> people out there with commit priveleges on assorted userland projects who'd
> made it perfectly clear that _any_ kernel interface they find is fair game -
> as in "if you didn't want it used, why did you put it in the kernel?".
> No matter how much I dislike that bunch for other things, I can't blame them
> for being less than upfront regarding that policy.  It had been expressed
> very clearly and we'd better take the warning seriously.
>
>         I think this is something that needs to be discussed at KS; IMO we
> need at least some way to express the degree of stability promises made
> wrt individual tracepoints and some mechanisms for preventing silent creep
> towards full stability; something along the lines of "unstable tracepoint $FOO
> used by $PROGRAM, kernel tainted", at least.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
