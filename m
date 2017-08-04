Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4AE3AA49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 05:13:27 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 28BD2CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 05:13:25 +0000 (UTC)
Date: Fri, 4 Aug 2017 07:13:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Stephen Rothwell <sfr@canb.auug.org.au>
In-Reply-To: <20170804132704.73c49b64@canb.auug.org.au>
Message-ID: <alpine.DEB.2.20.1708040705240.1994@hadrien>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<20170804132704.73c49b64@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Andy Lutomirski <luto@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 4 Aug 2017, Stephen Rothwell wrote:

> Hi Ted,
>
> On Thu, 3 Aug 2017 22:26:39 -0400 Theodore Ts'o <tytso@mit.edu> wrote:
> >
> > One way that we could try to make things better is by having some kind
> > of semi-automated system which monitors changes in include/uapi/*.h in
> > linux-next.  Unfortunately there will be a lot of false negatives, so
> > it's going to require a human to figure out which of the changes
> > represent new/changed API's, and which are just cleanups /
> > rearragements.  (We could try to see if we could train a Machine
> > Learning model --- but even if we can make a some nueral nets play Go,
> > I'm personally dubious this is something that ML would be successful
> > at.  I might be pleasantly surprised, though, if someone wanted to
> > give it a try.  :-)
>
> OK, so this is what we have so far in linux-next:

I did some work on a semantic patch for collecting the error codes
returned by all of the system class.  Things were going fairly well until
I discovered that is fairly common near the user level to return error
codes in reference parameters rather than by direct returns, and that
meant that I was going to have to duplicate my entire rule set.  I also
observed that the documentation is not always that precise.  It will say
typically returns -E1, -E2, -E3, and may return other stuff, so in that
case there is less to check.

I was thinking of getting an intern to address the first problem, and then
to check the results to the extent that they are checkable.  One could
also run the rules over time, to see if there have been changes, to see
even in the other stuff case if something should be added.

julia

>
> $ git log --no-merges --pretty="%h %s" stable..next-20170803 include/uapi
> 9aa302aaede8 membarrier: Expedited private command
> b3a88f222ae1 drm/msm: Add a parameter query for the number of ringbuffers
> 7f1779fd071b drm/msm: Implement per-submitqueue fences
> 20ab08455d3c drm/msm: Add per-instance submit queues
> 80fe969b5d50 uapi: fix linux/sysctl.h userspace compilation errors
> 4edc19eeeee3 mm: userfaultfd: add feature to request for a signal delivery
> 0d33bdf5ea6c mm: shm: use new hugetlb size encoding definitions
> b217edddf5c2 mm: arch: consolidate mmap hugetlb size encodings
> 21d75dd8e83d mm: hugetlb: define system call hugetlb size encodings in single file
> cdbc78ba7026 drm/msm: Remove __user from __u64 data types
> db1689aa61bd drm: Create a format/modifier blob
> e6fc3b68558e drm: Plumb modifiers through plane init
> bb7c19f96012 tcp: add related fields into SCM_TIMESTAMPING_OPT_STATS
> 3282e65558b3 tcp: remove unused mib counters
> 615095752100 netfilter: nf_tables: Allow object names of up to 255 chars
> 387454901bd6 netfilter: nf_tables: Allow set names of up to 255 chars
> b7263e071aba netfilter: nf_tables: Allow chain name of up to 255 chars
> e46abbcc05aa netfilter: nf_tables: Allow table names of up to 255 chars
> e62e484df049 net sched actions: add time filter for action dumping
> 90825b23a887 net sched actions: dump more than TCA_ACT_MAX_PRIO actions per batch
> 64c83d837329 net netlink: Add new type NLA_BITFIELD32
> 1a5f3da20bd9 net: ethtool: add support for forward error correction modes
> ca1136c99b66 blktrace: export cgroup info in trace
> f30994622b2b drm/vc4: Add an ioctl for labeling GEM BOs for summary stats
> 67cbe3532c2c RDMA/qedr: notify user application of supported WIDs
> ad84dad2160d RDMA/qedr: notify user application if DPM is supported
> cc731525f26a signal: Remove kernel interal si_code magic
> d08477aa975e fcntl: Don't use ambiguous SIG_POLL si_codes
> 3078f5f1bd8b IB/mlx4: Add support for RSS QP
> b8d46ca03506 IB/mlx4: Add support for WQ indirection table related verbs
> 400b1ebcfe31 IB/mlx4: Add support for WQ related verbs
> ea30b966f7dd IB/mlx4: Add inline-receive support
> 2dee0e545894 IB/uverbs: Enable QP creation with a given source QP number
> 784b4e612d42 netfilter: nf_tables: Attach process info to NFT_MSG_NEWGEN notifications
> ddc6c70f07bb rxrpc: Move the packet.h include file into net/rxrpc/
> 727f8914477e rxrpc: Expose UAPI definitions to userspace
> eb0baf8a0d92 perf/core: Define the common branch type classification
> 6b2bbb08747a media: cec: rework the cec event handling
> 6303d97873d3 media: linux/cec.h: add pin monitoring API support
> fc60a8b675bd tty: serial: owl: Implement console driver
> 97f91a7cf04f bpf: add bpf_redirect_map helper routine
> 546ac1ffb70d bpf: add devmap, a map for storing net device references
> 814abfabef3c xdp: add bpf_redirect helper function
> 66bf97967726 annotate RWF_... flags
> 6545135a5ed2 drm/qxl: fix __user annotations
>
> Some of these are just fixing bugs or moving things around.  I wonder
> where we can go from here?  Does every change to a uapi file need a
> corresponding documentation and man pages update?  Do we dare try doing
> (shock! horror!) design before implementation?  ;-)
>
> The, of course, there is the whole sysfs and tracing mess :-(
> --
> Cheers,
> Stephen Rothwell
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
