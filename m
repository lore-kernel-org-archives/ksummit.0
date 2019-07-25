Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04F121614
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 05:01:05 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4324F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Jul 2019 05:01:04 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id y15so22082582pfn.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 22:01:04 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:00:59 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190725050059.GA30226@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
	Trond Myklebust <trondmy@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/24/19 06:55), Jeff Layton wrote:
> (cc'ing Trond)
> 
> Trond has been driving those patches more recently. He posted a revised
> set of them recently, and they still use fsnotify to detect unlink
> activity:
> 
> https://www.spinics.net/lists/linux-nfs/msg73692.html

Jan, do you have objections?
Would be great to have fsnotify export patch in linux-next, maybe.

	-ss
