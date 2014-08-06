Return-Path: <jhs@mojatatu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B2F6711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 16:11:15 +0000 (UTC)
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80AED1F8AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  6 Aug 2014 16:11:13 +0000 (UTC)
Received: by mail-ie0-f169.google.com with SMTP id rd18so3132280iec.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 06 Aug 2014 09:11:12 -0700 (PDT)
Message-ID: <53E2539F.8040409@mojatatu.com>
Date: Wed, 06 Aug 2014 12:11:11 -0400
From: Jamal Hadi Salim <jhs@mojatatu.com>
MIME-Version: 1.0
To: Greg KH <greg@kroah.com>, David Howells <dhowells@redhat.com>
References: <18667.1407324523@warthog.procyon.org.uk>
	<20140806144519.GB14247@kroah.com>
In-Reply-To: <20140806144519.GB14247@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Should .c files be discouraged from
 #including UAPI headers directly?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/06/14 10:45, Greg KH wrote:
> On Wed, Aug 06, 2014 at 12:28:43PM +0100, David Howells wrote:
>
>>
>> 	#include <uapi/linux/psci.h>
>>
>> given that appropriate -I flags are supplied such that they'll fall back to
>> the UAPI header if a kernel-internal header does not exist?
>
> Why does it matter?  What works "better" if a .c file doesn't include
> the uapi.h file?
>


IMO, it is more intuitive to have an explicit uapi/
Issue i came across recently:
Old tutorials floating around specify a tc action module should
stash the user header in linux/tc_act - which would work
given current makefiles; but that is not what we want them to do
given iproute2 picks headers off uapi/linux
We cant fix old floating tutorials but by fixing the code to point
to the correct header location we are essentially documenting.

cheers,
jamal
