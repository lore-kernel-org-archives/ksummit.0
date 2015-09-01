Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C5171535
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 09:03:12 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 209B5167
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 09:03:12 +0000 (UTC)
Date: Tue, 1 Sep 2015 11:03:09 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
In-Reply-To: <87h9nf9nv5.fsf@x220.int.ebiederm.org>
Message-ID: <alpine.LNX.2.00.1509011058150.30132@pobox.suse.cz>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
	<87h9nf9nv5.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 31 Aug 2015, Eric W. Biederman wrote:

> At the same time I think we to serious consider tossing attempts that
> fails to close a class of exploits.
> 
> The kernel address space randomization on x86_64 I find disturbing.  We
> have a 2GB address space for kernel code.  We have pages that are 2MB in
> that address space.  So we only have 10 bits that can change.  Only 9
> bits that can change if the kernel needs more than one 2MB page.  Which
> means that at most we need to brute force 1024 things to exploit any
> weakness.

I understand what you are saying. OTOH, assuming that kernel doesn't leak 
addressess when restrict_kptr is set, it's rather likely that bruteforcing 
attempt to exploit the kernel is going to crash it instead of privilege 
escalation happenin (because the address wouldn't match, and either the 
kernel will #GP directly, or do some totally random garbage and crash 
shortly afterwards).

It's still *pretty* bad, but arguably better than being silently 
compromised without anyone noticing.

> I don't see that attempt at kernel self protection actually 
> accomplishing anything in the way of protection, and I do see it costing 
> us debuggability which impacts kernel maintenance.  

When kaslr appeared, my first reaction also was "this will be disaster for 
debugability and post-mortem crashdump analysis", but it turns out to work 
out pretty well.

What particular concerncs do you have in this respect?

-- 
Jiri Kosina
SUSE Labs
