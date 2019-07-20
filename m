Return-Path: <christian@brauner.io>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D3A8137D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:41:20 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01A3CE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:41:18 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id e20so32884297iob.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 00:41:18 -0700 (PDT)
Date: Sat, 20 Jul 2019 09:41:11 +0200
In-Reply-To: <alpine.LRH.2.21.1907201715420.26406@namei.org>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<alpine.LRH.2.21.1907201715420.26406@namei.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: James Morris <jmorris@namei.org>
From: Christian Brauner <christian@brauner.io>
Message-ID: <E90059DC-B0EA-4519-99E5-CD9DD600B4D0@brauner.io>
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

On July 20, 2019 9:23:33 AM GMT+02:00, James Morris <jmorris@namei=2Eorg> w=
rote:
>On Fri, 19 Jul 2019, Christian Brauner wrote:
>
>> There is a close connection between 1=2E and 2=2E When a watcher
>intercepts
>> a syscall from a watchee and starts to inspect its arguments it can -
>> depending on the syscall rather often actually - determine whether or
>> not the syscall would succeed or fail=2E If it knows that the syscall
>will
>> succeed it currently still has to perform it in lieu of the watchee
>> since there is no way to tell the kernel to "resume" or actually
>perform
>> the syscall=2E It would be nice if we could discuss approaches to
>enabling
>> this feature as well=2E
>
>Landlock is exploring userspace access control via the seccomp=20
>syscall with ebpf, but from within the same process:
>
>https://landlock=2Eio/
>
>It may be worth investigating whether Landlock could be extended to a=20
>split watcher/watchee model=2E

Certainly a valid point but=2E=2E=2E
I don't want to rely on landlock for this=2E
First, no one knows if and when it will ever land=2E
Second, seccomp is the go-to sandboxing solution for a lot of userspace al=
ready=2E
Often used without a full LSM=2E
Third, syscall interception to me is seccomp territory=2E :)
That's to say I'd like seccomp to have this feature *natively* and ideally=
 not tied to
a complete LSM that needs to be merged for this=2E :)

Christian
