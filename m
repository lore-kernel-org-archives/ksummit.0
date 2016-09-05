Return-Path: <alexei.starovoitov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 38EF78F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 Sep 2016 19:30:38 +0000 (UTC)
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D54E224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 Sep 2016 19:30:35 +0000 (UTC)
Received: by mail-lf0-f65.google.com with SMTP id 29so3121337lfv.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 Sep 2016 12:30:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160903052014.GA4850@outlook.office365.com>
References: <20160903052014.GA4850@outlook.office365.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Mon, 5 Sep 2016 12:30:13 -0700
Message-ID: <CAADnVQKKCKNU-0B5gz_7WR-sQqApVub4yg+nRfpN92OiskxpYA@mail.gmail.com>
To: Andrei Vagin <avagin@virtuozzo.com>
Content-Type: text/plain; charset=UTF-8
Cc: Kirill Kolyshkin <kir@openvz.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Eric Dumazet <edumazet@google.com>, David Ahern <dsahern@gmail.com>,
	Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Netlink engine issues,
 and ways to fix those
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 2, 2016 at 10:20 PM, Andrei Vagin <avagin@virtuozzo.com> wrote:
> The netlink interface proved itself as a great way to perform
> descriptor-based kernel/userspace communication. It is especially useful
> for cases involving a big amount of data to transfer. The netlink
> communication protocol is simple and elegant; it also allows to extend
> the message format without breaking backward compatibility.
>
> One big problem of netlink is credentials. When a user-space process is
> opening a new file descriptor, kernel saves the opener's credentials to
> f_cred field of the file struct. After that, every access to that fd are
> checked against the saved credentials. In essence, this allows for a
> process to open a file descriptor as root and then drop capabilities.
> With netlink socket, it is not possible to implement this access scheme.
>
> Currently netlink is widely used in the network subsystem, but there are
> also a few users outside of networking, such as audit and taskstats.
> Developers who used netlink for anything except the networking know
> there are some issues. For example, taskstats code has broken user and
> pid namespace support.
>
> Another potential user of netlink socket is task_diag, a faster
> /proc/PID-like interface proposed some time ago
> (https://lkml.org/lkml/2015/7/6/142). It makes sense to use the netlink
> interface for it, too, but the whole feature is currently blocked by the
> netlink discussion.
>
> A few months ago Andy Lutomirski suggested to rework the netlink
> interface in order to solve the known issues. We suggest discussing his
> idea:
>
> ----- snip --- snip --- snip -----
> (taken from http://lists.openwall.net/netdev/2016/05/05/51)
>
> The tl;dr is that Andrey wants to add an interface to ask a pidns some
> questions, and netlink looks natural, except that using netlink sockets
> to interrogate a pidns seems rather problematic.  I would also love to
> see a decent interface for interrogating user namespaces, and again,
> netlink would be great, except that it's a socket and makes no sense in
> this context.
>
> Netlink had, and possibly still has, tons of serious security bugs
> involving code checking send() callers' creds.  I found and fixed a few
> a couple years ago.  To reiterate once again, send() CANNOT use caller
> creds safely.  (I feel like I say this once every few weeks. It's
> getting old.)
>
> I realize that it's convenient to use a socket as a context to keep
> state between syscalls, but it has some annoying side effects:
>
>  - It makes people want to rely on send()'s caller's creds.
>  - It's miserable in combination with seccomp.
>  - It doesn't play nicely with namespaces.
>  - It makes me wonder why things like task_diag, which have nothing
>    to do with networking, seem to get tangled up with networking.
>
>
> Would it be worth considering adding a parallel interface, using it for
> new things, and slowly migrating old use cases over?
>
> int issue_kernel_command(int ns, int command, const struct iovec *iov, int iovcnt, int flags);
>
> ns is an actual namespace fd or:
>
> KERNEL_COMMAND_CURRENT_NETNS
> KERNEL_COMMAND_CURRENT_PIDNS
> etc, or a special one:
> KERNEL_COMMAND_GLOBAL.  KERNEL_COMMAND_GLOBAL can't be used in a
> non-root namespace.
>
> KERNEL_COMMAND_GLOBAL works even for namespaced things, if the
> relevant current ns is the init namespace.  (This feature is optional,
> but it would allow gradually namespacing global things.)
>
> command is an enumerated command.  Each command implies a namespace
> type, and, if you feed this thing the wrong namespace type, you get
> EINVAL.  The high bit of command indicates whether it's read-only
> command.
>
> iov gives a command in the format expected, which, for the most part,
> would be a netlink message.
>
> The return value is an fd that you can call read/readv on to read the
> response.  It's not a socket (or at least you can't do normal socket
> operations on it if it is a socket behind the scenes).  The
> implementation of read() promises *not* to look at caller creds.  The
> returned fd is unconditionally cloexec -- it's 2016 already.  Sheesh.
>
> When you've read all the data, all you can do is close the fd.  You
> can't issue another command on the same fd.  You also can't call write()
> or send() on the fd unless someone has a good reason why you should be
> able to and why it's safe.  You can't issue another command on the same
> fd.
>
> I imagine that the implementation could re-use a bunch of netlink code
> under the hood.

I'm very interested in this discussion.
Adding few folks as well.
