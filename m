Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7CCB394D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 23:16:10 +0000 (UTC)
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5C473122
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 23:16:09 +0000 (UTC)
Received: by mail-vk0-f43.google.com with SMTP id n129so20214633vke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 16:16:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469660063.23563.81.camel@linux.vnet.ibm.com>
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
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<1469660063.23563.81.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 16:15:48 -0700
Message-ID: <CALCETrW-yKZpS7ZYw_ASLwfDTLxMz3rU4k7RxEK8YwJM9pZiTA@mail.gmail.com>
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

On Wed, Jul 27, 2016 at 3:54 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> On Mi, 2016-07-27 at 13:09 -0700, Andy Lutomirski wrote:
>> On Wed, Jul 27, 2016 at 12:37 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
>> > On Mi, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
>> >> On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:
>> >> > On Wed, 2016-07-27 at 17:14 +0100, David Howells wrote:
>> >> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>> >> > >
>
>> I would like someone to explain why using the keyring mechanism for
>> this in the first place is a good idea.
>>
>> As far as I can tell, the design goals of "keys trusted by the kernel
>> for modules, firmware, etc" are:
>>
>>  - Keys are added at build time or, according to potentially
>> system-specific rules, at boot time.
>
> Currently, only the builtin keys are loaded onto the .builtin_trusted
> keys. The keyring is locked so that no other keys can be added.  Trust
> in these keys is based on the secure boot signature chain of trust
> verification of the kernel image.
>
>>  - Keys should specify what they're trusted *for*.  Some keys should
>> be trusted to load modules.  Some keys should be trusted to load
>> specific firmware files.
>
> No argument there.  Keys can be added to the secondary keyring that are
> signed by any key on either the builtin or secondary keyrings.  We would
> need to limit this to only keys that are trusted *for* are permitted to
> add such *for* keys to the keyring.
>
>>  - The kernel only knows the public part of these keys, so there's no
>> particular need to restrict who can see them, who can perform
>> operations with them (there are no useful operations to perform other
>> than, perhaps, "read the public key" or "try to load a module or
>> firmware").
>
> Agreed
>
>>  - Trying to containerize them makes very little sense until someone
>> proposes a resource that should be protected by such a key that might
>> live in a container.
>
> Mat Martineau posted patches that extend the concept of a trusted
> keyring to userspace.  It would allow a trusted keyring (new root of
> trust or based on the builtin/secondary keyrings) to be attached to a
> container/namespace.

Can you clarify what this accomplishes?  If I make a namespace (by
calling clone or unshare) and attach a "trusted" keyring to it, what
effect do the keys in that keyring have?  I'd be quite surprised if
there's a valid use for trusting them for modules or firmware given
that namespaces have no business loading modules or firmware at all.

>
>>  - There may be utility in allowing a new key to be added to the
>> keyring at runtime subject to a requirement that a PCR get extended.
>
> The builtin keyring is locked, but they could be added to the secondary
> keyring.

Again, I think that wrapping this up in the "keyring" term is
problematic.  I'm saying that I can see a use case for allowing a
brand new key (not rooted anywhere in particular) to be added to the
list of trusted signing keys for modules so long as a PCR is extended
with that key.  That would let me seal things to a non-tampered-kernel
configuration by sealing them against an unextended PCR such that a
user who loaded a module not signed by the initial trusted key would
not be able to unseal the secrets.

>
>> The keyring subsystem provides a fancy syscall interface, a fancy
>> naming interface, a fancy protection interface, a fancy way to link
>> keys to threads and processes, etc, none of which seems particularly
>> useful here.  Using a "trusted" key for this purpose seems entirely
>> pointless (we can't sign no matter what the kernel does, so what
>> exactly would the TPM be protecting?).
>
> The terms "trust"/"trusted" are being overloaded.  There is a "trusted"
> key type, which are TPM based.  Then there are "trusted" keyrings, which
> require any keys being added to the keyring to be signed by a key on the
> builtin/secondary keyrings.

I really, really wish the latter usage would just go away.  Saying "I
trust this key" is just asking for trouble if you don't specify *what*
you trust it for.

>
> I'm referring to the latter case of extending the secure boot of
> certificate chain of trust to a set of keys, in particular the builtin
> keys.  These keys can then become the root of trust for any other keys
> on other keyrings.

Why?  This is an honest question -- I genuinely do not see why this is
a sensible thing to do.  If I have a platform that is configured to
allow modules signed by the Microsoft UEFI key to be loaded, why would
this imply that I also want to trust files with IMA signatures rooted
by the Microsoft UEFI key?  In fact, doing that seems likely to open
me up to remote attack depending on use case.

>
>>  The keyring subsystem is more
>> about restricting *usage* of keys, not *addition* of keys.  So it's
>> nice to use the keyring subsystem to add a key that grants access to a
>> resource (possibly some remote server) and restrict what can be done
>> with it, but the firmware/module usecase is entirely the other way
>> around: we're trying to restrict which keys can be added, and we're
>> allowing holders of the associated private keys to perform operations
>> that affect the local machine.
>
> Yes, from an IMA perspective, only allow files signed by a certain set
> of keys to be executed.   In a container, permit files signed by a
> different/additional set of keys to execute.

Now we're getting to the actual meat of this!  I can see legitimate
policy questions here.  For example, if I spawn a container, is it
okay for that container to execute a file that would not be permitted
to be executed outside that container?  (Both answers seem reasonable
depending on the administrator's goal.)

But I still tend to think that, even for IMA, we should be talking
about containerizing policy, not necessarily keyrings.  The cases
where the keyring interaction is interesting are (I think) cases where
you can also *write* to the IMA protected filesystem, in which case
you need the ability to sign in addition to verifying.

>
>> May I suggest a much, much simpler approach: use a plain old struct
>> list_head for each list of keys and use the crypto API directly for
>> verification?  Even better, use a list of registered verifier
>> callbacks where any callback in the list can say "ok, I recognize this
>> proposed firmware, module, etc".  Think LoadPin but without the LSM
>> baggage.  If someone really wants to use keyrings, then that facility
>> could use an optional module that registers a callback that does
>> exactly that.
>
> Last year at the Linux Security Summit, Petko Manolov and Mark Baush
> (Juniper) presented a very different use case scenario -
> http://kernsec.org/wiki/index.php/Linux_Security_Summit_2015/Abstracts/Manolov
>

I *still* see no reason that module policy and IMA policy should share
their implementations or interfaces.
