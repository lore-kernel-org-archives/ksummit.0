Return-Path: <sergey.senozhatsky@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3A92CF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 11:28:17 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
	[209.85.210.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F3CC7F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 11:28:17 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id q10so20799905pff.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 04:28:17 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Date: Wed, 24 Jul 2019 20:28:12 +0900
To: Amir Goldstein <amir73il@gmail.com>
Message-ID: <20190724112812.GB496@tigerII.localdomain>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/24/19 13:50), Amir Goldstein wrote:
[..]
> I don't see a problem with exporting those symbols.
> As a matter of fact, I have a plan to use them also from overlayfs.
> At the time that Jeff posted his patches, there was no active fsnotify
> maintainer.

Cool.

> Jeff, did you abandon this effort for nfsd?
> 
> >
> > I even looked at LSM hooks, because they do what we need - invoke
> > creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
> > I do realize that LSM was not meant to be used as some sort of fsnotify
> > replacement, and, second, LSM symbols are not exported anyway :)
> >
> 
> fsnotify could actually be called from LSM hooks, see:
> https://github.com/amir73il/linux/commits/fsnotify_dirent_perm
>
> It may or may not be clear to you, but what you get extra from fsnotify
> compared to using bare LSM hooks is:

Oh yeah, LSM does not really fit. I looked at it just out of curiosity.

> - Minimal performance overhead for a non-marked object
> - Ability to subscribe/unsubscribe to certain events dynamically

Absolutely, we need to "subscribe/unsubscribe dynamically".

> - Manage multiple subscriber instances (groups), like one per SMB session

We need this as well, you're right.

> - Queuing infrastructure for async events if you need it

	-ss
