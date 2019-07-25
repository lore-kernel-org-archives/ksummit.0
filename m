Return-Path: <serge@mail.hallyn.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 895A2DA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 14:18:52 +0000 (UTC)
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C61597F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 14:18:51 +0000 (UTC)
Date: Thu, 25 Jul 2019 09:18:49 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Christian Brauner <christian@brauner.io>
Message-ID: <20190725141849.GB24945@mail.hallyn.com>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<alpine.LRH.2.21.1907201715420.26406@namei.org>
	<E90059DC-B0EA-4519-99E5-CD9DD600B4D0@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E90059DC-B0EA-4519-99E5-CD9DD600B4D0@brauner.io>
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

On Sat, Jul 20, 2019 at 09:41:11AM +0200, Christian Brauner wrote:
> On July 20, 2019 9:23:33 AM GMT+02:00, James Morris <jmorris@namei.org> wrote:
> >On Fri, 19 Jul 2019, Christian Brauner wrote:
> >
> >> There is a close connection between 1. and 2. When a watcher
> >intercepts
> >> a syscall from a watchee and starts to inspect its arguments it can -
> >> depending on the syscall rather often actually - determine whether or
> >> not the syscall would succeed or fail. If it knows that the syscall
> >will
> >> succeed it currently still has to perform it in lieu of the watchee
> >> since there is no way to tell the kernel to "resume" or actually
> >perform
> >> the syscall. It would be nice if we could discuss approaches to
> >enabling
> >> this feature as well.
> >
> >Landlock is exploring userspace access control via the seccomp 
> >syscall with ebpf, but from within the same process:
> >
> >https://landlock.io/
> >
> >It may be worth investigating whether Landlock could be extended to a 
> >split watcher/watchee model.
> 
> Certainly a valid point but...
> I don't want to rely on landlock for this.
> First, no one knows if and when it will ever land.
> Second, seccomp is the go-to sandboxing solution for a lot of userspace already.
> Often used without a full LSM.
> Third, syscall interception to me is seccomp territory. :)
> That's to say I'd like seccomp to have this feature *natively* and ideally not tied to
> a complete LSM that needs to be merged for this. :)

Sounds all the more like discussion is warranted :)
