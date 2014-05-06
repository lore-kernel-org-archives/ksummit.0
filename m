Return-Path: <prvs=02036418cc=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE2D6AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:05:50 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A27741FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:05:49 +0000 (UTC)
Message-ID: <5368ECB7.50205@fb.com>
Date: Tue, 6 May 2014 10:07:51 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: Andy Lutomirski <luto@amacapital.net>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<53679974.60206@fb.com>
	<CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
In-Reply-To: <CALCETrWmeMOHXu_Jk8mh41i-Fkp5kszMxcRamtAjbJkjbez37Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
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

On 05/05/2014 05:58 PM, Andy Lutomirski wrote:
> On Mon, May 5, 2014 at 7:00 AM, Chris Mason <clm@fb.com> wrote:
>> On 05/02/2014 03:42 PM, Jiri Kosina wrote:
>>>
>>> Runtime/live kernel patching is becoming a topic these days. There are
>>> several parallel implementations currently evolving in parallel (kpatch,
>>> kgraft, criu-based solution, ksplice to some extent), all of them having
>>> their pros and cons.
>>>
>>> It's clear that what is going to get merged at the end of the day would
>>> have to be some super-position of the currently existing solutions.
>>>
>>> Finding a reasonable compromise might be challenging. Having discussion
>>> between the groups working on those solutions (tech topic) and with
>>> "general maintainer audience" to face the flame^W^W^Wobtain feedback
>>> (core topic) would be very valuable step in converging to unified
>>> solution.
>>>
>>> Suggested participants: see the list of "competing" projects above
>>>
>>
>> Tons of interest in this topic here, mostly for the in-memory database
>> workloads.
>
> Would in-memory databases be happier if there were a way to kexec
> without losing your data?

Yes, for these apps we could just define a chunk of ram that was 
supposed to stay the same after kexec and they would be happy.

-chris
