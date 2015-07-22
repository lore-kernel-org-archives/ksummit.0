Return-Path: <jiangshanlai@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9BC2E487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:03:31 +0000 (UTC)
Received: from mail-ig0-f193.google.com (mail-ig0-f193.google.com
	[209.85.213.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FD3B15E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:03:31 +0000 (UTC)
Received: by igbqa2 with SMTP id qa2so12643543igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 07:03:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150709190916.GI1522@ret.masoncoding.com>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
Date: Wed, 22 Jul 2015 22:03:30 +0800
Message-ID: <CAJhGHyA0m-LEBKMo5CgVun54zOFBpuJBU8LKyTy+-HwKZaEiPQ@mail.gmail.com>
From: Lai Jiangshan <jiangshanlai@gmail.com>
To: Chris Mason <clm@fb.com>, Andy Lutomirski <luto@amacapital.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Jens Axboe <axboe@fb.com>, Shaohua Li <shli@fb.com>,
	"Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Ksummit-discuss] [CORE TOPIC] lightweight per-cpu locks /
 restartable sequences
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 3:09 AM, Chris Mason <clm@fb.com> wrote:

>
> We've started experimenting with these to cut overheads in a few
> critical places, and while we don't have numbers yet I really hope it
> won't take too long.
>
> I think the topic is really interesting and we'll be able to get numbers
> from production workloads to help justify and compare different
> approaches.
>

I was interested by the idea since Paul(paulmck) and Mathieu introduced
it to me at the K.S. 2013.  I didn't expect it is re-posted on LKML so late.
IMHO, the direction is useful and helpful not just only fun, I hope we can make
some progress on it.

Thanks
Lai

> -chris
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
