Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 07F43927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:20:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9AF56201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:20:32 +0000 (UTC)
Message-ID: <1399051229.2202.49.camel@dabdike>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Jones <davej@redhat.com>
Date: Fri, 02 May 2014 10:20:29 -0700
In-Reply-To: <20140502171103.GA725@redhat.com>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-02 at 13:11 -0400, Dave Jones wrote:
> On Fri, May 02, 2014 at 09:44:42AM -0700, Josh Triplett wrote:
>  
>  > Topics:
>  > - Kconfig, and avoiding excessive configurability in the pursuit of tiny
>  > - Optimizing a kernel for its exact target userspace.
>  > - Examples of shrinking the kernel
> 
> Something that's partially related here: Making stuff optional
> reduces attack surface the kernel presents. We're starting to grow
> more and more CONFIG options to disable syscalls. I'd like to hear
> peoples reactions on introducing even more optionality in this area.

My first reaction is reducing the attack surface sounds a reasonable
idea.  My second reaction is that the plural in options makes me want to
run for the hills.  Having a sea of options for enabling and disabling
syscalls gives us the potential for having a set of kernels all with a
slightly differing ABI as people choose what to enable and disable.

If we do this, I think we should have a small number of options related
to use case ... say something like a secure router kernel
CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
need.

For the distros we could have an ordinary and a reduced attack surface
kernel CONFIG_REDUCED_ATTACK_SURFACE.

The thing I really want to avoid is binaries compiled for one distro not
running on another because of syscall differences.

> I first started thinking about this at LSF/MM where the subject of
> sys_remap_file_pages came up. "What even uses this?" "hardly anything".
> But for all the users that don't need it, there's this syscall always
> built in that does horrible things with VM internals.  It's fortunate
> that there hasn't been anything particularly awful beyond simple DoS
> bugs in r_f_p.
> 
> Distribution kernels are in the sad position of having to always enable
> this stuff, but at least for people building their own kernels, or
> kernels for appliances, we could make their lives a little better by
> not even building this stuff in.
> 
> I had a patch to make this particular syscall a cond_syscall, but then
> XFS ate my homework and I haven't had chance to revisit this.
> So, my questions are:
> - are there other obvious syscalls we could make optional without userspace
>   freaking out when they suddenly start getting ENOSYS ?
> - how much configurability here is too much ?

I covered this above.

>   r_f_p was an obvious candidate because it's.. well, nasty.  Some of the
>   more straightforward syscalls may not be such a big deal, but then we
>   have CONFIG's for kcmp and other 'simple' syscalls already..

Speaking with my Checkpoint/Restore/process migration container hat on,
we need kcmp.  It was designed with security in mind (originally we'd
exposed kernel virtual addresses).  Perhaps some of this hardening
should be focussed more sharply on what is this syscall trying to do and
could it achieve its aim in a more secure way.

James
