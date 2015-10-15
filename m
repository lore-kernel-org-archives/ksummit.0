Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 382773EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 09:05:51 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD5B731
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 09:05:50 +0000 (UTC)
Date: Thu, 15 Oct 2015 11:05:08 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Tim Bird <tim.bird@sonymobile.com>
In-Reply-To: <561EAD4D.6080901@sonymobile.com>
Message-ID: <alpine.DEB.2.11.1510151054050.3960@nanos>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<561EAD4D.6080901@sonymobile.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 14 Oct 2015, Tim Bird wrote:
> I've long felt that RT-PREEMPT was sucking the oxygen out of getting other,
> technically valid, approaches to RT with Linux into mainline.

I have to disagree. PREEMPT_RT does not block anything else, I'm
actively supporting the NOHZ FULL stuff from the very beginning.

So if people want to have xenomai or whatever in mainline, then they
need to sit down and do the work. I'm not in the way as long as it
makes technically sense and does not impose hard to overcome issues
vs. maintainence and flexibility.

Thanks,

	tglx
