Return-Path: <BATV+66801bdd0300e423cb7e+4359+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1ADEE3C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:54:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF4C18D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:54:29 +0000 (UTC)
Date: Fri, 31 Jul 2015 09:53:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Message-ID: <20150731165346.GA18984@infradead.org>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1507311833280.2499@hadrien>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> How is this different from the free happening explicitly in the remove
> function?

It's not.  The real problem is that people don't understand life time
rules and expect magic interfaces to fix it for them.
