Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 025BF4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 13:23:54 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 86FD91FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 13:23:53 +0000 (UTC)
Date: Thu, 15 May 2014 14:23:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Li Zefan <lizefan@huawei.com>
Message-ID: <20140515132302.GB1499@arm.com>
References: <C03F79D0-8FF8-43B9-B77A-3648640380E2@arm.com>
	<53709571.9020204@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53709571.9020204@huawei.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Run-time kernel checking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 10:33:37AM +0100, Li Zefan wrote:
> Another one is supporting re-enablement of kmemleak, which you already saw the
> patch and expressed your NACK.
> 
> https://lkml.org/lkml/2014/1/17/102

And I nack'ed it for good reasons ;). But since you haven't explained
your reasons, I haven't followed up with any alternative solutions (for
example, if overhead is what you are after, you could have specific
kmemleak options to still track objects but for example don't save a
stack trace for each allocation).

-- 
Catalin
