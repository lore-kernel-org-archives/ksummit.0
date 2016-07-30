Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1C912C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:17:28 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0240.hostedemail.com
	[216.40.44.240])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 49C6F1F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 03:17:28 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id A29A9327D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 01:59:10 +0000 (UTC)
Date: Fri, 29 Jul 2016 21:59:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20160729215906.3b7a0983@grimm.local.home>
In-Reply-To: <20160728114624.GE4094@quack2.suse.cz>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<4826466.kMrAaT2rsn@avalon>
	<cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
	<2071960.gyaMIhrJi3@avalon> <20160728114624.GE4094@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 28 Jul 2016 13:46:24 +0200
Jan Kara <jack@suse.cz> wrote:


> So I'm complete outsider to media drivers so maybe my question is stupid
> but I cannot resist: So how is the device bringup supposed to work for
> devices where you have these cycles in the dependency graph? Do you just
> bring up the controller and then the sensor and it works because the
> controller doesn't need the clock from the sensor for startup?

Thanks for asking. I was wondering the exact same thing.

-- Steve
