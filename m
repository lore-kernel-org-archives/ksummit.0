Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF02794A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 19:00:17 +0000 (UTC)
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F1451BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 19:00:16 +0000 (UTC)
Received: by iodt126 with SMTP id t126so160552509iod.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 12:00:16 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.DEB.2.11.1508242048060.15006@nanos>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<alpine.DEB.2.11.1508242048060.15006@nanos>
Date: Mon, 24 Aug 2015 12:00:15 -0700
Message-ID: <CAGXu5jLtG0Jaf0hDkNtditSSGMxwKF8QC9aWq2Vf1A=FoAYJgA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Cc: Jiri Kosina <jkosina@suse.cz>, ksummit-discuss@lists.linuxfoundation.org,
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

On Mon, Aug 24, 2015 at 11:52 AM, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Mon, 24 Aug 2015, Kees Cook wrote:
>> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
>> This is far from a comprehensive list, though. The biggest value, I
>> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
>> for constification and integer overflow.
>
> There is another aspect. We need to make developers more aware of the
> potential attack issues. I learned my lesson with the futex disaster
> and since then I certainly look with a different set of eyes at user
> space facing code. I doubt that we want that everyone experiences the
> disaster himself (though that's a very enlightening experience), but
> we should try to document incidents and the lessons learned from
> them. Right now we just rely on those who are deep into the security
> realm or the few people who learned it the hard way.

Yeah, it can be a hard perspective shift to make. And shifting the
thinking about the kernel itself to always operating in a compromised
state makes thinking about how to protect it much easier. User space
is trying to hurt us! :)

-Kees

-- 
Kees Cook
Chrome OS Security
