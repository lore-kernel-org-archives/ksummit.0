Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFF37ACD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 17:48:41 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67A7A67F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 17:48:41 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n4so1617491pgv.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 10:48:41 -0700 (PDT)
Date: Thu, 15 Aug 2019 10:48:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <201908151034.CC0F7BD84@keescook>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> After thinking about this a bit more, I think that deferring the main
> seccomp filter invocation until arguments have been read is too
> problematic.  It has the ordering issues you're thinking of, but it
> also has unpleasant effects if one of the reads faults or if
> SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this

Right, I was actually thinking of the trace/trap as being the race.

> type of deeper inspection filter should just be a totally separate
> layer.  Once the main seccomp logic decides that a filterable syscall
> will be issued then, assuming that no -EFAULT happens, a totally
> different program should get run with access to arguments.  And there
> should be a way for the main program to know that the syscall nr in
> question is filterable on the running kernel.

Right -- this is how I designed the original prototype: it was
effectively an LSM that was triggered by seccomp (since LSMs don't know
anything about syscalls -- their hooks are more generalized). So seccomp
would set a flag to make the LSM hook pay attention.

Existing LSMs are system-owner defined, so really something like Landlock
is needed for a process-owned LSM to be defined. But I worry that LSM
hooks are still too "deep" in the kernel to have a process-oriented
filter author who is not a kernel developer make any sense of the
hooks. They're certainly oriented in a better position to gain the
intent of a filter. For example, if a filter says "you can't open(2)
/etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
dumb exposure. The LSM hooks are positioned to say "you can't manipulate
/etc/foo through any means".

So, I'm not entirely sure. It needs a clear design that chooses and
justifies the appropriate "depth" of filtering. And FWIW, the two most
frequent examples of argument parsing requests have been path-based
checking and network address checking. So any prototype needs to handle
these two cases sanely...

-- 
Kees Cook
