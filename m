Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E81199D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 15:45:31 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2BBD01FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 15:45:31 +0000 (UTC)
Message-ID: <53666093.3020404@roeck-us.net>
Date: Sun, 04 May 2014 08:45:23 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Ben Hutchings <ben@decadent.org.uk>, Li Zefan <lizefan@huawei.com>
References: <53662254.9060100@huawei.com>
	<1399217745.24523.90.camel@deadeye.wl.decadent.org.uk>
In-Reply-To: <1399217745.24523.90.camel@deadeye.wl.decadent.org.uk>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/04/2014 08:35 AM, Ben Hutchings wrote:
> On Sun, 2014-05-04 at 19:19 +0800, Li Zefan wrote:
>> I've been dealing with stable kernels. There are some issues that I noticed
>> and may be worth discussing.
>>
>> - Too many LTS kernels?
>
> Or in another sense, maybe too few?  Less than 5 years' support is
> hardly long-term, though I would not volunteer for backporting so far.
>
>> 2.6.32  Willy Tarreau
>> 3.2     Ben Huchings
>> 3.4     Greg
>> 3.10    Greg
>> 3.12    Jiry Slaby
>>
>> Too many or not? Is it good or bad? One of the problem is the maintenance
>> burden. For example, DaveM has to prepare stable patches for 5 stable
>> kernels: 3.2, 3.4, 3.10, 3.12 and 3.14.
>>
>> - Equip Greg with a sub-maintainer?
>>
>> I found 3.4.x lacked hundreds of fixes compared to 3.2.x. It's mainly
>> because Ben has been manually backporting patches which don't apply
>> cleanly, while Greg just doesn't have the time budget.
>>
>> Is it possible that we find a sub-maintainer to do this work?
>
> This is being addressed by others.
>
> [...]
>> - Testing stable kernels
>>
>> The testing of stable kernels when a new version is under review seems
>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
>> are run on mainline/for-next only. Would be useful to also have them
>> run on stable kernels?
>
> According to my notes from Fengguang's talk, his robot excludes any
> branch with a very old commit.  If that meant checking *commit* date,
> not author date, then stable branches would already get tested as soon
> as they are pushed to git.kernel.org.  As that doesn't seem to be
> happening, it seems like the test must be based on author date and
> should be changed to commit date.  But also, we would need to commit
> each rc patch series to a git branch.
>

Since I create those branches already for my testing, I could publish them
on kernel.org (pick a name for the repository) if there is interest.
That would imply repeated rebases, though, since the branches reflect
the quilt history, which may change if commits are added or removed.

Guenter
