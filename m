Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 03D98910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:57:33 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E4DE274
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:57:32 +0000 (UTC)
Date: Thu, 28 Jul 2016 16:57:28 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160728165728.GR4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
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

Hi Andy,

On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
...
> I would like someone to explain why using the keyring mechanism for
> this in the first place is a good idea.
> 
> As far as I can tell, the design goals of "keys trusted by the kernel
> for modules, firmware, etc" are:
> 
>  - Keys are added at build time or, according to potentially
> system-specific rules, at boot time.
> 
>  - Keys should specify what they're trusted *for*.

Well, I'd argue that keys should specify what they are *intended* for by
the keyholder.  A useful security system could further restrict the key
as needed.

e.g. the Microsoft key may say it's intended for "Verifying binaries
issued by Microsoft".  A Linux user would want to restrict that to
verifying updated boot shims for UEFI.

If nothing else, we need to grok the lessons learned from the CA
system.

> Some keys should be trusted to load modules.  Some keys should be
> trusted to load specific firmware files.

"Some keys should be restricted to verifying modules.  Some keys should
be restricted to verifying specific firmware files." [0]

We'll know the system is designed correctly if we don't mind the
Microsoft key being in the keyring.

There's definitely a larger conversation to be had here.  The Kernel is
a *part* of the system, and should be a *part* of the security of the
system.  Attempting to make it the whole enchilada risks making the same
design errors as TrustZone.  "Just put all your eggs in this *other*
basket.  No one can see in it, but it has access to everything on the
system.  Oh, you have proprietary, complicated, un-reviewed DRM code
that parses unsanitized input?  Sure, put it in there with the key
manager.  No problem, it's magic."  Moving cheese. [1]

thx,

Jason.

[0] A wise man once told me to avoid the word 'trust' in conversations
about security.  It's a vague term whose meaning varies from person to
person and from situation to situation.

[1] https://bits-please.blogspot.de/2016/06/extracting-qualcomms-keymaster-keys.html
