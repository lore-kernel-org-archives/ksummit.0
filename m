Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2BF1899F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 06:25:30 +0000 (UTC)
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3836EAD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jul 2017 06:25:29 +0000 (UTC)
Received: by mail-pf0-f180.google.com with SMTP id e199so22477552pfh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Jul 2017 23:25:29 -0700 (PDT)
Date: Wed, 19 Jul 2017 15:25:38 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170719062538.GB12064@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<20170719062401.GA12064@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170719062401.GA12064@jagdpanzerIV.localdomain>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/19/17 15:24), Sergey Senozhatsky wrote:
> On (06/19/17 14:21), Sergey Senozhatsky wrote:
> > Hello,
> > 
> > 	I, Petr Mladek and Steven Rostedt would like to propose a printk
> > tech topic (as suggested by Steven). We are currently exploring the idea
> > of complete redesign and rework of printk and it would be extremely helpful
> > to hear from the community. printk serves different purposes, and some of
> > requirements of printk tend to contradict each other; printk is monolithic
> > and quite heavy, no wonder, it causes problems sometimes.
> 
> I made a trivial printk TODO list. The list is incomplete and mostly
> was created for personal use: thus it's probably a bit hard to read,
> but at the same time it contains some quotes/opinions/ideas copy-pastes
> and web-links. May be can be of some use. This also looks like our
> possible (some approximation) agenda [if the topic will be accepted].
> 

d'oh...  the link...

https://github.com/sergey-senozhatsky/printk-todo

	-ss
