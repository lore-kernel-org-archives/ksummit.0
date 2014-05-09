Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 29D56A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:31:55 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 81A5020242
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:31:54 +0000 (UTC)
Date: Fri, 9 May 2014 16:31:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20140509163150.04840a1b@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.02.1405092100290.2019@localhost6.localdomain6>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
	<1399657343.2166.61.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405091251130.13438@gentwo.org>
	<20140509143247.56c2a924@gandalf.local.home>
	<alpine.DEB.2.02.1405092100290.2019@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Darren Hart <darren@dvhart.com>, Christoph Lameter <cl@linux.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, 9 May 2014 21:02:26 +0200 (CEST)
Julia Lawall <julia.lawall@lip6.fr> wrote:
 
> Which kinds of functions are being discussed?  For example, similar 
> drivers may use similar functions, but if one has only one instance of a 
> driver that has a particular functionality, only one of those functions 
> may ever be executed.  Is there only a benefit if similar functions are 
> all executed frequently in practice?

I wasn't thinking about drivers, but more core kernel code, like the
scheduler or system call interface. Things that do have similar designs
and are called frequently.

-- Steve
