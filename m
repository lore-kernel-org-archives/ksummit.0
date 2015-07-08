Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D162FA04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:16:53 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5AD7F1B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:16:53 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:16:39 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
In-Reply-To: <9412727.0bKgPF9YKr@vostro.rjw.lan>
Message-ID: <alpine.LNX.2.00.1507081015120.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
	<4541757.2i2CVNfqPd@vostro.rjw.lan>
	<alpine.LNX.2.00.1507072307110.10183@pobox.suse.cz>
	<9412727.0bKgPF9YKr@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] giving freezer well-defined
 semantics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 8 Jul 2015, Rafael J. Wysocki wrote:

> OK, it is necessary to ensure that the contents of the image will be 
> consistent with the state of filesystems on the storage media, so 
> everything that may change that state should be "frozen" before the 
> image is created, but "frozen" in terms of "no persistent state changes 
> from now on" rather than in terms of "no forward progress from now on".

Yeah. So again, why do we even have freezer for so many kernel threads at 
all? :)

Thanks,

-- 
Jiri Kosina
SUSE Labs
