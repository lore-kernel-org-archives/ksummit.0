Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AAC4C910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 22:25:30 +0000 (UTC)
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EFDA9101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 22:25:29 +0000 (UTC)
Received: by mail-ua0-f169.google.com with SMTP id k90so71307954uak.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:25:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469830256.23563.200.camel@linux.vnet.ibm.com>
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
	<20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 29 Jul 2016 15:25:09 -0700
Message-ID: <CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
>> Hi Andy,
>>
>> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
>> ...
>> > I would like someone to explain why using the keyring mechanism for
>> > this in the first place is a good idea.
>> >
>> > As far as I can tell, the design goals of "keys trusted by the kernel
>> > for modules, firmware, etc" are:
>> >
>> >  - Keys are added at build time or, according to potentially
>> > system-specific rules, at boot time.
>> >
>> >  - Keys should specify what they're trusted *for*.
>>
>> Well, I'd argue that keys should specify what they are *intended* for by
>> the keyholder.  A useful security system could further restrict the key
>> as needed.
>
> We've already started.  Currently the kernel_read_file() and family of
> functions provide the LSM hooks needed for verifying file signatures of
> files read by the kernel.  The kernel_read_file_id enumeration is used
> to differentiate between callers.  Based on this enumeration, the
> *intended* for could be defined.  It would make sense to extend the IMA
> policy language to support *intended* for.
>

Having kernel_read_file know the purpose is a big step in the right
direction, although, as I think I and others have pointed out, just an
enum is insufficient -- for firmware, at least, the *name* is
relevant.

But this is almost orthogonal to what I'm talking about.  I'm saying
that, before seriously considering any extensions to using keyrings to
decide which files are okay for kernel_read_file() and similar, we
should first consider whether using keyrings *at all* for this is a
reasonable long-term approach.  Elsewhere in this thread, Jason Cooper
mentioned keyholders.  For this type of verification key, the holder
isn't even on the same machine as the kernel on which
kernel_read_file() is called.

Sure, one might want to configure a system so IMA is used for
kernel_read_file(), and one might want to configure IMA to use
keyrings, but that's far from being the only sensible configuration.

--Andy
