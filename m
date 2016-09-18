Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C5009C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 Sep 2016 20:31:54 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D156210
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 Sep 2016 20:31:53 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Andrei Vagin <avagin@virtuozzo.com>
References: <20160903052014.GA4850@outlook.office365.com>
	<87mvjbbtds.fsf@x220.int.ebiederm.org>
	<20160916055857.GA29753@outlook.office365.com>
Date: Sun, 18 Sep 2016 15:18:13 -0500
In-Reply-To: <20160916055857.GA29753@outlook.office365.com> (Andrei Vagin's
	message of "Thu, 15 Sep 2016 22:58:57 -0700")
Message-ID: <874m5dnere.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
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

> On Tue, Sep 13, 2016 at 12:29:35PM -0500, Eric W. Biederman wrote:
>> 
>> Andrei Vagin <avagin@virtuozzo.com> writes:
>> 
>> > The netlink interface proved itself as a great way to perform
>> > descriptor-based kernel/userspace communication. It is especially useful
>> > for cases involving a big amount of data to transfer. The netlink
>> > communication protocol is simple and elegant; it also allows to extend
>> > the message format without breaking backward compatibility.
>> >
>> > One big problem of netlink is credentials. When a user-space process is
>> > opening a new file descriptor, kernel saves the opener's credentials to
>> > f_cred field of the file struct. After that, every access to that fd are
>> > checked against the saved credentials. In essence, this allows for a
>> > process to open a file descriptor as root and then drop capabilities.
>> > With netlink socket, it is not possible to implement this access
>> > scheme.
>> 
>> A historical oversight, and unfortunately implementing it breaks
>> routing daemons.
>> 
>> > Currently netlink is widely used in the network subsystem, but there are
>> > also a few users outside of networking, such as audit and taskstats.
>> > Developers who used netlink for anything except the networking know
>> > there are some issues. For example, taskstats code has broken user and
>> > pid namespace support.
>> >
>> > Another potential user of netlink socket is task_diag, a faster
>> > /proc/PID-like interface proposed some time ago
>> > (https://lkml.org/lkml/2015/7/6/142). It makes sense to use the netlink
>> > interface for it, too, but the whole feature is currently blocked by the
>> > netlink discussion.
>> 
>> I disagree.  It is not part of the networking subystem so netlink does
>> is very very unlikely to make sense.  In general netlink is an over
>> engineered solution outside of networking.
>> 
>> My overall impression is that network people get networking protocols
>> and so netlink makes a good fit for the network stack. On the other had
>> non-network people in general don't in general do well with networking
>> intefaces, so I do not recommend netlink for anything outside of the
>> network subsystem.
>> 
>> All of that is before you start getting into namespace details.
>> 
>> Now some of that is at least in part because of the volume of use the
>> interface is expected to get.  Low volume interfaces tend as a rule to
>> have more ``interesting'' corner cases.  Regardless of the subsystem.
>> 
>> Looking at your referenced task_diag interface I think netlink is
>> completely unsuitable because your interface does not follow the good
>> netlink pattern for binary attributes and binary data.  Possibly
>> a taskdiagfd() system call would make sense.
>
> Eric, thank you for the feedback. Could you elaborate what do you mean
> when you say: "does not follow the good netlink pattern for binary
> attributes and binary data." Maybe you can give an example of bad
> patterns.

So.  The worst case for binary attributes and binary data that I know of
is demonstrated by the many many many variants of the stat system call.

In general when I hear binary interface with attributes what I hear is a
maintenance disaster, where when I hear ascii I hear something that is
built in a more maintainable fashion.

The routing netlink protocol handles this by very carefully making every
attribute returned contained in a tag and length, and perhaps I was
misread your code but I did not see that discipline in use.  One of the
good features of it is that rtnetlink can add attributes that were not
requested by the caller and everything continues to work, even though
there was not negotiation.

> There was an another version where a proc file is used instead of netlink
> sockets:
> https://lwn.net/Articles/683371/
> https://github.com/avagin/linux-task-diag/blob/devel/fs/proc/task_diag.c
>
> In this version, I don't use netlink sockets, but I use the netlink format
> for messages. The motivation here is to have expandable format for the
> future improvements.

Perhaps I misread how you are using the netlink format.  Your
description of needing to request additional attributes sounded like you
were not using such an expandable binary protocol.

>> Or quite likely a pure taskdiag() system call.
>
> The amount of data may be quite big to get them for one iteration, so I
> would prefer to have a file descriptor.
>
>> 
>> Things should be simplified to the point where the design is clear
>> easily understood and easily tested.  What you are really suggesting is
>> tossing out proc with the motiviation of checkpoint/restart.  Perhaps
>> that is fine.  There are certainly other avenues to consider there.
>
> I want to think that the motivation is to make a good and fast interface
> to use it from code. We already checked this interface in criu, perf and
> procps, in all cases we get significant performance improvements.

Depending it looks like it probably doubles the maintenance work in a
code base that does not always seem to have enough maintenance.

One idea for this kind of situation is to have a readfile or a readfiles
system call that is a cousin of readlink.  That for small files just
gives you the data in the file without the cost of creating a file
descriptor.  This idea can be extended to multiple files, and it could
have a readv like interface.

To some extent it matters where the cost is.

At a practical level we already have a binary protocol for getting a
list of all of the processes in the system, readdir on /proc.

Honestly if the code is well done and does not require too much
maintenance I don't care.  But I think we need to take a good hard look
at maintenance issues when adding a duplicate interface for what feels
like the same information.

Eric
