Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C5AD370A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:04:06 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 347831FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 22:04:06 +0000 (UTC)
Date: Sat, 3 May 2014 00:04:03 +0200
From: Jan Kara <jack@suse.cz>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140502220403.GE23636@quack.suse.cz>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140502171103.GA725@redhat.com>
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

On Fri 02-05-14 13:11:03, Dave Jones wrote:
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
> 
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
  So I always thought various security modules or audit are there exactly
to limit attack surface like this (now please pardon my ignorance if I'm
wrong because I know close to nothing about the security stuff). So in my
imagination I'd say you could ship even a distro with a default policy
where e.g. r_f_p would be prohibited and if you ever found an application
that needs it, you could create a separate policy for it (and in the ideal
case where the application is packaged by the distro the policy would come
with it). Am I dreaming too much?

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
