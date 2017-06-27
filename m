Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6C9D5A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:58:32 +0000 (UTC)
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B193F3E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 13:58:32 +0000 (UTC)
Received: by mail-pf0-f176.google.com with SMTP id q86so17012826pfl.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 06:58:32 -0700 (PDT)
Date: Tue, 27 Jun 2017 22:58:39 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20170627135839.GB1886@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: Michal Hocko <mhocko@kernel.org>
Subject: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

am I the only one who struggle with the Kconfig sometimes? can there
be a way to make it more general/simpler, in some parts at least? e.g.
the hardening effort? (just an example. *ABSOLUTELY NOT* blaming Kess
or anyone else who is involved, that's not the point, they are doing
great job, no doubt. it's just the most recent thing I saw was
CONFIG_SLAB_MERGE_DEFAULT). do people who really want to harden their
kernels go all-in anyway (enable all of the options at once)? if so,
can there be a single Kconfig option then? just curious.

	-ss
