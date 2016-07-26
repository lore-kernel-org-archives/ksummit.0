Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3448378D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:53:30 +0000 (UTC)
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E5A71B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:53:29 +0000 (UTC)
Received: by mail-wm0-f67.google.com with SMTP id q128so1801861wma.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 06:53:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469533716.120686.281.camel@infradead.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<1469533716.120686.281.camel@infradead.org>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Tue, 26 Jul 2016 16:53:27 +0300
Message-ID: <CACVxJT-=j9XuCc1wikTghSrvgY9rmR4mq+G5aoZbTHE3W0aazA@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 2:48 PM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Fri, 2016-07-22 at 15:57 +0200, Hannes Reinecke wrote:
>>
>> > I guess that almost all functions return only a few possible error codes?
>>
>> Precisely. If we had a way of specifying "the return value is an errno
>> with the possible values '0', '-EIO', and '-EINVAL'" that would be
>> _so_ cool.
>
> And perpetually out of date. Because functions call through to *other*
> functions which might return an errno outside the 'known' set.
>
> Any why would you *want* to know the precise set of errnos that a
> function might return, if not to deliberately code your error handling
> non-defensively?

Java has checked exceptions.
Obviously, people "catch (e) {}" them.
