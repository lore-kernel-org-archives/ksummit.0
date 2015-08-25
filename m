Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1FC62AF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:15:35 +0000 (UTC)
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B0153190
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 16:15:34 +0000 (UTC)
Received: by igui7 with SMTP id i7so14993449igu.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 09:15:34 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<CAKocOOP19WowbqaUBxESDd5Q5E4fPYpgPvKTqMn8JhTEhqJEAw@mail.gmail.com>
Date: Tue, 25 Aug 2015 09:15:33 -0700
Message-ID: <CAGXu5jJp2vEkQ4QmM_Xr=uDrLK_g3f4Nh92MzQmChPDfSXZfYQ@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <shuahkhan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 25, 2015 at 8:15 AM, Shuah Khan <shuahkhan@gmail.com> wrote:
> On Mon, Aug 24, 2015 at 10:35 AM, Kees Cook <keescook@chromium.org> wrote:
>> As an example, making the kernel code memory read-only means an
>> attacker cannot just directly change the kernel's execution path when
>> they use an arbitrary memory-writing flaw. (This feature is mostly
>> enabled via CONFIG_DEBUG_RODATA, and was very recently added to ARM,
>> though isn't at 100% coverage for all the physical memory aliases.)
>>
>
> This sounds similar to ExecShield (NX bit) on Intel. Yes this is a good example.

Yup! That's exactly the NX bit (or other architecture equivalent). The
trouble tends to be around correctly setting up the kernel memory maps
to actually split up regions and mark the permissions correctly, and
make sure nothing was depending on the side-effects of the old
permissions.

-Kees

-- 
Kees Cook
Chrome OS Security
