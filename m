Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2F6EC14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 16:44:15 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77AA6269
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 16:44:15 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, Mark Brown
	<broonie@kernel.org>
Date: Tue, 20 Jun 2017 16:44:13 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
In-Reply-To: <20170620155825.GC409@tigerII.localdomain>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

>> This is a configuration option (PRINTK_TIME) and isn't 100% reliable,
>> I've got examples in the syslog of my current system with multiple
>> prints being issued with the same timestamp.
>
> yes, as far as I know, timestamps are not in complete sync between CPUs.

We are pretty deep into the printk() code before we call local_clock() to
find out what timestamp to print.  Would it be helpful to grab that much
earlier ... so it is closer to the time at which the code that called print=
k()?

This would make it more likely that messages would appear out of order,
but I think it would be better to know when things actually happened, not
when we got around to printing them.

-Tony
