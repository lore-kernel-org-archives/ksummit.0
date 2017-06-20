Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71C64B8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 17:12:54 +0000 (UTC)
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21D7C1F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 17:12:54 +0000 (UTC)
Received: by mail-pf0-f193.google.com with SMTP id d5so24583053pfe.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 10:12:54 -0700 (PDT)
Date: Wed, 21 Jun 2017 02:11:34 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: "Luck, Tony" <tony.luck@intel.com>
Message-ID: <20170620171134.GA444@tigerII.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On (06/20/17 16:44), Luck, Tony wrote:
> >> This is a configuration option (PRINTK_TIME) and isn't 100% reliable,
> >> I've got examples in the syslog of my current system with multiple
> >> prints being issued with the same timestamp.
> >
> > yes, as far as I know, timestamps are not in complete sync between CPUs.
> 
> We are pretty deep into the printk() code before we call local_clock() to
> find out what timestamp to print.

correct, we basically keep the time when the message was finally
stored (there can be a 'lengthy' spinning on logbuf_lock before
that), not when the caller issued printk().

> Would it be helpful to grab that much earlier ... so it is closer to
> the time at which the code that called printk()?
> 
> This would make it more likely that messages would appear out of order,
> but I think it would be better to know when things actually happened, not
> when we got around to printing them.

so, yes, we probably can do it. and _perhaps_ it makes sense to do it even
in the current printk, I think. this won't make messages ordered, tho.
printk() does not sort logbuf records. and the way things work now, even
if we would sort logbuf entries, we still would have cases of out of
order messages - because printk_safe and printk_nmi messages in general
(in general; there is a shortcut for printk_nmi, but not for printk_safe)
cannot be stored directly to the logbuf because we can deadlock. we flush
those messages later from irq work instead. so those messages are expected
to be out of order.

another thing that I found useful is a CPU number of the processor
that stored a particular line to the logbuf.

	-ss
