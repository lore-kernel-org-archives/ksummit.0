Return-Path: <SRS0=qjaZ=54=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFD63B9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 13:09:48 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43B4120A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 13:09:48 +0000 (UTC)
Date: Fri, 23 Jun 2017 09:09:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20170623090944.40d2952c@gandalf.local.home>
In-Reply-To: <20170623054321.GB844@jagdpanzerIV.localdomain>
References: <20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<20170620192858.142a43ff@gandalf.local.home>
	<20170621111210.GA7502@jagdpanzerIV.localdomain>
	<20170622100641.1dae4e3c@gandalf.local.home>
	<20170623054321.GB844@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 23 Jun 2017 14:43:22 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> currently we've got a _very_ accidental fix/hack that lets us to bypass
> printk_nmi per-CPU buffers in most of the cases and print NMI messages
> directly to the logbuf, with the only exceptional case (when we store the
> messages to the per-CPU printk_nmi buffer) being the case when NMI printk
> happens on the CPU that owned the logbuf_lock at the time when NMI occurred
> on that CPU. which is may be narrow enough. so we can keep printk_nmi and
> printk_safe per-CPU buffers relatively small in size, and instead make
> only logbuf really huge. with per-CPU logbufs design we would need to make
> each CPU's buffer huge unconditionally.
> 
> but, at the same time, with the current implementation, there is a
> possibility that we will have to make both logbuf and per-CPU buffers
> really huge.

Ideally, I would love to have a way that an NMI (on opps) can have a
way to just print directly to the consoles, without having to use the
log buffers at all.

-- Steve
