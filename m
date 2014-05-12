Return-Path: <hverkuil@xs4all.nl>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 22AAFA83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:41:03 +0000 (UTC)
Received: from smtp-vbr2.xs4all.nl (smtp-vbr2.xs4all.nl [194.109.24.22])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 011591FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:41:01 +0000 (UTC)
Message-ID: <5370970D.2030205@xs4all.nl>
Date: Mon, 12 May 2014 11:40:29 +0200
From: Hans Verkuil <hverkuil@xs4all.nl>
MIME-Version: 1.0
To: Li Zefan <lizefan@huawei.com>, Wolfram Sang <wsa@the-dreams.de>
References: <20140511053037.GQ12708@titan.lakedaemon.net>
	<536FBA0E.5090301@gmail.com> <20140511190752.GC2527@linux.com>
	<20140511192630.GA14115@kroah.com>
	<20140511195011.GD2527@linux.com> <536FDE91.3050708@xs4all.nl>
	<20140512083825.GB2665@katana> <53708F74.3070200@huawei.com>
In-Reply-To: <53708F74.3070200@huawei.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] hobbyist recruiting
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/12/2014 11:08 AM, Li Zefan wrote:
> On 2014/5/12 16:38, Wolfram Sang wrote:
>>
>>>> that there really is no central TODO list. Maybe there could be a 
>>>> Documentation/NewcomersStartHere-like file that would list for
>>>> instance the TODO files in drivers/staging? It's nothing big, but
>>>> would certainly help people find their ways.
>>
>> To be honest, I think it is something big. Keeping a file up-to-date
>> which has detailed information from various subsystems is quite some
>> task. More subsystem specific TODO files might be helpful, iff the
>> maintainer manages to keep it up to date. From a newbie, I'd expect to
>> find out how to find all TODO files in a kernel tree ;)
>>
> 
> This was once discussed in Kernel Summit.
> 
> http://lwn.net/Articles/412639/
> 
> "Part of the problem, it seems, is that these lists tend not to be "sexy";
> maintainers tend to keep the more interesting tasks for themselves."
> 
> Which I myself have to admit. :)
> 

But how many of those interesting tasks are suitable for beginners? If it is
interesting for a maintainer, then I think it is very unlikely to be suitable
for someone with little experience.

We are trying to find people who are good programmers, are motivated, have
the time to spend many hours per week *of their own time* on these projects
and are willing to do that unpaid (which is typical for a beginner). Rare as
hen's teeth.

If someone shows up on a mailinglist who demonstrates those qualities, then
I'm sure any self-respecting maintainer will go out of their way to help
them. I know I would.

My opinion is that there is nothing wrong with mentoring programs as such,
but don't do it with the expectation to get fresh kernel developer blood.

I've mentored a few summer interns doing open source work and in all cases
got more out of them then I put in, but none of them became regular
contributors (which is a shame, since some were really good).

I found it a useful method to get projects done for which I had no time,
for the interns to learn about the company and open source world, and I
actually enjoy mentoring. And with luck they might try to find a job at
the company after finishing their education.

But it's not a magic bullet that will suddenly give you a new crop of
active open source contributors, let alone new subsystem maintainers.

Those that are actually interested in doing that will find their way
regardless of any mentoring programs.

In my opinion it is similar to the current craze of teaching everyone to
code. I don't believe that will result in a single competent new programmer.
Those that are really interested and motivated in the topic will find their
own way, and helping those will be much more useful.

Regards,

	Hans
