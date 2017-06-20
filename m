Return-Path: <SRS0=BAny=5Z=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B23D0B93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 14:36:55 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF7F8184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 14:36:54 +0000 (UTC)
Date: Tue, 20 Jun 2017 10:36:52 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20170620103652.7719b715@gandalf.local.home>
In-Reply-To: <CAK8P3a2XgV7E7H=hv6MyjhG7K0VaOSVFRgFfS17Npu7d6XXw1Q@mail.gmail.com>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<20170619234650.GC30361@cloud>
	<CAK8P3a2XgV7E7H=hv6MyjhG7K0VaOSVFRgFfS17Npu7d6XXw1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 20 Jun 2017 10:24:43 +0200
Arnd Bergmann <arnd@arndb.de> wrote:


> > It'd be nice if, when building a kernel with CONFIG_PRINTK disabled, the
> > full format-string handling wasn't compiled in to handle snprintf and
> > family. In particular, some of the kernel-specific %p format-string
> > modifiers only get used when printing to a user, never when formatting a
> > string for machine consumption. I can think of a few different ways to
> > address that, but I'd love to see that taken into account in the
> > requirements for a printk redesign.  
> 
> I don't think that's realistic, given how many special formats we have
> nowadays, see the discussion about the 'struct rtc_time' format recently,
> which was definitely meant for external ABIs.

I think it may be possible, but it is a separate project from the
printk one. One thing, tracing requires it, and does not require
printk. What you could do is have CONFIG_VSPRINTF and have anything that
uses it select it as well. Which would be printk, tracing, etc.

But the printk mess in general is a big enough issue to try to solve
than to bring this up at this time.

-- Steve
