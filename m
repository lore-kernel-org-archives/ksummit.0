Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 172A7952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:58:04 +0000 (UTC)
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F4771D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:58:03 +0000 (UTC)
Received: by mail-vk0-f54.google.com with SMTP id x130so14899939vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 10:58:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469636088.27356.60.camel@HansenPartnership.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<13539.1469633840@warthog.procyon.org.uk>
	<1469636088.27356.60.camel@HansenPartnership.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 10:57:42 -0700
Message-ID: <CALCETrU5fckZxc_HtuQxGC-425uaQqXt9-Yk_C63yTPuBa863w@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 9:14 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Wed, 2016-07-27 at 16:37 +0100, David Howells wrote:
>> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>>
>> >    3. Integration with existing key management infrastructures.  The issue
>> >       here is things like the gnome keyring and the TPM.  The TPM is a
>> >       particularly thorny problem: as a key store, the TPM has a very
>> >       limited storage space, so something has effectively to swap keys in
>> >       and out as they're used.  This function is currently performed by a
>> >       userspace stack called the TSS.  However, the kernel use of the TPM
>> >       effectively steals the nvram resource behind the manager's back and
>> >       can lead to resource starvation issues in the TPM and unexpected
>> >       responses back to the user space TSS.  If the kernel wants to use
>> >       TPM keys, it needs either to request them properly from the TSS or
>> >       we need to pull TPM key management fully into the kernel and make
>> >       the TSS use it.
>>
>> I have partial patches for this, but they're against an old, pre-tpm2 version
>> of the kernel and need updating.  They expose TPM keys as a subtype of the
>> asymmetric key type.
>
> Heh, you really know how to poke a sore spot, since we effectively have
> two TSSs in Linux: trousers the TPM 1.1 and 1.2 compatible one and
> ibmtpm20tss for TPM 2.0.  I don't think we have an answer on how we
> make them work compatibly.  I'm sort of hoping to get some coherence in
> the TPM Microconference at Plumbers
>
> http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks/585
>
> However, if we do an upcall to the TSS, then we can't use TPM keys in
> the pre-boot and have difficulty using them in initrd environments,
> which seems like it might cause problems.
>

I think this nuts.  The kernel should arbitrate use of the TPM's key
slots and handle context switching.  Doing it in userspace is a
terrible idea for this and other reasons.

--Andy
