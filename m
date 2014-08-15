Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2AD8346
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Aug 2014 11:05:01 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0B9711F88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Aug 2014 11:05:00 +0000 (UTC)
Message-ID: <53EDE958.1040200@roeck-us.net>
Date: Fri, 15 Aug 2014 04:04:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>	<20140813180743.GB16662@roeck-us.net>	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>	<20140813224507.GA29606@roeck-us.net>	<CAMuHMdXZWhLtTzUnPymSt-P=viz7O7fq8nFaM-mHLT+XMnRJcA@mail.gmail.com>	<53EC7839.3010704@roeck-us.net>
	<CAMuHMdVQkqiE_S3ZAFziYXT4qESeofvC-6MsXfo_pYJxez2udQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVQkqiE_S3ZAFziYXT4qESeofvC-6MsXfo_pYJxez2udQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
	reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/14/2014 02:02 AM, Geert Uytterhoeven wrote:
> Hi Günther,
>
> CC kbuild
>
> On Thu, Aug 14, 2014 at 10:50 AM, Guenter Roeck <linux@roeck-us.net> wrote:
>> On 08/14/2014 12:40 AM, Geert Uytterhoeven wrote:
>>>> Maybe something like
>>>>
>>>> make PCI=n allmodconfig
>>>> make GPIOLIB=n allmodconfig
>>>>
>>>> which would let me disable key options selectively so I can improve
>>>> compile
>>>> coverage without having to go through all configurations (or randconfig).
>>>
>>>
>>> That's doable, using KCONFIG_ALLCONFIG.
>>>
>> I'll play with it some more, but a quick glance (and test) suggests that I
>> can
>> only use it to force a configuration option to be true, not to force it to
>> be false. Also, there seems to be an odd side effect.
>>
>> With
>>          kconfig.gpio:   "CONFIG_GPIOLIB=y"
>> and
>>          kconfig.nogpio: "# CONFIG_GPIOLIB is not set"
>>
>> KCONFIG_ALLCONFIG=kconfig.gpio make allnoconfig
>>          causes CONFIG_GPIOLIB to be set.
>>
>> KCONFIG_ALLCONFIG=kconfig.gpio make allmodconfig
>> KCONFIG_ALLCONFIG=kconfig.nogpio make allmodconfig
>>          both have the odd and at least for me unexpected effect of disabling
>>          CONFIG_MODULES, but do not affect CONFIG_GPIOLIB.
>
> Strange...
>
> I also saw strange things with randconfig, needing config input during the
> subsequent build, or "make oldconfig" asking new questions, just after
> having done a randconfig.
>

I made some progress. The following KCONFIG_ALLCONFIG file lets me disable GPIOLIB
with x86_64, and still build everything as modules.

# CONFIG_FB_VIA is not set
# CONFIG_MFD_AAT2870_CORE is not set
# CONFIG_MFD_ASIC3 is not set
# CONFIG_GPIOLIB is not set
CONFIG_MODULES=y

I had to deselect everything which explicitly selects GPIOLIB. Kind of makes sense.
For some reason it is necessary to specify "CONFIG_MODULES=y" even with "allmodconfig"
when using a KCONFIG_ALLCONFIG file.

Guenter
