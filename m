Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A10A7F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 08:03:54 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8BEA9709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 08:03:52 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i18so20806966pgl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 01:03:52 -0700 (PDT)
Date: Wed, 24 Jul 2019 17:03:47 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20190724080347.GA12744@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190724055226.GA15444@jagdpanzerIV>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/24/19 14:52), Sergey Senozhatsky wrote:
> On (05/30/19 01:59), Theodore Ts'o wrote:
> > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
[..]
> To extend the topic with some discussion points:
> 
> - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
>   [1] is something what fsnotify normally does, except that we can't use
>   it in cifsd kernel module. I see that NFS guys had [2] same issues some
>   time ago.
> 
>   So the question is - how to do fs notify style monitoring in a kernel
>   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
>   symbols?

I even looked at LSM hooks, because they do what we need - invoke
creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
I do realize that LSM was not meant to be used as some sort of fsnotify
replacement, and, second, LSM symbols are not exported anyway :)

	-ss
