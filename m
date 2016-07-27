Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A841794B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 20:09:58 +0000 (UTC)
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF9DD139
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 20:09:57 +0000 (UTC)
Received: by mail-ua0-f169.google.com with SMTP id 35so25248441uap.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:09:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469648220.23563.15.camel@linux.vnet.ibm.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 13:09:37 -0700
Message-ID: <CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
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

On Wed, Jul 27, 2016 at 12:37 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> On Mi, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
>> On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:
>> > On Wed, 2016-07-27 at 17:14 +0100, David Howells wrote:
>> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>> > >
>> > > >    1. Population and update policy: How should we populate the default
>> > > >       keyrings and revocation lists?  Should we have a built in list of
>> > > >       absolute trust that can never be added to? I think the current
>> > > >       default here is OK: it's populate with the kernel built in keys and
>> > > >       nothing else.  If userspace wants to populate with, say, the secure
>> > > >       boot keys, then it can do so from init.  An issue here is the
>> > > >       Microsoft signing key, which most Linux people have but which they
>> > > >       wouldn't necessarily consider to be a source of absolute trust.
>> > > >        However, third party driver vendors would like a way to get their
>> > > >       key trusted by the kernel so they can easily supply modules (This
>> > > >       isn't a binary module issue: the code is usually GPL, but the
>> > > >       vendors would like to supply updates asynchronously to the distro
>> > > >       release cycle).  We can say their key should be added as part of the
>> > > >       rpm that installs the module, but do users really want this key
>> > > >       adding to the default keyring to be trusted for non-module
>> > > >       operations?
>> > >
>> > > I have patches that allow the UEFI key and blacklist databases to
>> > > add to the kernel keyrings during boot.
>> > >
>> > > We don't want to permit loading a key from a file once the kernel
>> > > is booted unless that key is signed by a key already in the
>> > > keyrings.
>> >
>> > This is a policy discussion we should have.  If you populate the
>> > immutable .builtin_trusted_keys keyring with the secure boot keys,
>> > most people will end up with a Microsoft key in their keyring (and
>> > possibly even some random motherboard vendor ODM key) which they
>> > can't remove.  I thought the idea was to use the
>> > .secondary_trusted_keys keyring which is mutable?  That way we can
>> > have policy in userspace select which secure boot keys we might like
>> > to trust.
>>
>> As an aside to the aside, perhaps we want the .builtin_trusted_keys to
>> be mutable up to the point the kernel finishes init and then immutable
>> after.  That would allow us to update it from the initrd if the
>> composition of the secure boot keys was in question.
>
> A lot of work went into making the builtin keyring have only the builtin
> kernel keys, that are trusted, because the kernel was signed and
> verified.  Even if I trusted a set of keys during boot, different keys
> are trusted at different layers for different things.
>
> For example, the UEFI/shim keys are trusted at the UEFI layer.   If the
> UEFI keys are needed once the system is up and running for some reason,
> then load them on a separate UEFI keyring.   Allow the host owner to
> have the ability to decide whether to trust these keys for verifying
> signatures.
>
> I would like to see separate trusted keyrings for firmware, kernel
> modules, etc, where only keys signed by a key on the builtin keyring
> could be added to them. With Mehmet Kaylaap patch set, additional keys
> can be added to the builtin keyring post build.  Those keys are trusted
> because the kernel itself is re-signed.

I would like someone to explain why using the keyring mechanism for
this in the first place is a good idea.

As far as I can tell, the design goals of "keys trusted by the kernel
for modules, firmware, etc" are:

 - Keys are added at build time or, according to potentially
system-specific rules, at boot time.

 - Keys should specify what they're trusted *for*.  Some keys should
be trusted to load modules.  Some keys should be trusted to load
specific firmware files.

 - The kernel only knows the public part of these keys, so there's no
particular need to restrict who can see them, who can perform
operations with them (there are no useful operations to perform other
than, perhaps, "read the public key" or "try to load a module or
firmware").

 - Trying to containerize them makes very little sense until someone
proposes a resource that should be protected by such a key that might
live in a container.

 - There may be utility in allowing a new key to be added to the
keyring at runtime subject to a requirement that a PCR get extended.

The keyring subsystem provides a fancy syscall interface, a fancy
naming interface, a fancy protection interface, a fancy way to link
keys to threads and processes, etc, none of which seems particularly
useful here.  Using a "trusted" key for this purpose seems entirely
pointless (we can't sign no matter what the kernel does, so what
exactly would the TPM be protecting?).  The keyring subsystem is more
about restricting *usage* of keys, not *addition* of keys.  So it's
nice to use the keyring subsystem to add a key that grants access to a
resource (possibly some remote server) and restrict what can be done
with it, but the firmware/module usecase is entirely the other way
around: we're trying to restrict which keys can be added, and we're
allowing holders of the associated private keys to perform operations
that affect the local machine.

May I suggest a much, much simpler approach: use a plain old struct
list_head for each list of keys and use the crypto API directly for
verification?  Even better, use a list of registered verifier
callbacks where any callback in the list can say "ok, I recognize this
proposed firmware, module, etc".  Think LoadPin but without the LSM
baggage.  If someone really wants to use keyrings, then that facility
could use an optional module that registers a callback that does
exactly that.

--Andy
-- 
Andy Lutomirski
AMA Capital Management, LLC
