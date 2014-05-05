Return-Path: <prvs=0202d82fef=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4C2F1ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 14:00:05 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D0E7820246
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 14:00:04 +0000 (UTC)
Message-ID: <53679974.60206@fb.com>
Date: Mon, 5 May 2014 10:00:20 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: Jiri Kosina <jkosina@suse.cz>, <ksummit-discuss@lists.linuxfoundation.org>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
In-Reply-To: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/02/2014 03:42 PM, Jiri Kosina wrote:
> Runtime/live kernel patching is becoming a topic these days. There are
> several parallel implementations currently evolving in parallel (kpatch,
> kgraft, criu-based solution, ksplice to some extent), all of them having
> their pros and cons.
>
> It's clear that what is going to get merged at the end of the day would
> have to be some super-position of the currently existing solutions.
>
> Finding a reasonable compromise might be challenging. Having discussion
> between the groups working on those solutions (tech topic) and with
> "general maintainer audience" to face the flame^W^W^Wobtain feedback
> (core topic) would be very valuable step in converging to unified
> solution.
>
> Suggested participants: see the list of "competing" projects above
>

Tons of interest in this topic here, mostly for the in-memory database 
workloads.

-chris
