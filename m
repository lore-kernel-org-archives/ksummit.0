Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7D721A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 23:22:27 +0000 (UTC)
Received: from mail.active-venture.com (mail.active-venture.com
	[67.228.131.205])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D5F4A201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 23:22:26 +0000 (UTC)
Message-ID: <5398E4A8.9080200@roeck-us.net>
Date: Wed, 11 Jun 2014 16:22:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Bjorn Helgaas <bhelgaas@google.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
In-Reply-To: <CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
 by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/11/2014 12:43 PM, Bjorn Helgaas wrote:
> On Wed, Jun 11, 2014 at 11:54 AM, Guenter Roeck <linux@roeck-us.net> wrote:
>> On Tue, Jun 10, 2014 at 01:19:12PM -0700, H. Peter Anvin wrote:
>>> On 06/10/2014 01:12 PM, Konrad Rzeszutek Wilk wrote:
>>>> Hey,
>>>>
>>>> I would want to propose a topic on removing code in Linux that
>>>> users are using - but they are doing it less and less and it
>>>> mostly is tied in with older hardware. Specifically how to do
>>>> this transition properly - and if we want to define some checklist
>>>> /policy to do it via.
>>>>
>>>
>>> I second this.  Right now deprecation is entirely ad hoc... usually in
>>> the form "this hasn't compiled for X releases and noone noticed", which
>>> makes it hard to do *controlled* deprecation...
>>>
>> That is a bit different to "users are using but less and less". Personally
>> I would not mind leaving code in the kernel as long as it is used, but
>> it would be great if we had some rule that a file/driver which did
>> not compile for X releases (pick a preferred number for X - two years
>> worth of releases ?) can be removed.
>
> I suspect most people would agree with the idea that something that
> hasn't compiled for X years can be removed, possibly with some
> negotiation about what X is.
>
> But my impression is the proposal is to go farther than that, and
> figure out a way to remove obsolete but still-compilable code.  If we
> all did our jobs perfectly, we would never add a change to Linux that
> broke compilation of anything.  So if there's a file that doesn't
> compile anymore, I think of that as a result of a mistake somewhere
> along the line.  We can use that mistake to deduce that nobody cares
> anymore, but it'd be a lot nicer to have a scheme that didn't depend
> on people making random mistakes.
>

I understand, but personally I don't have much problem with code as long
as it compiles. I am more concerned with code that doesn't compile and
no one cared for years.

Sure, there is a difference if that code actually consumes cycles, but I
suspect that isn't likely enough to be bothered about. If there is such code,
I would agree that it should be removed even if it does compile.

Guenter
