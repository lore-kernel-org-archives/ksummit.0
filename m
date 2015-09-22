Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2800D1637
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 18:02:58 +0000 (UTC)
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89CA2138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 18:02:57 +0000 (UTC)
Received: by obbbh8 with SMTP id bh8so14269135obb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 11:02:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.10.1509221436130.6225@hadrien>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<20150922122409.GC4953@mwanda>
	<alpine.DEB.2.10.1509221436130.6225@hadrien>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 22 Sep 2015 11:02:37 -0700
Message-ID: <CALCETrXU9VV6hOiCgaFw6jim1SMJhThB5sPR1XXCrbZf=u2uVw@mail.gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 22, 2015 at 5:59 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 22 Sep 2015, Dan Carpenter wrote:
>
>> On Mon, Aug 24, 2015 at 09:35:50AM -0700, Kees Cook wrote:
>> > As an example, making the kernel code memory read-only means an
>> > attacker cannot just directly change the kernel's execution path when
>> > they use an arbitrary memory-writing flaw.
>>
>> Part of the problem is that C defaults to writable and you have to
>> explicitly add a const if you want it read only.  Then when you are
>> reading the code and you see:
>>
>> static struct uvc_format_desc uvc_fmts[] = {
>>
>> You can't immediately tell if it is writeable because it needs to be or
>> because that's just the default.  We should make a new keyword that
>> means non constant then we could grep for structs which have a function
>> pointer and complain if they weren't specified as const or __writable.
>>
>> Maybe there is a way to do this with GCC attributes but I have never
>> used them before and I couldn't immediately see how to do it.
>
> But the bigger problem is that some of these kinds of structs have a
> single writeable field lurking inside fo them.  For example,
> platform_driver contains struct device_driver driver; that is initialized
> in the platform driver library, and not in the device driver itself.
> Would it be beneficial to put const on the individual function-typed
> fields, if that is indeed possible?  For example, I don't find any
> assignments to a platform_driver remove field.
>

PaX gets around this with special tricks to write to fields in
otherwise const structures in appropriately annotated code.  We could
clean that up and do it upstream.

--Andy
