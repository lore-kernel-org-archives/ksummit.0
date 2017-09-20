Return-Path: <SRS0=LIaE=AV=goodmis.org=rostedt@kernel.org>
Date: Wed, 20 Sep 2017 11:13:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Josef Bacik <josef@toxicpanda.com>
Message-ID: <20170920111306.1a74f2ec@gandalf.local.home>
In-Reply-To: <20170920150404.2x63t3bd4pkusoa3@destiny>
References: <20170920095031.1972fba5@gandalf.local.home>
	<0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
	<20170920150404.2x63t3bd4pkusoa3@destiny>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Josef Bacik <jbacik@fb.com>, "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] tracepoints without user
	space interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 20 Sep 2017 11:04:05 -0400
Josef Bacik <josef@toxicpanda.com> wrote:

> The tricky part is we want to be able to access these from eBPF.  I argue that
> eBPF is run in the kernel so it has the same rules as kernel modules.  Others
> seem less convinced of this argument, so it would be good to get a definitive
> answer.  Thanks,

Note, adding a module to let eBPF access these tracepoints would also
be trivial. Would a module be of issue at FB? It could be easily added
at boot up.

-- Steve
