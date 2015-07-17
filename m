Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9BE64491
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:12:08 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 353C011E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:12:08 +0000 (UTC)
Message-ID: <55A92954.5000704@roeck-us.net>
Date: Fri, 17 Jul 2015 09:12:04 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Ralf Baechle <ralf@linux-mips.org>,
 Tim Bird <tim.bird@sonymobile.com>
References: <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7>	<20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7>	<20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716151251.GF20901@linux-mips.org>
In-Reply-To: <20150716151251.GF20901@linux-mips.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/16/2015 08:12 AM, Ralf Baechle wrote:
> On Thu, Jul 16, 2015 at 08:04:30AM -0700, Tim Bird wrote:
>
>> On 07/16/2015 06:47 AM, Steven Rostedt wrote:
>>> One of the issues with newcomers coming to development of the Linux
>>> kernel, is that every maintainer is different. We should be trying
>>> harder to let people know what we prefer. Every maintainer expects
>>> something different, but it's up to the maintainer to explicitly let
>>> others know what they want. You can't expect everyone to read your mind.
>>
>> I agree with this completely.  When you switch systems (which I've done
>> something like 5 times in the last 2 years), you are essentially a newbie
>> in that new system.
>>
>> How about putting some notes in the MAINTAINER file for things like
>> this, that some get_maintainer.pl option could show?
>> We could use a I: prefix, for "Instructions:"  (only because 'N:'
>> is already used.)
>>
>> I'm not sure the what types of per-maintainer differences would be good to
>> list, but at least the two described here would be good:
>>   - ping delay preference
>>   - ping style (whole patch or just an alert) preference
>>
>> I think there may be some other things that we could recommend, but maybe
>> it would be good to use free-form instructions for a while and see what
>> patterns emerge.
>>
>> A side benefit of this would be that maintainers could see what their
>> colleagues are doing, which might help spread knowledge of useful
>> practices.
>
> Haven't systems like patchwork mostly obsoleted ping emails?
>
Except that not all maintainers use patchwork.

Guenter
