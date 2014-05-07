Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 230F2875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 09:06:41 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A2181FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 09:06:40 +0000 (UTC)
Date: Wed, 7 May 2014 12:06:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Davidlohr Bueso <davidlohr@hp.com>
Message-ID: <20140507090628.GZ26890@mwanda>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
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

On Tue, May 06, 2014 at 07:58:58PM -0700, Davidlohr Bueso wrote:
> I tend to think of LTP as a nice way of doing unit-tests for the uapi.
> Fengguang's scripts do include it, iirc, but I'm referring more to unit
> level tests. It serves well for changes in ipc, and should also for
> other subsystems.

LTP is too complicated and enterprisey.  With trinity you don't can just
type:

	./configure.sh && make && ./trinity

With LTP you have to read the install documents.  You can't run it
from your home directory so you have to build a virtual machine which
you don't care about before you install it.

regards,
dan carpenter
