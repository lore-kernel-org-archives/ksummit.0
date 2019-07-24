Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B734A9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 05:52:31 +0000 (UTC)
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62AAE891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 05:52:31 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s1so14310971pgr.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Jul 2019 22:52:31 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:52:26 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190724055226.GA15444@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190530055947.GA29812@mit.edu>
Cc: Amir Goldstein <amir73il@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Cc-ing Jan, Amir, Jeff

Hi!

On (05/30/19 01:59), Theodore Ts'o wrote:
> From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
[..]
> CIFSD is a new SMB server implementation for the Linux kernel
> (out of tree, as of this moment), intended to be minimalistic,
> yet providing better performance than user-space analogues.
> This talk will briefly introduce CIFSD, its architecture (high
> level) and its main design goals: outline components, their
> responsibilities and communication protocols.
> 
> The work is still in progress, we are in pretty early stages,
> so in the second part of the talk we will focus on current state
> of affairs and our future development plans - we are looking at
> possibility to merge CIFSD with the upstream Linux kernel,
> sometime in the future.

To extend the topic with some discussion points:

- We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
  [1] is something what fsnotify normally does, except that we can't use
  it in cifsd kernel module. I see that NFS guys had [2] same issues some
  time ago.

  So the question is - how to do fs notify style monitoring in a kernel
  module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
  symbols?

[1] https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-smb2/598f395a-e7a2-4cc8-afb3-ccb30dd2df7c
[2] https://lore.kernel.org/linux-fsdevel/1441968882-7851-5-git-send-email-jeff.layton@primarydata.com/

	-ss
