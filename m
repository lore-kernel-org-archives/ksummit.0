Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B4631095
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F137067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:23 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 85ACB2086C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 18:26:23 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id i63so2025422wmg.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 11:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
	<201908151034.CC0F7BD84@keescook>
In-Reply-To: <201908151034.CC0F7BD84@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 15 Aug 2019 11:26:10 -0700
Message-ID: <CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 15, 2019 at 10:48 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> > After thinking about this a bit more, I think that deferring the main
> > seccomp filter invocation until arguments have been read is too
> > problematic.  It has the ordering issues you're thinking of, but it
> > also has unpleasant effects if one of the reads faults or if
> > SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
>
> Right, I was actually thinking of the trace/trap as being the race.
>
> > type of deeper inspection filter should just be a totally separate
> > layer.  Once the main seccomp logic decides that a filterable syscall
> > will be issued then, assuming that no -EFAULT happens, a totally
> > different program should get run with access to arguments.  And there
> > should be a way for the main program to know that the syscall nr in
> > question is filterable on the running kernel.
>
> Right -- this is how I designed the original prototype: it was
> effectively an LSM that was triggered by seccomp (since LSMs don't know
> anything about syscalls -- their hooks are more generalized). So seccomp
> would set a flag to make the LSM hook pay attention.
>
> Existing LSMs are system-owner defined, so really something like Landlock
> is needed for a process-owned LSM to be defined. But I worry that LSM
> hooks are still too "deep" in the kernel to have a process-oriented
> filter author who is not a kernel developer make any sense of the
> hooks. They're certainly oriented in a better position to gain the
> intent of a filter. For example, if a filter says "you can't open(2)
> /etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
> dumb exposure. The LSM hooks are positioned to say "you can't manipulate
> /etc/foo through any means".
>
> So, I'm not entirely sure. It needs a clear design that chooses and
> justifies the appropriate "depth" of filtering. And FWIW, the two most
> frequent examples of argument parsing requests have been path-based
> checking and network address checking. So any prototype needs to handle
> these two cases sanely...
>

But also clone() flag filtering, and new clone() proposals keep
wanting to add structs.  And filtering bpf().  /me runs.

But yes, doing this LSM-style could also make sense.
