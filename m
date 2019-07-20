Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D06691A9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:23:40 +0000 (UTC)
Received: from namei.org (namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80679E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:23:39 +0000 (UTC)
Date: Sat, 20 Jul 2019 17:23:33 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Christian Brauner <christian@brauner.io>
In-Reply-To: <20190719093538.dhyopljyr5ns33qx@brauner.io>
Message-ID: <alpine.LRH.2.21.1907201715420.26406@namei.org>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: mic@digikod.net, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 19 Jul 2019, Christian Brauner wrote:

> There is a close connection between 1. and 2. When a watcher intercepts
> a syscall from a watchee and starts to inspect its arguments it can -
> depending on the syscall rather often actually - determine whether or
> not the syscall would succeed or fail. If it knows that the syscall will
> succeed it currently still has to perform it in lieu of the watchee
> since there is no way to tell the kernel to "resume" or actually perform
> the syscall. It would be nice if we could discuss approaches to enabling
> this feature as well.

Landlock is exploring userspace access control via the seccomp 
syscall with ebpf, but from within the same process:

https://landlock.io/

It may be worth investigating whether Landlock could be extended to a 
split watcher/watchee model.


-- 
James Morris
<jmorris@namei.org>
