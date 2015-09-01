Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA57F133B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 16:53:00 +0000 (UTC)
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65BC8261
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 16:53:00 +0000 (UTC)
Received: by ioii196 with SMTP id i196so8139813ioi.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 01 Sep 2015 09:52:59 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LNX.2.00.1509011058150.30132@pobox.suse.cz>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
	<87h9nf9nv5.fsf@x220.int.ebiederm.org>
	<alpine.LNX.2.00.1509011058150.30132@pobox.suse.cz>
Date: Tue, 1 Sep 2015 09:52:59 -0700
Message-ID: <CAGXu5jJNHcMrCmeHZiy4J-Q5MAdMf5tLD06yXJ4_rFJ3riS8eg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Sep 1, 2015 at 2:03 AM, Jiri Kosina <jikos@kernel.org> wrote:
> On Mon, 31 Aug 2015, Eric W. Biederman wrote:
>
>> At the same time I think we to serious consider tossing attempts that
>> fails to close a class of exploits.
>>
>> The kernel address space randomization on x86_64 I find disturbing.  We
>> have a 2GB address space for kernel code.  We have pages that are 2MB in
>> that address space.  So we only have 10 bits that can change.  Only 9
>> bits that can change if the kernel needs more than one 2MB page.  Which
>> means that at most we need to brute force 1024 things to exploit any
>> weakness.
>
> I understand what you are saying. OTOH, assuming that kernel doesn't leak
> addressess when restrict_kptr is set, it's rather likely that bruteforcing
> attempt to exploit the kernel is going to crash it instead of privilege
> escalation happenin (because the address wouldn't match, and either the
> kernel will #GP directly, or do some totally random garbage and crash
> shortly afterwards).
>
> It's still *pretty* bad, but arguably better than being silently
> compromised without anyone noticing.

This reminds me: we must assume all users on a system (and all devices
being attached) have access to a write-anywhere primitive (since they
DO -- we just haven't found them all yet, and we never will), what can
we do to close the windows of exploitability? (e.g. making memory
read-only, adding CFI to defend against ROP via the stack, etc?)

-Kees

-- 
Kees Cook
Chrome OS Security
