Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 814FF99D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:15:22 +0000 (UTC)
Received: from blackbird.sr71.net (www.sr71.net [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 461B620394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:15:22 +0000 (UTC)
Message-ID: <53710D95.6080900@sr71.net>
Date: Mon, 12 May 2014 11:06:13 -0700
From: Dave Hansen <dave@sr71.net>
MIME-Version: 1.0
To: Christoph Lameter <cl@linux.com>,
 Steven Rostedt <rostedt@goodmis.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
In-Reply-To: <alpine.DEB.2.10.1405091150410.11810@gentwo.org>
Content-Type: text/plain; charset=ISO-8859-1
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

On 05/09/2014 09:55 AM, Christoph Lameter wrote:
> On Fri, 9 May 2014, Steven Rostedt wrote:
>>> > > One improvement would be to sort the functions by functionality. All the
>>> > > important functions in the first 2M of the code covered by one huge tlb
>>> > > f.e.
>> >
>> > I thought pretty much all of kernel core memory is mapped in by huge
>> > tlbs? At least for kernel core code (not modules), the size should not
>> > impact tlbs.
> Yes, but processor only support a limited amount of 2m tlbs and
> applications also want to use them. A large 100M sized kernel would
> require 50 tlbs and cause tlb trashing if functions are accessed over all
> the code.

Is this taking in to account that second-level TLB on Haswell can now
hold 2M entries?  That should pretty drastically change the landscape here.

> Loadable modules are using vmalloc areas that use 4k pages which
> is another issue.

Isn't this just another case where we need to try kmalloc() and fall
back to vmalloc() when it fails?  Most modules are loaded way before we
see any kind of possibility of memory fragmentation so I'd expect that
to be pretty successful in the common case.
