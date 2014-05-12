Return-Path: <peter.senna@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DCFE72FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 08:58:43 +0000 (UTC)
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 477371F977
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 08:58:43 +0000 (UTC)
Received: by mail-qa0-f45.google.com with SMTP id hw13so6638008qab.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 01:58:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140511111034.GA6400@katana>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
Date: Mon, 12 May 2014 10:58:42 +0200
Message-ID: <CA+MoWDpbRGn4sL2K29EHvbasu7BfS-OXM9oLRqJgjpj-bD_RHg@mail.gmail.com>
From: Peter Senna Tschudin <peter.senna@gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Julia Lawall <Julia.Lawall@lip6.fr>
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I think that Julia Lawall would be interested in this topic. I've
added her in CC.

On Sun, May 11, 2014 at 1:10 PM, Wolfram Sang <wsa@the-dreams.de> wrote:
>
>> Last year I had been doing the coverity scans on an almost daily basis
>> for 2-3 months.  Now that we're a year in, I'd like to share some
>> results, and show some of the more common trends and bug patterns that
>> seem to pop up.
>>
>> [ spoiler: For the most part, it's all pretty positive, but we still suck ]
>>
>> It would also be good to have some more discussion about other tools
>> we could be making more use of.  (Nomination: Dan Carpenter for smatch).
>
> I'm definately interested.
>
> In my workflow, I use sparse/smatch/coccicheck/cppcheck before applying
> my own work, or patches to the i2c branches. (Oh, and rats and flawfinder,
> too, but so far, they didn't point to something worthwhile.)
>
> I am interested in workflows and experiences from other people, how
> usage of static analyzers could be spread (gcc inclusion sounds great),
> how to make them more robust, etc... And by doing that, get a better
> feeling when an issue left the scope of static code checking and needs
> some proper handling.
>
> Thanks,
>
>    Wolfram
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>



-- 
Peter
