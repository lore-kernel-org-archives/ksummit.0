Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4180FFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 13:20:26 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 500B479F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 23 Sep 2018 13:20:26 +0000 (UTC)
Date: Sun, 23 Sep 2018 15:20:22 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
In-Reply-To: <20180922131640.pxjwukrckggxtg3s@mwanda>
Message-ID: <nycvar.YFH.7.76.1809231518440.15880@cbobk.fhfr.pm>
References: <alpine.LRH.2.21.1809220709090.19240@namei.org>
	<20180922131640.pxjwukrckggxtg3s@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Sat, 22 Sep 2018, Dan Carpenter wrote:

> Sort of related to this.  I think we should have a public email list to
> discuss potential security problems.  We've actually talked about making
> the security@kernel.org list public at some point when people started
> flooding it with static checker warnings about potential SELinux missing
> checks.
> 
> The downsides are 1) Maintainers will be annoyed.  They don't want me or
> anyone to forward them static checker output (they are polite about
> this).  But they also want to be the first to know about real bugs found
> by static analysis.  These are conflicting and impossible desires...  2)
> Script kiddies will follow the list and learn about bugs earlier.  I
> don't see this as a huge issue if we restricted it to driver specific
> bugs.

3) there simply is a need for CRD process for the kernel (which pretty 
   much by definition is not happening publicly). Currently, security@ 
   serves that purpose, so if you make that public, you have to 
   instantiate some other process to deal with CRDs.

-- 
Jiri Kosina
SUSE Labs
