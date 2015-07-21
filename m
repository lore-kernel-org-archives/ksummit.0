Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9938641C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 02:01:42 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D151524F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 21 Jul 2015 02:01:41 +0000 (UTC)
Message-ID: <55ADA7C1.3050809@huawei.com>
Date: Tue, 21 Jul 2015 10:00:33 +0800
From: Zefan Li <lizefan@huawei.com>
MIME-Version: 1.0
To: David Woodhouse <dwmw2@infradead.org>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<1437376105.8968.14.camel@HansenPartnership.com>
	<20150720084420.GA11454@x>
	<1437384215.8968.28.camel@HansenPartnership.com>
	<1437386699.22996.10.camel@infradead.org>
	<1437388227.8968.34.camel@HansenPartnership.com>
	<1437390546.22996.27.camel@infradead.org>
In-Reply-To: <1437390546.22996.27.camel@infradead.org>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Then it should just be case of of asking Stephen to "put this tree last
> in linux-next", and Linus to "pull this one last, right before
> releasing -rc1". And getting the timing right for the script to run.
> 

This makes git-blame less useful, and that's one of the reasons some
maintainers don't like trivial cleanups.
