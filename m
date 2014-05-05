Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D46F2ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 13:40:28 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4EC422022F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 13:40:28 +0000 (UTC)
Message-ID: <536794C6.8090001@roeck-us.net>
Date: Mon, 05 May 2014 06:40:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Jason Cooper <jason@lakedaemon.net>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<53664E31.6030706@roeck-us.net>
	<CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
	<536709BA.7070809@roeck-us.net>
	<20140505113127.GJ28159@titan.lakedaemon.net>
In-Reply-To: <20140505113127.GJ28159@titan.lakedaemon.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, lizf.kern@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/05/2014 04:31 AM, Jason Cooper wrote:
> On Sun, May 04, 2014 at 08:47:06PM -0700, Guenter Roeck wrote:
>> This may be seen as somewhat strong definition of the term "severe",
>> but in my work environment the attitude is to never update the kernel under
>> any circumstances. Or, in other words, it is quite hostile to someone who
>> advocates following upstream kernel releases. Each new bug, as minor as it
>> may be in a practical sense, is seen as argument (or ammunition) against
>> kernel updates. Note that this specifically includes performance regressions,
>> as minor as they may be. Given that, I would love to see Fengguang's
>> performance tests run on stable releases, simply because that would give me
>> confidence (and proof) that no performance regressions were introduced.
>
> Along this line, I keep coming back to an idea that I really need to
> implement.  Say your shop is running v3.12.3, and you'd like to migrate
> to v3.12.7 because of a bugfix for your subsystem.
>
> I imagine it would make the argument easier if you could quantify the
> changes from v3.12.3 to v3.12.7 relevant to your kernel config.  eg:
>
> $ git diff v3.12.3..v3.12.7 | ./scripts/diff-filter mydefconfig
>
> (no, diff-filter doesn't exist, yet)
>
> I could also see using ./scripts/objdiff for this as well.  Anything
> that would help the engineer quantify the differences between the two
> releases so he could ask the question, "Show me *which* change you're
> uncomfortable with."
>
> That's a much better position to be in than, "I swear, the -stable
> process is legit.  You can trust a bunch of people you've never met who
> won't suffer any repercussions if our product fails."
>

The idea is good, but it would not help in my case.

One of the arguments is that only patches which are relevant and can
be proven to exist in the build/image should be applied. Therefore,
such a script could and would be used as argument to only apply such
patches. This would leave me with a baseline image which wasn't tested
by anyone and would deviate more and more from the stable release.

Guenter
