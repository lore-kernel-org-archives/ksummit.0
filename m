Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 819E991A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 22:54:38 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA2D21BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 22:54:37 +0000 (UTC)
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6RMsbfO063962 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:54:37 -0400
Received: from e28smtp09.in.ibm.com (e28smtp09.in.ibm.com [125.16.236.9])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24e1h9smmf-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:54:37 -0400
Received: from localhost
	by e28smtp09.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Thu, 28 Jul 2016 04:24:29 +0530
Received: from d28relay05.in.ibm.com (d28relay05.in.ibm.com [9.184.220.62])
	by d28dlp02.in.ibm.com (Postfix) with ESMTP id 7D6FB394005C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:24:27 +0530 (IST)
Received: from d28av01.in.ibm.com (d28av01.in.ibm.com [9.184.220.63])
	by d28relay05.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6RMqtWK19398998 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:22:55 +0530
Received: from d28av01.in.ibm.com (localhost [127.0.0.1])
	by d28av01.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6RMsQE6024282 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:24:26 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 27 Jul 2016 18:54:23 -0400
In-Reply-To: <CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
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
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469660063.23563.81.camel@linux.vnet.ibm.com>
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

On Mi, 2016-07-27 at 13:09 -0700, Andy Lutomirski wrote:
> On Wed, Jul 27, 2016 at 12:37 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> > On Mi, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
> >> On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:
> >> > On Wed, 2016-07-27 at 17:14 +0100, David Howells wrote:
> >> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> >> > >

> I would like someone to explain why using the keyring mechanism for
> this in the first place is a good idea.
> 
> As far as I can tell, the design goals of "keys trusted by the kernel
> for modules, firmware, etc" are:
> 
>  - Keys are added at build time or, according to potentially
> system-specific rules, at boot time.

Currently, only the builtin keys are loaded onto the .builtin_trusted
keys. The keyring is locked so that no other keys can be added.  Trust
in these keys is based on the secure boot signature chain of trust
verification of the kernel image.

>  - Keys should specify what they're trusted *for*.  Some keys should
> be trusted to load modules.  Some keys should be trusted to load
> specific firmware files.

No argument there.  Keys can be added to the secondary keyring that are
signed by any key on either the builtin or secondary keyrings.  We would
need to limit this to only keys that are trusted *for* are permitted to
add such *for* keys to the keyring. 

>  - The kernel only knows the public part of these keys, so there's no
> particular need to restrict who can see them, who can perform
> operations with them (there are no useful operations to perform other
> than, perhaps, "read the public key" or "try to load a module or
> firmware").

Agreed

>  - Trying to containerize them makes very little sense until someone
> proposes a resource that should be protected by such a key that might
> live in a container.

Mat Martineau posted patches that extend the concept of a trusted
keyring to userspace.  It would allow a trusted keyring (new root of
trust or based on the builtin/secondary keyrings) to be attached to a
container/namespace.

>  - There may be utility in allowing a new key to be added to the
> keyring at runtime subject to a requirement that a PCR get extended.

The builtin keyring is locked, but they could be added to the secondary
keyring.

> The keyring subsystem provides a fancy syscall interface, a fancy
> naming interface, a fancy protection interface, a fancy way to link
> keys to threads and processes, etc, none of which seems particularly
> useful here.  Using a "trusted" key for this purpose seems entirely
> pointless (we can't sign no matter what the kernel does, so what
> exactly would the TPM be protecting?). 

The terms "trust"/"trusted" are being overloaded.  There is a "trusted"
key type, which are TPM based.  Then there are "trusted" keyrings, which
require any keys being added to the keyring to be signed by a key on the
builtin/secondary keyrings.

I'm referring to the latter case of extending the secure boot of
certificate chain of trust to a set of keys, in particular the builtin
keys.  These keys can then become the root of trust for any other keys
on other keyrings.

>  The keyring subsystem is more
> about restricting *usage* of keys, not *addition* of keys.  So it's
> nice to use the keyring subsystem to add a key that grants access to a
> resource (possibly some remote server) and restrict what can be done
> with it, but the firmware/module usecase is entirely the other way
> around: we're trying to restrict which keys can be added, and we're
> allowing holders of the associated private keys to perform operations
> that affect the local machine.

Yes, from an IMA perspective, only allow files signed by a certain set
of keys to be executed.   In a container, permit files signed by a
different/additional set of keys to execute.

> May I suggest a much, much simpler approach: use a plain old struct
> list_head for each list of keys and use the crypto API directly for
> verification?  Even better, use a list of registered verifier
> callbacks where any callback in the list can say "ok, I recognize this
> proposed firmware, module, etc".  Think LoadPin but without the LSM
> baggage.  If someone really wants to use keyrings, then that facility
> could use an optional module that registers a callback that does
> exactly that.

Last year at the Linux Security Summit, Petko Manolov and Mark Baush
(Juniper) presented a very different use case scenario -
http://kernsec.org/wiki/index.php/Linux_Security_Summit_2015/Abstracts/Manolov

Mimi
