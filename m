Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7D6A27224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:15:48 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E61A70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Jul 2019 09:15:48 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id t16so6248382pfe.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Jul 2019 02:15:48 -0700 (PDT)
Date: Mon, 1 Jul 2019 18:15:43 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20190701091543.GA29619@jagdpanzerIV>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<nycvar.YFH.7.76.1907011104330.3207@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1907011104330.3207@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (07/01/19 11:05), Jiri Kosina wrote:
> 
> Is anyone aware of a simple way how to let 'git-am' generate is 
> automatically?

`git am -m' appends the patch's Message-ID to the commit message.
But it doesn't 'generate' one.

==
 m
 --message-id
 
    Pass the -m flag to git mailinfo (see git-mailinfo[1]), so
    that the Message-ID header is added to the commit message.
    The am.messageid configuration variable can be used to specify
    the default behaviour.
==

Or did you mean git format patch?

	-ss
