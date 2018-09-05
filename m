Return-Path: <jmforbes@linuxtx.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB33B18D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:51:48 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57B4C786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 19:51:48 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w11-v6so8910006wrc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 12:51:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
References: <17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
From: Justin Forbes <jmforbes@linuxtx.org>
Date: Wed, 5 Sep 2018 14:51:46 -0500
Message-ID: <CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James.Bottomley@hansenpartnership.com, Peter Jones <pjones@redhat.com>,
	joeyli.kernel@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 2:33 PM, Jiri Kosina <jikos@kernel.org> wrote:
> On Wed, 5 Sep 2018, David Howells wrote:
>
>> I would like to suggest having a kernel summit session on how to
>> progress the secure boot and kernel lockdown patches.  AIUI, various
>> distributions are actually including them in their kernels.
>
> FWIW, it's one of the rare exceptions where we are carrying non-upstream
> patchset in our tree, yes.
>
> I have to admit I already forgot what exactly was actually blocking the
> upstream merge ... ?
>
It seems to vary by merge attempt, but last time, there was some very
good discussion about lockdown being separated from secure boot. I
personally don't see a problem with that, it is a decent idea.
Lockdown is a config option on it's own, just also add a separate
config option option to enable lockdown on UEFI secure boot.  That way
people who want lockdown independent of secure boot can have it, and
distros who want to keep the current behavior can also do that.
There are also some more recent issues with BPF, the current lockdown
solution of "disable it" is a large hammer, and causes problems with
IPAddressAllow/IPAddressDeny.

Justin
