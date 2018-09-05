Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A211D4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:14:58 +0000 (UTC)
Received: from mx1.redhat.com (mx3-rdu2.redhat.com [66.187.233.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFE097E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:14:56 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
References: <CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
To: Justin Forbes <jmforbes@linuxtx.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <32340.1536178494.1@warthog.procyon.org.uk>
Date: Wed, 05 Sep 2018 21:14:54 +0100
Message-ID: <32341.1536178494@warthog.procyon.org.uk>
Cc: James.Bottomley@hansenpartnership.com, joeyli.kernel@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, Peter Jones <pjones@redhat.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Justin Forbes <jmforbes@linuxtx.org> wrote:

> Lockdown is a config option on it's own, just also add a separate
> config option option to enable lockdown on UEFI secure boot.

The patchset has that already (CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT).

One of the issues appears to be that we're making it boot-time conditional at
all.  If I understand him correctly, Linus seems to want us to make everything
locked down at compile time or not at all.

David
