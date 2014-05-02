Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EC98E9F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:44:30 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6B8D11FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 17:44:30 +0000 (UTC)
Date: Fri, 2 May 2014 13:44:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140502134427.7d3ba25e@gandalf.local.home>
In-Reply-To: <1399051229.2202.49.camel@dabdike>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<20140502171103.GA725@redhat.com>
	<1399051229.2202.49.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 02 May 2014 10:20:29 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> If we do this, I think we should have a small number of options related
> to use case ... say something like a secure router kernel
> CONFIG_SECURE_ROUTER which disables anything a secure router wouldn't
> need.

I was thinking the same thing.

> 
> For the distros we could have an ordinary and a reduced attack surface
> kernel CONFIG_REDUCED_ATTACK_SURFACE.

Ug, that's a horrible name. Not selecting it would imply we want to
increase the attack surface.

> 
> The thing I really want to avoid is binaries compiled for one distro not
> running on another because of syscall differences.

Agreed.


Your first config option name looks more the way we want to go. Didn't
Linus once ask for config profiles? That is, we could say
CONFIG_FIREWALL, and everything for a firewall would be set. Or
CONFIG_LAPTOP, which would focus on everything for a laptop, etc.

What ever happened to that? The kbuild environment too scary for
everyone?

I wounder if we should seek out people to rewrite it. Or at least
document how the entire thing works. Every time I have to look at that
code I get the willies.


-- Steve
