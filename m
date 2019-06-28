Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1C095AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:42:38 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62E683D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:42:38 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id h6so15622391ioh.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 14:42:38 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"Luck, Tony" <tony.luck@intel.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<5a778d63-24c3-cf15-2444-49e67f4e1b96@linuxfoundation.org>
	<1561756437.3335.26.camel@HansenPartnership.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <81af38d4-21ef-a1b1-962e-2c701b807318@linuxfoundation.org>
Date: Fri, 28 Jun 2019 15:42:35 -0600
MIME-Version: 1.0
In-Reply-To: <1561756437.3335.26.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/28/19 3:13 PM, James Bottomley wrote:
> On Fri, 2019-06-28 at 15:07 -0600, Shuah Khan wrote:
>> On 6/28/19 2:51 PM, Luck, Tony wrote:
>>> On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
> [...]
>>> Where substantial changes were made between patch versions it
>>> would be useful if the commit logs were adapted to say things like:
>>>
>>>    "We considered using technique X to do this but rejected
>>>     it because person Y said it had problem Z"
>>>
>>
>> There is value to having information about alternatives if any.
>> But not the trivial change history.
> 
> But we already have the cregit project that tries to attach mailing
> list discussion pointers to every semantic tag in the source code
> 
> https://cregit.linuxsources.org/code/
> 

Right. I use cregit for my research into changes. It does pull in
discussions it can find.

> It's only up to 4.20 but it's still useful.  I think the complexity of
> our development process means that we need the changelog to be
> succinct, so a brief discussion of the reasons for the patch, not every
> point that was raised and considered during the mailing list discussion
> because that's asking to have long winded and hard to read changelogs.
> If someone wants the full history they use a project like cregit to
> find it.
> 
I am not advocating adding change history to commit logs. My preference
is leaving the patch history out of the commit log.

I have the same concerns about commit logs getting out of hand with
change history even if it could be useful to have in handful of cases.

I am seeing change history popping up in recent commits and we do have
some maintainers that like to see the change history in commit logs.

I want to make sure it is given some thought as opposed to becoming the
norm without proper discussion. This can lead to lots of confusion when
sending patches as to should this information be included or not.

thanks,
-- Shuah
