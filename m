Return-Path: <dh.herrmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 00B51413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:24:08 +0000 (UTC)
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8F5810A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:24:06 +0000 (UTC)
Received: by mail-lf0-f46.google.com with SMTP id l69so59135432lfg.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 15:24:06 -0700 (PDT)
MIME-Version: 1.0
From: David Herrmann <dh.herrmann@gmail.com>
Date: Fri, 29 Jul 2016 00:24:03 +0200
Message-ID: <CANq1E4QvX6RMeapc8ZBRvg6UFdwCEbQMhgH=DqM6UZMkF3+T1g@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] [TECH TOPIC] Bus IPC
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Tom Gundersen and I would like to propose a technical session on
in-kernel IPC systems. For roughly half a year now we have been
developing (with others) a capability-based [1] IPC system for linux,
called bus1 [2]. We would like to present bus1, start a discussion on
open problems, and talk about the possible path forward for an upstream
inclusion.

While bus1 emerged out of the kdbus project, it is a new, independent
project, designed from scratch. Its main goal is to implement an n-to-n
communication bus on linux. A lot of inspiration is taken from both
DBus, as well as the the most commonly used IPC systems of other OSs,
and related research projects (including Android Binder, OS-X/Hurd Mach
IPC, Solaris Doors, Microsoft Midori IPC, seL4, Sandstorm's Cap'n'Proto,
..).

The bus1 IPC system was designed to...

 o be a machine-local IPC system. It is a fast communication channel
   between local threads and processes, independent of the marshaling
   format used.

 o provide secure, reliable capability-based [1] communication. A
   message is always invoked on a capability, requiring the caller to
   own said capability, otherwise it cannot perform that operation.

 o efficiently support n-to-n communication. Every peer can communicate
   with every other peer (given the right capabilities), with minimal
   overhead for state-tracking.

 o be well-suited for both unicast and multicast messages.

 o guarantee a global message order [3], allowing clients to rely on
   causal ordering between messages they send and receive (for further
   reading, see Leslie Lamport's work on distributed systems [4]).

 o scale with the number of CPUs available. There is no global context
   specific to the bus1 IPC, but all communication happens based on
   local context only. That is, if two independent peers never talk to
   each other, their operations never share any memory (no shared
   locks, no shared state, etc.).

 o avoid any in-kernel buffering and rather transfer data directly
   from a sender into the receiver's mappable queue (single-copy).

A user-space implementation of bus1 (or even any bus-based IPC) was
considered, but was found to have several seemingly unavoidable issues.

 o To guarantee reliable, global message ordering including multicasts,
   as well as to provide reliable capabilities, a bus-broker is
   required. In other words, the current linux syscall API is not
   sufficient to implement the design as described above in an efficient
   way without a dedicated, trusted, privileged process that manages the
   bus and routes messages between the peers.

 o Whenever a bus-broker is involved, any message transaction between
   two clients requires the broker process to execute code in its own
   time-slice. While this time-slice can be distributed fairly across
   clients, it is ultimately always accounted on the user of the broker,
   rather than the originating user. Kernel time-slice accounting, and
   the accounting in the broker are completely separated and cannot make
   decisions based on the data of each other.
   Furthermore, the broker needs to be run with quite excessive resource
   limits and execution rights to be able to serve requests of high
   priority peers, making the same resources available to low priority
   peers as well.
   An in-kernel IPC mechanism removes the requirement for such a highly
   privileged bus-broker, and rather accounts any operation and resource
   exactly on the calling user, cgroup, and process.

 o Bus ipc often involves peers requesting services from other trusted
   peers, and waiting for a possible result before continuing. If
   said trust relationship is given, privileged processes actively want
   priority inheritance when calling into less privileged, but trusted
   processes. There is currently no known way to implement this in a
   user-space broker without requiring n^2 PI-futex pairs.

 o A userspace broker would entail two UDS transactions and potentially
   an extra context-switch, compared to a single bus1 transaction with
   the in-kernel broker. Our x86-benchmarks (before any serious
   optimization work has started) shows that two UDS transactions are
   always slower than one bus1 transaction. On top of that comes the
   extra context switch, which has about the same cost as a full bus1
   transaction, as well as any time spent in the broker itself. With an
   imaginary no-overhead broker, we found an in-kernel broker to be >40%
   faster. The numbers will differ between machines, but the reduced
   latency is undeniable.

 o Accounting of inflight resources (e.g., file-descriptors) in a broker
   is completely broken. Right now, any outgoing message of a broker
   will account FDs on the broker, however, there is no way for the
   broker to track outgoing FDs. As such, it cannot attribute them on
   the original sender of the FD, opening up for DoS attacks.

 o LSMs and audit cannot hook into the broker, nor get any additional
   routing information. Thus, audit cannot log proper information, and
   LSMs need to hook into a user-space process, relying on them to
   implement the wanted security model.

 o The kernel itself can never operate on the bus, nor provide services
   seamlessly to user-space (e.g., like netlink does), unless it is
   implemented in the kernel.

 o If a broker is involved, no communication can be ordered against
   side-channels. A kernel implementation, on the other hand, provides
   strong ordering against any other event happening on the system.

The implemention of bus1.ko with its <5k LOC is relatively small, but
still takes a considerable amount of time to review and understand. We
would like to use the kernel-summit as an opportunity to present bus1,
and answer questions on its design, implementation, and use of other
kernel subsystems. We encourage everyone to look into the sources, but
we still believe that a personal discussion up-front would save everyone
a lot of time and energy. Furthermore, it would also allow us to
collectively solve remaining issues.

Everyone interested in IPC is invited to the discussion. In particular,
we would welcome everyone who participated in the Binder and kdbus
discussions, is involed in shmem+memcg (or other bus1-related
subsystems), possibly including:

 o Andy Lutomirski
 o Greg Kroah-Hartman
 o Steven Rostedt
 o Eric W. Biederman
 o Jiri Kosina
 o Borislav Petkov
 o Michal Hocko (memcg)
 o Johannes Weiner (memcg)
 o Hugh Dickins (shmem)
 o Tom Gundersen (bus1)
 o David Herrmann (bus1)

Thanks!
    Tom, David

[1] https://en.wikipedia.org/wiki/Capability-based_security
[2] http://www.bus1.org
[3] https://github.com/bus1/bus1/wiki/Message-ordering
[4] http://amturing.acm.org/p558-lamport.pdf
