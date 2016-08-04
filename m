Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 98C6E83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 13:48:56 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EED52135
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 13:48:55 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id j124so20008869ith.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Aug 2016 06:48:55 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1470232658.2482.42.camel@HansenPartnership.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 4 Aug 2016 15:48:54 +0200
Message-ID: <CAMuHMdVKAOtv579f363fyFL5bb-Skp5aJpXnSeqhdYeZt0jW1w@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 3, 2016 at 3:57 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2016-08-03 at 15:48 +0200, Jiri Kosina wrote:
>> On Wed, 3 Aug 2016, Greg KH wrote:
>> > Real examples from now on please, if there are problems in the
>> > stable workflow that we have today, everyone needs to show it with
>> > examples, I'm tired of seeing mental gymnastics around stable
>> > kernels just because it is "fun".
>>
>> Let me pick an example I personally had a lot of issues quite some
>> time ago:
>>
>>       https://lkml.org/lkml/2013/4/22/259
>>
>> This was a patch that got added to -stable to fix a problem that
>> didn't exist there. It caused system bustage almost immediately,
>> which indicates that very limited testing has been done prior to
>> releasing the patch.
>>
>> I believe that patches like this should really be caught during
>> -stable review; anyone familiar with the VFS code and actually
>> looking at the patch would notice immediately that it's fixing a bug
>> that doesn't exist in the code at all in the first place; that seems
>> to indicate that noone has actually explicitly reviewed it for
>> -stable, and therefore it's questionable whether it should have been
>> applied.
>
> This isn't a viable approach.  Firstly stable review is less thorough
> than upstream review because the review mostly goes "yes, I already
> reviewed this in upstream".  Secondly, if the upstream review didn't
> catch the problems why would we suddenly catch them in a stable review?

Stable review is useful exactly for this. There have been a few occurrences
where I did reply "no, you must not backport this patch to that stable version"
during stable reviews.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
