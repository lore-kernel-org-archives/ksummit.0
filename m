Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 287F7486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 17:17:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7F03D222
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 17:17:40 +0000 (UTC)
Message-ID: <1469207858.2382.42.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christian Borntraeger <borntraeger@de.ibm.com>, David Woodhouse
	<dwmw2@infradead.org>, David Howells <dhowells@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 22 Jul 2016 10:17:38 -0700
In-Reply-To: <57925242.3000207@de.ibm.com>
References: <15569.1469184060@warthog.procyon.org.uk>
	<5792414F.5040902@de.ibm.com>
	<1469203184.120686.212.camel@infradead.org>
	<57925242.3000207@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Compiler shopping list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2016-07-22 at 19:05 +0200, Christian Borntraeger wrote:
> On 07/22/2016 05:59 PM, David Woodhouse wrote:
> > On Fri, 2016-07-22 at 17:52 +0200, Christian Borntraeger wrote:
> > > On 07/22/2016 12:41 PM, David Howells wrote:
> > > > Are there additional things we can get the compiler to do for 
> > > > us?  Some things I've seen brought up:
> > > > 
> > > >  (1) Additional __atomic_*() ops could be useful.  Suggestions 
> > > > I've heard      include direct LL/SC support - though the 
> > > > compiler people don't seem so keen on that.
> > > > 
> > > >  (2) -mmodel=kernel flag so that the compiler can optimise 
> > > > better for the kernel memory model.
> > > 
> > > Some years ago (actually many) Linus proposed to have an 
> > > endianess attribute to data types, so that the compiler can do 
> > > the bswap automatically. For some reason this was never
> > > implemented, but this might be a good idea anyway.
> > > 
> > > e.g. 
> > > 
> > > unsigned long x[10] __attribute__(("bigendian"));
> > 
> > I'm not sure Linus proposed that. I certainly did, many times.
> 
> Yes, I know at least 3 people suggesting that and thinking this is 
> useful ( Can you beat Linus' 2001 
> https://gcc.gnu.org/ml/gcc/2001-12/msg00932.html? ;-) )

The fact that it's been discussed on and off for 15 years tends to
suggest that where we've ended up is about good enough for everyday and
no-one can really be bothered to take the extra effort.

So what's the overriding reason we should spend the extra effort now?

James
