Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 38B248E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:43:42 +0000 (UTC)
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A3EF20281
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:43:40 +0000 (UTC)
Received: by mail-ig0-f174.google.com with SMTP id h3so6834346igd.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 12:43:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140611175433.GA10462@roeck-us.net>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Wed, 11 Jun 2014 13:43:18 -0600
Message-ID: <CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Jun 11, 2014 at 11:54 AM, Guenter Roeck <linux@roeck-us.net> wrote:
> On Tue, Jun 10, 2014 at 01:19:12PM -0700, H. Peter Anvin wrote:
>> On 06/10/2014 01:12 PM, Konrad Rzeszutek Wilk wrote:
>> > Hey,
>> >
>> > I would want to propose a topic on removing code in Linux that
>> > users are using - but they are doing it less and less and it
>> > mostly is tied in with older hardware. Specifically how to do
>> > this transition properly - and if we want to define some checklist
>> > /policy to do it via.
>> >
>>
>> I second this.  Right now deprecation is entirely ad hoc... usually in
>> the form "this hasn't compiled for X releases and noone noticed", which
>> makes it hard to do *controlled* deprecation...
>>
> That is a bit different to "users are using but less and less". Personally
> I would not mind leaving code in the kernel as long as it is used, but
> it would be great if we had some rule that a file/driver which did
> not compile for X releases (pick a preferred number for X - two years
> worth of releases ?) can be removed.

I suspect most people would agree with the idea that something that
hasn't compiled for X years can be removed, possibly with some
negotiation about what X is.

But my impression is the proposal is to go farther than that, and
figure out a way to remove obsolete but still-compilable code.  If we
all did our jobs perfectly, we would never add a change to Linux that
broke compilation of anything.  So if there's a file that doesn't
compile anymore, I think of that as a result of a mistake somewhere
along the line.  We can use that mistake to deduce that nobody cares
anymore, but it'd be a lot nicer to have a scheme that didn't depend
on people making random mistakes.

Bjorn
