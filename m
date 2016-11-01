Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 052AD727
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Nov 2016 17:51:16 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B23441A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Nov 2016 17:51:15 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id i127so18318327oia.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 01 Nov 2016 10:51:15 -0700 (PDT)
Received: from localhost ([198.233.217.214]) by smtp.gmail.com with ESMTPSA id
	h78sm9431576ioe.44.2016.11.01.10.51.13
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 01 Nov 2016 10:51:13 -0700 (PDT)
Date: Wed, 2 Nov 2016 02:50:07 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20161101175007.GA607@swordfish>
References: <20160719034717.GA24189@swordfish> <20160921044156.GA486@swordfish>
	<20161031065435.GA458@swordfish>
	<20161031135617.bs7df7kur23gvm6b@thunk.org>
	<20161031145655.GA433@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161031145655.GA433@swordfish>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk considered harmful (was:
 [TECH TOPIC] asynchronous printk)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

a small update

On (10/31/16 23:56), Sergey Senozhatsky wrote:
[..]
> 1) deadlocks in printk and printk recursion
> 2) async printk
> 3) pr_cont
> 4) console semaphore scalability and problems

the session is now scheduled (thanks Ted):


 Title: Printk improvements
 Microconference: Kernel Summit Track
 Room: Coronado
 Time: 10:00am

	-ss
