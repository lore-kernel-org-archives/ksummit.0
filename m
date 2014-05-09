Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 01D99979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:32:51 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 89C372032B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:32:50 +0000 (UTC)
Date: Fri, 9 May 2014 14:32:47 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20140509143247.56c2a924@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.10.1405091251130.13438@gentwo.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
	<1399657343.2166.61.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405091251130.13438@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
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

On Fri, 9 May 2014 12:52:00 -0500 (CDT)
Christoph Lameter <cl@linux.com> wrote:

> On Fri, 9 May 2014, James Bottomley wrote:
> 
> > > Global optimization may allow the folding of small functions into a larger
> > > one when advantageous (which is not simple to determine).
> >
> > It's possible, but complex ... I'd really like to see proof that it
> > helps before thinking about it.
> 
> The proof may mean that one will have to do the work.

Hello Chicken, meet Egg!


This is what proof of concepts are for.

-- Steve
