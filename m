Return-Path: <riel@redhat.com>
Message-ID: <53F38266.90809@redhat.com>
Date: Tue, 19 Aug 2014 12:59:18 -0400
From: Rik van Riel <riel@redhat.com>
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
	Guenter Roeck <linux@roeck-us.net>
References: <20140819144839.GA1270@thunk.org>	<20140819145547.GB18536@roeck-us.net>	<20140819152350.GE11085@thunk.org>
	<20140819154029.GE5423@mwanda>	<20140819154738.GB16948@roeck-us.net>
	<20140819160917.GF5423@mwanda>
In-Reply-To: <20140819160917.GF5423@mwanda>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/19/2014 12:09 PM, Dan Carpenter wrote:
> On Tue, Aug 19, 2014 at 08:47:38AM -0700, Guenter Roeck wrote:
>> On Tue, Aug 19, 2014 at 06:40:29PM +0300, Dan Carpenter wrote:
>>> Why can't we just taint the kernel on module removal?
>>>
>> Why not just fix its bugs ?
>>
>> If you want to taint the kernel on module removal because it is known that many
>> drivers have bugs in their removal code, you should taint the kernel if any code
>> is used which is known to have a bug. Or, in other words, just taint the kernel,
>> period.
>
> If you rmmod a module it probably means that your code was buggy before
> you started the rmmod.

Not necessarily.

I often rmmod the kvm module (and then load a new one) to
test performance enhancements.

For tracing, tools like systemtap insert kernel modules
to trace kernel code, and will remove them again when
the tracing script exits.
