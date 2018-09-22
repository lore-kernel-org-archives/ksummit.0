Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C36A88DC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 22 Sep 2018 13:16:55 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A7B1B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 22 Sep 2018 13:16:55 +0000 (UTC)
Date: Sat, 22 Sep 2018 16:16:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: James Morris <jmorris@namei.org>
Message-ID: <20180922131640.pxjwukrckggxtg3s@mwanda>
References: <alpine.LRH.2.21.1809220709090.19240@namei.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.21.1809220709090.19240@namei.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Sort of related to this.  I think we should have a public email list to
discuss potential security problems.  We've actually talked about making
the security@kernel.org list public at some point when people started
flooding it with static checker warnings about potential SELinux missing
checks.

The downsides are 1) Maintainers will be annoyed.  They don't want me or
anyone to forward them static checker output (they are polite about
this).  But they also want to be the first to know about real bugs found
by static analysis.  These are conflicting and impossible desires...  2)
Script kiddies will follow the list and learn about bugs earlier.  I
don't see this as a huge issue if we restricted it to driver specific
bugs.

Security work is lonely.  Everyone expects *all* the bugs to be fixed
perfectly and in absolute secrecy.

Every other special interest group has a mailing list linux in
automotive or small kernels.  Security would be the same.  Also I
sometimes see obviously bad security fixes.  There is one integer
overflow fixes which I have re-fixed three times.  Older me is able to
review other people's integer overflow fixes and spot bugs.  It would be
good to have a way to share that knowledge.

Most maintainers do not want to deal with more than a 5% false positive
rate in static checker warnings.  I, on the other hand, regularly deal
with a 95% false positive checks and there are probably other people
like me who can spend a whole day looking and feel happy to find one
bug.

regards,
dan carpenter
