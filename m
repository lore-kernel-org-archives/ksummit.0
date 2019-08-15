Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A693255
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 19:21:27 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2839FCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 19:21:27 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B068F2084D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 19:21:26 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id s18so2413616wrn.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Aug 2019 12:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
	<CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
	<201908151034.CC0F7BD84@keescook>
	<CALCETrV+tk9irkoRTQCk+Ve37kce3V+7M1rFWwoDD8YqZS3p7Q@mail.gmail.com>
	<20190815183113.rtaevi3sdipdz5y2@wittgenstein>
In-Reply-To: <20190815183113.rtaevi3sdipdz5y2@wittgenstein>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 15 Aug 2019 12:21:13 -0700
Message-ID: <CALCETrW=55Dd01Vpw5fJs3N0QFYWJzm1e0SUCKUCYNcHUUT9ow@mail.gmail.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
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

On Thu, Aug 15, 2019 at 11:31 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Thu, Aug 15, 2019 at 11:26:10AM -0700, Andy Lutomirski wrote:
> > On Thu, Aug 15, 2019 at 10:48 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Wed, Aug 14, 2019 at 10:54:49AM -0700, Andy Lutomirski wrote:
> > > > After thinking about this a bit more, I think that deferring the main
> > > > seccomp filter invocation until arguments have been read is too
> > > > problematic.  It has the ordering issues you're thinking of, but it
> > > > also has unpleasant effects if one of the reads faults or if
> > > > SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
> > >
> > > Right, I was actually thinking of the trace/trap as being the race.
> > >
> > > > type of deeper inspection filter should just be a totally separate
> > > > layer.  Once the main seccomp logic decides that a filterable syscall
> > > > will be issued then, assuming that no -EFAULT happens, a totally
> > > > different program should get run with access to arguments.  And there
> > > > should be a way for the main program to know that the syscall nr in
> > > > question is filterable on the running kernel.
> > >
> > > Right -- this is how I designed the original prototype: it was
> > > effectively an LSM that was triggered by seccomp (since LSMs don't know
> > > anything about syscalls -- their hooks are more generalized). So seccomp
> > > would set a flag to make the LSM hook pay attention.
> > >
> > > Existing LSMs are system-owner defined, so really something like Landlock
> > > is needed for a process-owned LSM to be defined. But I worry that LSM
> > > hooks are still too "deep" in the kernel to have a process-oriented
> > > filter author who is not a kernel developer make any sense of the
> > > hooks. They're certainly oriented in a better position to gain the
> > > intent of a filter. For example, if a filter says "you can't open(2)
> > > /etc/foo", but it misses saying "you can't openat(2) /etc/foo", that's a
> > > dumb exposure. The LSM hooks are positioned to say "you can't manipulate
> > > /etc/foo through any means".
> > >
> > > So, I'm not entirely sure. It needs a clear design that chooses and
> > > justifies the appropriate "depth" of filtering. And FWIW, the two most
> > > frequent examples of argument parsing requests have been path-based
> > > checking and network address checking. So any prototype needs to handle
> > > these two cases sanely...
> > >
> >
> > But also clone() flag filtering, and new clone() proposals keep
> > wanting to add structs.  And filtering bpf().  /me runs.
>
> Yeah, I've mentioned clone3() in my initial mail. And it is not a
> proposal anymore it's in mainline since the 5.3 merge window. So the
> evil has been done. /me (sorry-not-sorry) ducks :)

/me throws something squishy

So I guess we want some way for a seccomp filter to see clone3() being
called and determine that it or a related filter will be invoked again
with the arguments read before clone3() actually does anything.  Doing
this with Landlock would involve poking quite a few places to add a
syscall, whereas my FILTERABLE thing would do it more simply.

These approaches aren't necessarily mutually exclusive.  Maybe some
flags could be passed to the main seccomp filter so that it could
determine things like:

- This syscall is FILTERABLE and (optionally) these args will be filtered.
- Landlock will be called for filesystem access and the following
hooks are enabled.

The idea is that we want the ability to make additional syscalls be
FILTERABLE and/or to add new seccompable LSM hooks in new kernels.

Doing this in a way that has an acceptably low risk of accidentally
opening security holes when LSM hooks change will require quite a bit
of care.
