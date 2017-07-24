Return-Path: <miklos@szeredi.hu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3506F959
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Jul 2017 07:55:22 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3ADD16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Jul 2017 07:55:20 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id j194so1622144oib.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Jul 2017 00:55:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170719090239.39f031c5@gandalf.local.home>
References: <10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
	<20170712082139.17cfd33a@xeon-e3>
	<CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
	<20170719090239.39f031c5@gandalf.local.home>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Mon, 24 Jul 2017 09:55:19 +0200
Message-ID: <CAJfpegsK_SvLOg9rTMSwVSZpDG4HFkPrkfaPtGrniLhtr1vUhw@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
 error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 19, 2017 at 3:02 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 12 Jul 2017 09:19:55 -0700
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
>> On Wed, Jul 12, 2017 at 8:21 AM, Stephen Hemminger
>> <stephen@networkplumber.org> wrote:
>> >
>> > Netlink has recently got extended error reporting, still not used widely
>> > and library support is lacking in most places.
>>
>> Yeah, and that "not widely supported and library support is lacking"
>> is always going to be an issue with anything like that.
>>
>> Along with internationalization, which is a whole nasty set of issues
>> in itself with error messages.
>>
>> It's not going to happen, in other words. The problems are basically
>> insurmountable, and the thing it fixes will always be some special
>> case that doesn't much matter.
>>
>> Every time it comes up it is because some developer found one case
>> that they were hunting down and it annoyed them, and the developer
>> went "if only it had included more information and it would have been
>> obvious".
>>
>> But every time it comes up people ignore this basic issue:
>>
>>      [torvalds@i7 linux]$ git grep -e '-E[A-Z]\{4\}' | wc -l
>>      182523
>>
>
> Note a lot of those -E* are not going to user space. Some are in
> comments, and some are used internally. I use them to pass back
> information to other kernel only routines, as some errors are more
> critical than others.

a) it wouldn't have to be for every error

b) kernel prints detailed error in dmesg anyway, why not allow that
info to be bound to the syscall that triggered the error?

c) internationalization can be solved at the level where it matters
(NOT in the kernel)

My suggestion was to keep the kernel interface really simple, e.g.:

   return detailed_error(-EINVAL, "failure to do foo because of bar");

What are the insurmountable issues you are talking about?

Thanks,
Miklos
