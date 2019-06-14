Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5FD11249
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 21:40:29 +0000 (UTC)
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9308AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 21:40:28 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id i10so8809718iol.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:40:28 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <20190612085405.6045d95d@lwn.net>
	<f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
	<20190613112533.2176c5d4@coco.lan>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <b5af03d3-2286-32e9-f895-776b563df550@linuxfoundation.org>
Date: Fri, 14 Jun 2019 15:40:26 -0600
MIME-Version: 1.0
In-Reply-To: <20190613112533.2176c5d4@coco.lan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/13/19 8:25 AM, Mauro Carvalho Chehab wrote:
> Em Wed, 12 Jun 2019 12:22:55 -0600
> Shuah Khan <skhan@linuxfoundation.org> escreveu:
> 
>> On 6/12/19 8:54 AM, Jonathan Corbet wrote:
>>> What could be more fun than talking about kernel documentation?  Things we
>>> could get into:
>>>
>>>    - The state of the RST transition, what remains to be done, whether it's
>>>      all just useless churn that makes the documentation worse, etc.
>>>
>>>    - Things we'd like to improve in the documentation toolchain.
>>>
>>>    - Overall organization of Documentation/ and moving docs when the need
>>>      arises.  It seems I end up fighting about this more than just about
>>>      anything else, but I think it's important to organize our docs for the
>>>      convenience of the people using them.
>>>
>>>    - The ultimate vision for kernel docs (for now).  RST conversion and
>>>      imposing some organization are important, but they will not,
>>>      themselves, give us a coherent set of documentation.  What can we do to
>>>      have documentation that is useful, current, and maintainable, rather
>>>      than the dusty attic we have now?
>>>    
>>
>> The first step is identifying the ones that are out of date and/or
>> incorrect. I think this is probably the most time consuming part
>> and the second is start updating.
> 
> I would do just the opposite: convert the documentation, then
> update it.
> 

Yes. That is fine. I am referring to the outdated part. Converting
and updating them would work just fine.

> The reason is that, when someone sends a patch to the documentation,
> people tend to look more closely on it, and we start receiving
> updates for it.
> 


> Ok, this doesn't happen every time, but it is still worth.
> 
> There's another thing to consider here: there are lots of docs
> written for "stable" subsystems, in the sense that the documented
> code doesn't change for a lot of time (except for trivial patches
> not directly related to it.
> 
> While doing large chunks of code conversion, I noticed that there
> are lots of still valid documents that fit on this.
> 
> There's a big issue with those "stable" subsystems: they tend
> to not have any active maintainer anymore. So, there are not
> much people that are willing to actively review patches to it.
> 
> So, my advice here is to really invert things:
> 
> - do the conversion;

Even this can be made into tasks. If you would like to experiment
with and see how it works, send me a list of documents that you
would like to see converted first.

> - find a good place to put the converted the book;
> - add kernel-doc markups to be sure that the symbols will always
>    match upstream;
> - review the remaining content of the docs.
> 
>> I am currently putting together a task list for mentorship program
>> with a goal to create tasks that would more meaningful and helpful
>> instead of whitespace patches.
>>
>> I will gladly add documentation tasks to the list to help improve
>> the documentation.
> 
> I can surely mentor people interested on doing such tasks.
> 

That will be great.

thanks,
-- Shuah
