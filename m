Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D69DECE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:53:50 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5FFED8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:53:50 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1FE020839
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 20:53:49 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id w11-v6so9066719wrc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 13:53:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
References: <17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
	<CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Wed, 5 Sep 2018 13:53:27 -0700
Message-ID: <CALCETrVFSk=8eMyzsjkOPKne2kVuZzjyn5tLNDnB3ZaBGh1qrQ@mail.gmail.com>
To: Justin Forbes <jmforbes@linuxtx.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Peter Jones <pjones@redhat.com>, joeyli.kernel@gmail.com,
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

On Wed, Sep 5, 2018 at 1:34 PM, Justin Forbes <jmforbes@linuxtx.org> wrote:
> On Wed, Sep 5, 2018 at 3:14 PM, David Howells <dhowells@redhat.com> wrote:
>> Justin Forbes <jmforbes@linuxtx.org> wrote:
>>
>>> Lockdown is a config option on it's own, just also add a separate
>>> config option option to enable lockdown on UEFI secure boot.
>>
>> The patchset has that already (CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT).
>>
>> One of the issues appears to be that we're making it boot-time conditional at
>> all.  If I understand him correctly, Linus seems to want us to make everything
>> locked down at compile time or not at all.
>>
>
> The last push attempt dropped that patch and did have the compile time
> (CONFIG_LOCK_DOWN_MANDATORY) as well as an option for command line
> enabling with lockdown=1 (CONFIG_LOCK_DOWN_KERNEL).  It just didn't
> have an option for triggering off of UEFI Secure Boot.   As a distro,
> running   CONFIG_LOCK_DOWN_MANDATORY isn't much of an option. We ran
> the 4.17 development series in rawhide with CONFIG_LOCK_DOWN_KERNEL,
> and no one noticed that their secure boot was off.  This is why it is
> somewhat frightening to change the behavior, users assume it is all
> working because things boot, and never notice they are missing some
> protection that they assumed was there.  Before we rebased stable
> distros I reworked the CONFIG_LOCK_DOWN_IN_EFI_SECURE_BOOT to work
> with the current patch set and that is what we are carrying now.
> While I would love to see everything pushed as a whole, I would still
> be much happier than I am now if everything else pushed and we only
> had to carry the patch to trigger off of UEFI status.  It is a minor
> detail that shouldn't be blocking the entire patch set at this point.
> If Linus agrees that it can be pushed with CONFIG_LOCK_DOWN_MANDATORY
> as the only option, that is fine. Still much less out of tree for us
> to worry about.

I'm not really convinced this needs a whole tech topic.  I send an
email awhile back, but didn't hear back, so here goes roughly again:

As far as I can tell, there are two issues blocking lockdown, both of
which should be relatively easily resolvable:

1. When exactly is lockdown enabled?

2. What exactly does lockdown do?

#1 is clearly resolvable.  Worst case, a bare minimum version can get
merged where, for example, lockdown is either mandatory or is enabled
by boot option.  Distros can carry a patch for alternative policies
for a little while until the dust settles.

#2 is a bigger deal.  At least one version that shipped in a Fedora
kernel actually broke systemd, and that's not cool.  And I really
think we need to make lockdown non-binary to get this right.  I've
proposed LOCKDOWN_PROTECT_INTEGRITY (i.e. try to prevent root from
modifying the running kernel) and LOCKDOWN_PROTECT_SECRECY (try to
prevent root from reading kernel memory), and no one seems to have
actually objected.

So I would propose the following.  Someone (me? David?) prepares a
very stripped down lockdown patchset.  It adds the basic config
options for CONFIG_LOCK_DOWN_KERNEL and whatever compile-time
mandatory variants we want, and it adds the helpers so various
subsystems can ask whether lockdown is on.  And it adds one single
lockdown user in the kernel.  And we merge that.  Then we add
additional lockdown users one at a time.

This will resolve what I see as the major issue that has blocked
lockdown: the patchset is too big and spans too many subsystems.
Every time it's submitted it gets bogged down in important but
distracting discussions like "what, exactly, should the following bpf
feature do in lockdown mode?".  These matter, but there is no
legitimate reason for them to block the overall feature -- it's
entirely fine if the initial version of lockdown doesn't protect bpf
at all.

--Andy

[There's only a ~30% change I can make LPC this year...]
