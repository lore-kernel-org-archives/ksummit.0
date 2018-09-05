Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CE22BC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:33:40 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 330C57CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:33:40 +0000 (UTC)
Date: Wed, 5 Sep 2018 21:33:36 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <17533.1536166384@warthog.procyon.org.uk>
Message-ID: <nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
References: <17533.1536166384@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James.Bottomley@HansenPartnership.com, pjones@redhat.com,
	jmforbes@linuxtx.org, joeyli.kernel@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, David Howells wrote:

> I would like to suggest having a kernel summit session on how to 
> progress the secure boot and kernel lockdown patches.  AIUI, various 
> distributions are actually including them in their kernels.

FWIW, it's one of the rare exceptions where we are carrying non-upstream 
patchset in our tree, yes.

I have to admit I already forgot what exactly was actually blocking the 
upstream merge ... ?

Thanks,

-- 
Jiri Kosina
SUSE Labs
