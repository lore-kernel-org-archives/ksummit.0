Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84ABB9B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Sep 2016 17:43:10 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EE73A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Sep 2016 17:43:09 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Andrei Vagin <avagin@virtuozzo.com>
References: <20160903052014.GA4850@outlook.office365.com>
Date: Tue, 13 Sep 2016 12:29:35 -0500
In-Reply-To: <20160903052014.GA4850@outlook.office365.com> (Andrei Vagin's
	message of "Fri, 2 Sep 2016 22:20:15 -0700")
Message-ID: <87mvjbbtds.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Kirill Kolyshkin <kir@openvz.org>, Patrick McHardy <kaber@trash.net>,
	ksummit-discuss@lists.linuxfoundation.org, David Ahern <dsahern@gmail.com>
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


Andrei Vagin <avagin@virtuozzo.com> writes:

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
> With netlink socket, it is not possible to implement this access
> scheme.

A historical oversight, and unfortunately implementing it breaks
routing daemons.

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

I disagree.  It is not part of the networking subystem so netlink does
is very very unlikely to make sense.  In general netlink is an over
engineered solution outside of networking.

My overall impression is that network people get networking protocols
and so netlink makes a good fit for the network stack. On the other had
non-network people in general don't in general do well with networking
intefaces, so I do not recommend netlink for anything outside of the
network subsystem.

All of that is before you start getting into namespace details.

Now some of that is at least in part because of the volume of use the
interface is expected to get.  Low volume interfaces tend as a rule to
have more ``interesting'' corner cases.  Regardless of the subsystem.

Looking at your referenced task_diag interface I think netlink is
completely unsuitable because your interface does not follow the good
netlink pattern for binary attributes and binary data.  Possibly
a taskdiagfd() system call would make sense.  Or quite likely a pure
taskdiag() system call.

Things should be simplified to the point where the design is clear
easily understood and easily tested.  What you are really suggesting is
tossing out proc with the motiviation of checkpoint/restart.  Perhaps
that is fine.  There are certainly other avenues to consider there.

There are reasons proc is in text format and while useful it is not
fundamentally because text is human readable.  The reasons have to do
with maintainability of data structures.

I tend to think Andy's solution is also over engineered.  Either we have
a file descriptor in which case a ns argument is unnecessary or we have
or we have a raw syscall which immediately returns the information.
In which case an ns argument is very unnecessary.

So yes I would be interested in the conversation.  Although I think
there is some serious homework that needs to happen.

Eric


> A few months ago Andy Lutomirski suggested to rework the netlink
> interface in order to solve the known issues. We suggest discussing his
> idea:
>
> ----- snip --- snip --- snip -----
> (taken from http://lists.openwall.net/netdev/2016/05/05/51)
>
> The tl;dr is that Andrey wants to add an interface to ask a pidns some
> questions, and netlink looks natural, except that using netlink sockets
> to interrogate a pidns seems rather problematic. =C2=A0I would also love =
to
> see a decent interface for interrogating user namespaces, and again,
> netlink would be great, except that it's a socket and makes no sense in
> this context.
>
> Netlink had, and possibly still has, tons of serious security bugs
> involving code checking send() callers' creds. =C2=A0I found and fixed a =
few
> a couple years ago. =C2=A0To reiterate once again, send() CANNOT use call=
er
> creds safely. =C2=A0(I feel like I say this once every few weeks. It's
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
> int issue_kernel_command(int ns, int command, const struct iovec *iov, in=
t iovcnt, int flags);
>
> ns is an actual namespace fd or:
>
> KERNEL_COMMAND_CURRENT_NETNS
> KERNEL_COMMAND_CURRENT_PIDNS
> etc, or a special one:
> KERNEL_COMMAND_GLOBAL. =C2=A0KERNEL_COMMAND_GLOBAL can't be used in a
> non-root namespace.
>
> KERNEL_COMMAND_GLOBAL works even for namespaced things, if the
> relevant current ns is the init namespace. =C2=A0(This feature is optiona=
l,
> but it would allow gradually namespacing global things.)
>
> command is an enumerated command. =C2=A0Each command implies a namespace
> type, and, if you feed this thing the wrong namespace type, you get
> EINVAL. =C2=A0The high bit of command indicates whether it's read-only
> command.
>
> iov gives a command in the format expected, which, for the most part,
> would be a netlink message.
>
> The return value is an fd that you can call read/readv on to read the
> response. =C2=A0It's not a socket (or at least you can't do normal socket
> operations on it if it is a socket behind the scenes). =C2=A0The
> implementation of read() promises *not* to look at caller creds. =C2=A0The
> returned fd is unconditionally cloexec -- it's 2016 already. =C2=A0Sheesh.
>
> When you've read all the data, all you can do is close the fd. =C2=A0You
> can't issue another command on the same fd. =C2=A0You also can't call wri=
te()
> or send() on the fd unless someone has a good reason why you should be
> able to and why it's safe. =C2=A0You can't issue another command on the s=
ame
> fd.
>
> I imagine that the implementation could re-use a bunch of netlink code
> under the hood.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
