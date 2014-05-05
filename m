Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A8DD999F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 21:59:21 +0000 (UTC)
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0440220114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 21:59:20 +0000 (UTC)
Received: by mail-vc0-f180.google.com with SMTP id hq16so9615868vcb.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 14:59:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53679974.60206@fb.com>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 5 May 2014 14:58:59 -0700
Message-ID: <CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
To: Chris Mason <clm@fb.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 5, 2014 at 7:00 AM, Chris Mason <clm@fb.com> wrote:
> On 05/02/2014 03:42 PM, Jiri Kosina wrote:
>>
>> Runtime/live kernel patching is becoming a topic these days. There are
>> several parallel implementations currently evolving in parallel (kpatch,
>> kgraft, criu-based solution, ksplice to some extent), all of them having
>> their pros and cons.
>>
>> It's clear that what is going to get merged at the end of the day would
>> have to be some super-position of the currently existing solutions.
>>
>> Finding a reasonable compromise might be challenging. Having discussion
>> between the groups working on those solutions (tech topic) and with
>> "general maintainer audience" to face the flame^W^W^Wobtain feedback
>> (core topic) would be very valuable step in converging to unified
>> solution.
>>
>> Suggested participants: see the list of "competing" projects above
>>
>
> Tons of interest in this topic here, mostly for the in-memory database
> workloads.

Would in-memory databases be happier if there were a way to kexec
without losing your data?

--Andy
