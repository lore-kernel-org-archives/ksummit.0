Return-Path: <shuah@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8B3868F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:25:27 +0000 (UTC)
Received: from mailout.easymail.ca (mailout.easymail.ca [64.68.200.34])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DEDD466
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 15:25:27 +0000 (UTC)
To: Geert Uytterhoeven <geert@linux-m68k.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAMuHMdWVVR_-r4K_sx-P+gDWwQ4yS7fAhA=FnL=snqxhd8J7dg@mail.gmail.com>
From: Shuah Khan <shuah@kernel.org>
Message-ID: <ceb13d48-66a1-803b-ab8e-3ca86bafbd01@kernel.org>
Date: Sun, 7 Oct 2018 09:25:11 -0600
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWVVR_-r4K_sx-P+gDWwQ4yS7fAhA=FnL=snqxhd8J7dg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

Thanks for the patch.

On 10/07/2018 02:25 AM, Geert Uytterhoeven wrote:
> Hi James,
> 
> Thanks for your patch!
> 
> On Sat, Oct 6, 2018 at 11:36 PM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>> From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00 2001
>> From: James Bottomley <James.Bottomley@HansenPartnership.com>
>> Date: Sat, 6 Oct 2018 14:21:56 -0700
>> Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about collecting email
>>  addresses
>>
>> The current code of conduct has an ambiguity in the it considers publishing
> 
> that
> 
>> private information such as email addresses unacceptable behaviour.  Since
>> the Linux kernel collects and publishes email addresses as part of the patch
>> process, add an exception clause for email addresses ordinarily collected by
>> the project to correct this ambiguity.
>>
>> Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> 
> Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
> 
> Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
> 

Acked-by: Shuah Khan <shuah@kernel.org>

>> --- a/Documentation/process/code-of-conduct.rst
>> +++ b/Documentation/process/code-of-conduct.rst
>> @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants include:
>>  * Trolling, insulting/derogatory comments, and personal or political attacks
>>  * Public or private harassment
>>  * Publishing others’ private information, such as a physical or electronic
>> -  address, without explicit permission
>> +  address not ordinarily collected by the project, without explicit permission
>>  * Other conduct which could reasonably be considered inappropriate in a
>>    professional setting
> 

thanks,
-- Shuah
