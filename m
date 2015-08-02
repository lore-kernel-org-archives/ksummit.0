Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6E364FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 16:04:20 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 127BD8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 16:04:19 +0000 (UTC)
Message-ID: <55BE3F7B.3060801@roeck-us.net>
Date: Sun, 02 Aug 2015 09:04:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon> <20150801151839.GA9480@mtj.duckdns.org>
	<55BD68DE.5060903@roeck-us.net>
	<20150802143025.GF7557@n2100.arm.linux.org.uk>
In-Reply-To: <20150802143025.GF7557@n2100.arm.linux.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/02/2015 07:30 AM, Russell King - ARM Linux wrote:
> On Sat, Aug 01, 2015 at 05:48:30PM -0700, Guenter Roeck wrote:
>> On 08/01/2015 08:18 AM, Tejun Heo wrote:
>>> So, all in all, if we actually want to fix this issue, well at least
>>> most of it, I think the only viable way would be implementing revoke
>>> semantics and drain and sever all operations on removal.  Maybe it'll
>>> end up another devm interface.
>>
>> Maybe that is completely nonsense, but how about something like
>> 	devm_get(dev);
>> to be called whenever a file used by a device is opened, and
>> 	devm_put(dev);
>> whenever it is closed ?
>
> Absolutely not.  There's two problems there:
>
> 1) You'd also need to tie the lifetime of 'dev' to the lifetime of the
>     character device, which is getting to be an absurd level of lifetime
>     complexity - we can't have 'dev' vanishing before the last user of
>     the file operations has gone away, otherwise 'dev' becomes a stale
>     pointer.
>
Wonder how many drivers access the device data structure in file operations.

> 2) Remember that devm encompasses not only driver allocations, but also
>     resources as well, like interrupts, iomem mappings and iomem resource
>     claiming.  As has already been stated by others, we don't want to delay
>     the release of all these resources.
>
Again, I wonder how many drivers access io mappings and resources in file
operations.

I understand that my idea would tie the lifetime of 'dev' to the lifetime
of a character device; I guess that was the idea. But what is the
alternative ? Also, in practice, doesn't that dependency already exist
in many cases ?

Thanks,
Guenter
