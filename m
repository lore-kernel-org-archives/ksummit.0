Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 19637DA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:04 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7D1D8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:03 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44EB220651
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 17:55:03 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id j16so9666661wrr.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Aug 2019 10:55:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
	<201907192007.B43158B@keescook>
In-Reply-To: <201907192007.B43158B@keescook>
From: Andy Lutomirski <luto@kernel.org>
Date: Wed, 14 Aug 2019 10:54:49 -0700
Message-ID: <CALCETrXWWS-8t5udg593CoWP330L=W94xsvB_skL-oL2tUFH+g@mail.gmail.com>
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

On Fri, Jul 19, 2019 at 8:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Jul 19, 2019 at 05:32:59AM -0700, Andy Lutomirski wrote:
> > On Fri, Jul 19, 2019 at 2:35 AM Christian Brauner <christian@brauner.io> wrote:
> > >
> > > In light of all this, I would argue that we should seriously look into
> > > extending seccomp to allow filtering on pointer arguments.
>
> I would be all for this. :) I've struggled for a long while trying to
> find a sane design for this.
>
> > I won't be at LPC this year, but I was thinking about this anyway.  I
> > have the following suggestion that might be a bit unorthodox: have
> > syscalls opt into this filtering.  Specifically, a syscall that
> > supports pointer filtering would be refactored the way a bunch of our
> > syscalls are already refactored.  The baseline situation is:
> >
> > SYSCALL_DEFINE1(syscallname, struct foo __user *, buf) { ... }
> >
> > Instead, we would do:
> >
> > SYSCALL_FILTERABLE(syscallname, struct foo __user *, buf)
> > {
> >   int ret;
> >   struct foo kbuf;
> >   ret = copy_from_user(&kbuf, buf, sizeof(buf));
> >   if (ret)
> >     return ret;
> >
> >   ret = seccomp_deep_filter(syscallname, 0, &kbuf);
> >   if (ret)
> >     return ret;
> >
> >   return do_syscallname(&kbuf);
> > }
> >
> > In principle, if we know we're doing a FILTERABLE syscall, we could
> > skip the initial seccomp invocation and just defer it until
> > seccomp_deep_filter(), although this might interact badly with any
> > SECCOMP_RET_PTRACE handles that change nr.
>
> I don't like splitting the logic on seccomp invocation (we end up needing
> to solve ordering issues maybe again), but I do like this explicit
> opt-in feature. How you have it does make the "where do we store a cached
> copy?" problem go away, too.

After thinking about this a bit more, I think that deferring the main
seccomp filter invocation until arguments have been read is too
problematic.  It has the ordering issues you're thinking of, but it
also has unpleasant effects if one of the reads faults or if
SECCOMP_RET_TRACE or SECCOMP_RET_TRAP is used.  I'm thinking that this
type of deeper inspection filter should just be a totally separate
layer.  Once the main seccomp logic decides that a filterable syscall
will be issued then, assuming that no -EFAULT happens, a totally
different program should get run with access to arguments.  And there
should be a way for the main program to know that the syscall nr in
question is filterable on the running kernel.

Does that make sense?
