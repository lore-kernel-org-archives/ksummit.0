Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2FDA9F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 15:15:33 +0000 (UTC)
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 09F441A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 15:15:33 +0000 (UTC)
Received: by iodv127 with SMTP id v127so189979280iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 08:15:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
Date: Tue, 25 Aug 2015 09:15:32 -0600
Message-ID: <CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset=UTF-8
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, shuahkh@osg.samsung.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 10:35 AM, Kees Cook <keescook@chromium.org> wrote:
> On Mon, Aug 24, 2015 at 5:29 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
>> On Mon, Aug 24, 2015 at 6:20 AM, James Morris <jmorris@namei.org> wrote:
>>
>>> There are also potentially promising approaches to mitigation with other
>>> technologies such as KASan and gcc plugins, as well as evolving hardware
>>> features.
>>
>> What I've discovered when running KASan the last few weeks is that
>> this points back to the question of tests ... I've been using Trinity
>> to find bugs, but it is more likely to kill itself or cause OOM than
>> trigger any boundary overrun bugs.
>>
>> Kselftest may be helpful, but basically any loads that heavily
>> exercise the kernel internals are helpful to harden the kernel.
>> Some of these are custom test suites I suspect. Any good hints
>> for a simple embedded developer like me?
>
> I agree with the sentiment here, but not with the language. Finding
> flaws (which is what selftests, KASan, Trinity, etc do) isn't
> hardening. Hardening is stopping the exploitation of flaws. The
> hardening the kernel needs is about taking away exploitation tools,
> not killing bugs. (Though killing bugs is still great.)

I agree with Kees on this. Kselftest or any other test suites can help
with regression testing and make sure Kernel works the way it should.
Also these tests can tell us if kernel is hardened or not.

Hardening means something different to me. i.e making sure kernel
can protect against attacks and fail gracefully. This is something to
address during design and development process.

>
> As an example, making the kernel code memory read-only means an
> attacker cannot just directly change the kernel's execution path when
> they use an arbitrary memory-writing flaw. (This feature is mostly
> enabled via CONFIG_DEBUG_RODATA, and was very recently added to ARM,
> though isn't at 100% coverage for all the physical memory aliases.)
>

This sounds similar to ExecShield (NX bit) on Intel. Yes this is a good example.

thanks,
-- Shuah
