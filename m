Return-Path: <davidlohr@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 53DDE4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:59:32 +0000 (UTC)
Received: from g9t1613g.houston.hp.com (g9t1613g.houston.hp.com [15.240.0.71])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01053201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:59:31 +0000 (UTC)
Received: from g5t1626.atlanta.hp.com (g5t1626.atlanta.hp.com [15.192.137.9])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hp.com (Postfix) with ESMTPS id 64158602A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 02:59:02 +0000 (UTC)
Message-ID: <1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
From: Davidlohr Bueso <davidlohr@hp.com>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Date: Tue, 06 May 2014 19:58:58 -0700
In-Reply-To: <53699F27.9040403@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-05-07 at 11:49 +0900, Masami Hiramatsu wrote:
> (2014/05/04 20:19), Li Zefan wrote:
> > - Testing stable kernels
> > 
> > The testing of stable kernels when a new version is under review seems
> > quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> > are run on mainline/for-next only. Would be useful to also have them
> > run on stable kernels?
> 
> This might be a kind of off-topic, but I'm interested in the testing
> on the linux kernel, especially standard framework of unit-tests
> for each feature.

I tend to think of LTP as a nice way of doing unit-tests for the uapi.
Fengguang's scripts do include it, iirc, but I'm referring more to unit
level tests. It serves well for changes in ipc, and should also for
other subsystems.

Thanks,
Davidlohr
