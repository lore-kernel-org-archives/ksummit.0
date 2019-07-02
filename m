Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 855F81F33
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 19:03:27 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 174B070D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 19:03:27 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id e3so39542148ioc.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 12:03:26 -0700 (PDT)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Thomas Gleixner <tglx@linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <371fb3b2-b781-3e9d-1157-49827dd420dd@linuxfoundation.org>
Date: Tue, 2 Jul 2019 13:03:24 -0600
MIME-Version: 1.0
In-Reply-To: <1562082713.3321.38.camel@HansenPartnership.com>
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

On 7/2/19 9:51 AM, James Bottomley wrote:
> On Tue, 2019-07-02 at 09:39 -0600, Shuah Khan wrote:
>> On 7/2/19 9:18 AM, James Bottomley wrote:
>>> On Tue, 2019-07-02 at 08:10 -0700, James Bottomley wrote:
>>>> On Tue, 2019-07-02 at 16:49 +0200, Thomas Gleixner wrote:
>>>
>>> [...]
>>>>> People who use the link tag today have their homebrewn scripts
>>>>> to add them automatically and it shouldn't be rocket science to
>>>>> add that to git, patchwork whatever.
>>>>
>>>> So if we find a way of automating this globally, I'm completely
>>>> happy. However, I would also note that whatever script does this
>>>> could likely also be run by you after the fact to generate the
>>>> back link, so foolproof automation also lessens the need to make
>>>> this a mandatory commit tag.
>>>
>>> Just on this one, it looks like getting git to archive the msgid of
>>> the patch commit would assist any script that goes off and tries to
>>> find patch series and its precursors in the archives, so perhaps
>>> adding that would be the actionable change in all of this?
>>>
>>
>> Looks like two things are emerging from my original thread that aimed
>> to get clarification on including "Patch revision information" in
>> commit logs.
>>
>> 1. Judiciously including information from the "Patch revision info."
>>      in the commit log could be valuable. Don't just bloat the commit
>>      log with trivial change history. This is part of patch review
>>      process and will not require any scripting. Maybe an update to
>>      the patch submit guidelines documents.
> 
> Agree, as long as it's what Thomas and I have been discussing: namely
> keeping the version information below the --- permanent history cutoff,
> so it's visible to reviewers but won't become part of the permanent
> patch history when the patch is committed to git.
> 

Yes that is what I have in mind. Below the -- permanent history cutoff
to help reviewers.

> I think the bit we're still arguing about is the link to prior series
> as part of this below the line version history.  I agree it's useful,
> but I also think it would be a burden to enforce for every patch
> series.
> 
>> 2. Archiving msgid of the patch commit for reference. This one would
>>      require some scripting to make it easier for maintainers.
> 
> Yes, I think we all agree on this.  The real question is how.  If we
> make git do it, I think trivially Message-Id: can become part of the
> optional metadata.  Or we could all use commit hooks that add a link
> tag.  Personally I prefer the former because it would be universally
> done with no effort but I recognise it would take time to get the
> ecosystem change to propagate.
> 

I think having git do it is better way to go. It becomes part of git
work-flow. There is no need to educate developers yet another script
and process.

thanks,
-- Shuah
