Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E338B4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 15:59:40 +0000 (UTC)
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D052EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 15:59:40 +0000 (UTC)
Received: by mail-pg0-f66.google.com with SMTP id j186so22285089pge.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Jun 2017 08:59:40 -0700 (PDT)
Date: Wed, 21 Jun 2017 00:58:25 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170620155825.GC409@tigerII.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
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

On (06/19/17 17:23), Mark Brown wrote:
> On Mon, Jun 19, 2017 at 05:54:34PM +0200, Hannes Reinecke wrote:
> 
> > I was under the impression that we do this anyway; even ATM every line
> > in the printk buffer is prefixed with a timestamp.
> > And we should continue with that.
> 
> This is a configuration option (PRINTK_TIME) and isn't 100% reliable,
> I've got examples in the syslog of my current system with multiple
> prints being issued with the same timestamp.

yes, as far as I know, timestamps are not in complete sync between CPUs.

 	-ss
