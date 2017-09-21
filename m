Return-Path: <sergey.senozhatsky.work@gmail.com>
Date: Thu, 21 Sep 2017 18:45:24 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170921094524.GF773@jagdpanzerIV.localdomain>
References: <20170920095031.1972fba5@gandalf.local.home>
	<0C1E6F2D-2E7D-4477-9F35-8C59F62BB409@fb.com>
	<20170920150404.2x63t3bd4pkusoa3@destiny>
	<20170920111306.1a74f2ec@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170920111306.1a74f2ec@gandalf.local.home>
Cc: Josef Bacik <jbacik@fb.com>, "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>, Josef Bacik <josef@toxicpanda.com>
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

Hello,

On (09/20/17 11:13), Steven Rostedt wrote:
> On Wed, 20 Sep 2017 11:04:05 -0400
> Josef Bacik <josef@toxicpanda.com> wrote:
> 
> > The tricky part is we want to be able to access these from eBPF.  I argue that
> > eBPF is run in the kernel so it has the same rules as kernel modules.  Others
> > seem less convinced of this argument, so it would be good to get a definitive
> > answer.  Thanks,
> 
> Note, adding a module to let eBPF access these tracepoints would also
> be trivial. Would a module be of issue at FB? It could be easily added
> at boot up.

JFI, seems that Josef's reply didn't make it to the ksummit-discuss list.
I'm interested in this topic, tho.

	-ss
