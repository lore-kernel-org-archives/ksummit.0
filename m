Return-Path: <amir73il@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E1453CB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:51:10 +0000 (UTC)
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
	[209.85.161.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C055A893
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 10:51:09 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id b143so17945240ywb.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 03:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
In-Reply-To: <20190724080347.GA12744@jagdpanzerIV>
From: Amir Goldstein <amir73il@gmail.com>
Date: Wed, 24 Jul 2019 13:50:57 +0300
Message-ID: <CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="UTF-8"
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

On Wed, Jul 24, 2019 at 11:03 AM Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
>
> On (07/24/19 14:52), Sergey Senozhatsky wrote:
> > On (05/30/19 01:59), Theodore Ts'o wrote:
> > > From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> [..]
> > To extend the topic with some discussion points:
> >
> > - We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
> >   [1] is something what fsnotify normally does, except that we can't use
> >   it in cifsd kernel module. I see that NFS guys had [2] same issues some
> >   time ago.
> >
> >   So the question is - how to do fs notify style monitoring in a kernel
> >   module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
> >   symbols?

I don't see a problem with exporting those symbols.
As a matter of fact, I have a plan to use them also from overlayfs.
At the time that Jeff posted his patches, there was no active fsnotify
maintainer.
Jeff, did you abandon this effort for nfsd?

>
> I even looked at LSM hooks, because they do what we need - invoke
> creat, open, truncate, chmod, chown, unlink, callbacks. But, first,
> I do realize that LSM was not meant to be used as some sort of fsnotify
> replacement, and, second, LSM symbols are not exported anyway :)
>

fsnotify could actually be called from LSM hooks, see:
https://github.com/amir73il/linux/commits/fsnotify_dirent_perm

It may or may not be clear to you, but what you get extra from fsnotify
compared to using bare LSM hooks is:
- Minimal performance overhead for a non-marked object
- Ability to subscribe/unsubscribe to certain events dynamically
- Manage multiple subscriber instances (groups), like one per SMB session
- Queuing infrastructure for async events if you need it

Thanks,
Amir.
