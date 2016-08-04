Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C64478D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 18:16:49 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16F7211C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 18:16:48 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id d65so196394ith.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Aug 2016 11:16:48 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20160804121414.2466c31f@gandalf.local.home>
References: <20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<20160804121414.2466c31f@gandalf.local.home>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Aug 2016 20:16:45 +0200
Message-ID: <CAMuHMdWi0ij=umCqckG3gQP8+ySTT16v_fdpQ7d5XNNLDgj21g@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 4, 2016 at 6:14 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Thu, 4 Aug 2016 16:44:44 +0100
> Mark Brown <broonie@kernel.org> wrote:
>> If it's a choice between me taking a bugfix for mainline and me getting
>> someone to give me a commit ID for exactly which commit introduced some
>> change I'm probably not going to do the latter, especially when a lot of
>> these things are more of the "we now understand the hardware better"
>> variety.
>
> Who said anything about a choice between one or the other?
>
>> > I don't buy this as burden on a maintainer. This should be part of the
>> > maintenance procedure, regardless of sending to stable or not. Yes it
>> > does take extra time, but I don't think that time is wasted.
>>
>> I'm really happy we've got people engaging upstream.  I'm happy if
>> people fill in the extra information but really I'm way more interested
>> in a clear changelog than in getting a Fixes tag, or in checking that
>> the tags people are adding are accurate.
>
> Having a clear change log is orthogonal to having a Fixes tag. Actually,
> in my experience, change logs with Fixes tags tend to have clearer
> explanations in the change log than those without. Because to get that
> Fixes tag, one did some research to why the bug happened in the first
> place.

Would publishing statistics help, like the top 10 of Ackers and Reviewers?

E.g. Hall of Fame of bug fixers, based on the presence of Fixes tags, and
Hall of Shame, based on patches CCed to stable lacking Fixes tags?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
