Return-Path: <jmforbes@linuxtx.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA59F16EC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:34:06 +0000 (UTC)
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3390B81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:34:06 +0000 (UTC)
Received: by mail-wm0-f66.google.com with SMTP id b19-v6so9288545wme.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 13:34:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <32341.1536178494@warthog.procyon.org.uk>
References: <17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
From: Justin Forbes <jmforbes@linuxtx.org>
Date: Wed, 5 Sep 2018 15:34:04 -0500
Message-ID: <CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
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

On Wed, Sep 5, 2018 at 3:14 PM, David Howells <dhowells@redhat.com> wrote:
> Justin Forbes <jmforbes@linuxtx.org> wrote:
>
>> Lockdown is a config option on it's own, just also add a separate
>> config option option to enable lockdown on UEFI secure boot.
>
> The patchset has that already (CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT).
>
> One of the issues appears to be that we're making it boot-time conditional at
> all.  If I understand him correctly, Linus seems to want us to make everything
> locked down at compile time or not at all.
>

The last push attempt dropped that patch and did have the compile time
(CONFIG_LOCK_DOWN_MANDATORY) as well as an option for command line
enabling with lockdown=1 (CONFIG_LOCK_DOWN_KERNEL).  It just didn't
have an option for triggering off of UEFI Secure Boot.   As a distro,
running   CONFIG_LOCK_DOWN_MANDATORY isn't much of an option. We ran
the 4.17 development series in rawhide with CONFIG_LOCK_DOWN_KERNEL,
and no one noticed that their secure boot was off.  This is why it is
somewhat frightening to change the behavior, users assume it is all
working because things boot, and never notice they are missing some
protection that they assumed was there.  Before we rebased stable
distros I reworked the CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT to work
with the current patch set and that is what we are carrying now.
While I would love to see everything pushed as a whole, I would still
be much happier than I am now if everything else pushed and we only
had to carry the patch to trigger off of UEFI status.  It is a minor
detail that shouldn't be blocking the entire patch set at this point.
If Linus agrees that it can be pushed with CONFIG_LOCK_DOWN_MANDATORY
as the only option, that is fine. Still much less out of tree for us
to worry about.
