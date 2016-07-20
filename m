Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C2B8902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 22:55:04 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C594C149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 22:55:03 +0000 (UTC)
Date: Wed, 20 Jul 2016 15:54:57 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160720225457.GA1167@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
	<02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 19, 2016 at 09:02:17AM +0200, Hannes Reinecke wrote:
> On 07/19/2016 08:49 AM, Josh Triplett wrote:
> > On Tue, Jul 19, 2016 at 08:17:19AM +0200, Hannes Reinecke wrote:
> >> Yes. The main problem stems from the fact that printk has two different
> >> and conflicting use-cases:
> >> - Really urgent, 'I am about to die' messages. Which obviously need to
> >>   be printed out as fast as possible.
> >> - Rather largish, information/logging 'what I always wanted to tell you'
> >>   type of messages. These messages tend to be very large, but at the end
> >>   it doesn't really matter _when_ they'll be printed as they are
> >>   time-stamped anyway.
> >>
> >> For the first use-case you absolutely need a synchronous printk, but
> >> this is a complete killer for the second case.
> >> And OTOH having a separate thread is really the way to go for the second
> >> case, but an absolute no-go for the first.
> >>
> >> So I really wonder if it does make sense to lump both use-cases into one
> >> call, or whether it wouldn't be better to have two distinct calls
> >> for that (or, for the sake of argument, use KERN_EMERG to trigger
> >> synchronous printks).
> > 
> > For the sake of argument: what about using loglevel to distinguish the
> > two cases by default?
> > 
> That's what I've tried to infer by the above statement; KERN_EMERG could
> easily used for that sort of thing.

I don't mean using just the priority level of the printk call.  I mean
using the current kernel loglevel, as in what level it displays to the
console, as set on the kernel command line with the loglevel= parameter.
printk could quickly check the priority level of the call versus the
current kernel loglevel to determine if the message would go to the
console or not, and use that to decide whether to handle it
synchronously or asynchronously.

- Josh Triplett
