Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C2EFA942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:33:34 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0C40F201A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:33:34 +0000 (UTC)
Message-ID: <5363D6E6.3030303@roeck-us.net>
Date: Fri, 02 May 2014 10:33:26 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <20140502164438.GA1423@jtriplet-mobl1>	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
In-Reply-To: <1399051229.2202.49.camel@dabdike>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/02/2014 10:20 AM, James Bottomley wrote:
> On Fri, 2014-05-02 at 13:11 -0400, Dave Jones wrote:
>> On Fri, May 02, 2014 at 09:44:42AM -0700, Josh Triplett wrote:
>>
>>   > Topics:
>>   > - Kconfig, and avoiding excessive configurability in the pursuit of tiny
>>   > - Optimizing a kernel for its exact target userspace.
>>   > - Examples of shrinking the kernel
>>
>> Something that's partially related here: Making stuff optional
>> reduces attack surface the kernel presents. We're starting to grow
>> more and more CONFIG options to disable syscalls. I'd like to hear
>> peoples reactions on introducing even more optionality in this area.
>
> My first reaction is reducing the attack surface sounds a reasonable
> idea.  My second reaction is that the plural in options makes me want to
> run for the hills.  Having a sea of options for enabling and disabling
> syscalls gives us the potential for having a set of kernels all with a
> slightly differing ABI as people choose what to enable and disable.
>
> If we do this, I think we should have a small number of options related
> to use case ... say something like a secure router kernel
> CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
> need.
>
> For the distros we could have an ordinary and a reduced attack surface
> kernel CONFIG_REDUCED_ATTACK_SURFACE.
>

Excellent idea. I'd like to be able to enable both options, for my company's
routers but even on my home servers if possible (ie for a distribution which
is tagged as 'server' distribution).

Guenter
