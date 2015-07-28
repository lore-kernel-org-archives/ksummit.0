Return-Path: <mcgrof@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 60BD7409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:06:23 +0000 (UTC)
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ADDD5145
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:06:22 +0000 (UTC)
Received: by obre1 with SMTP id e1so91860205obr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 12:06:22 -0700 (PDT)
MIME-Version: 1.0
Sender: mcgrof@gmail.com
In-Reply-To: <20150728185428.GD5307@cloud>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 28 Jul 2015 12:06:02 -0700
Message-ID: <CAB=NE6VLS6Zt+ds8gs=15bt1_OTbWp=7TGfe9kmkRd0_MQfnDw@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 11:54 AM,  <josh@joshtriplett.org> wrote:
> On Tue, Jul 28, 2015 at 11:44:21AM -0700, James Bottomley wrote:
>> On Tue, 2015-07-28 at 11:36 -0700, josh@joshtriplett.org wrote:
>> > On Tue, Jul 28, 2015 at 02:36:59PM +0100, David Howells wrote:
>> > > Patches are in the works for the provision of signatures for firmware blobs
>> > > for the kernel to check, thus allowing the kernel to act as gatekeeper on what
>> > > firmware blobs get loaded where.
>> > >
>> > > Note that it has been agreed that signatures will be in separate files to the
>> > > firmware blobs so as not to potentially corrupt a blob by copying it to an OS
>> > > that doesn't expect the signature.  Also, we don't want to modify the blob in
>> > > case of IP.
>> > >
>> > > We're currently using PKCS#7/CMS messages as the signature format since we
>> > > have a PKCS#7 parser and verifier already in the kernel for kexec.
>> > >
>> > > Patches have been proposed for inclusion in security/next that allow PKCS#11
>> > > to be used to supply h/w keys to the sign-file program and to the kernel build
>> > > process.
>> >
>> > What's the advantage to using signatures here, rather than hashes?
>> >
>> > What if we just made request_firmware take a cryptographically secure
>> > hash, and verify that the firmware supplied by userspace has that hash?
>> > Ideally, different firmware should have a different version, and often
>> > the kernel driver knows the specific versions it works with.
>> >
>> > The main advantage of signatures would be the ability to update the
>> > firmware *without* updating the driver.  Is that a feature?  Is it
>> > really a problem to add a hash to the driver?
>>
>> So in that case, what's the advantage of separating the firmware from
>> the driver?  If we can't update it without updating the driver, we could
>> just build it in and save a huge amount of hassle.
>
> Licensing, which is a large part of why we have request_firmware to
> begin with.

Not really, we have open source firmare now, both one under GPLv2 for
carl9170 [0], and then ath9k_htc [1] firmware under the Clear BSD
license which explicitly removes the the patent all patent grants [2],
that strategy however is now incompatible with the linux-firmware
policy which requires implicit or explicit patent grants provided [3].

The open firmware projects proved that open firmware works and is the
best engineering solution, what you end up putting in firmware just
needs to be engineered and tested best in collaboration *with* the
community, it doesn't mean you don't need firmware if you have the
hardware capability to use something for it.

[0] https://wireless.wiki.kernel.org/en/users/drivers/carl9170
[1] https://wireless.wiki.kernel.org/en/users/drivers/ath9k_htc
[2] https://github.com/qca/open-ath9k-htc-firmware/blob/master/LICENCE.TXT
[3] https://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/commit/?id=d3cf09a9765672a7f67991ec4fb64f3d92b387ba

> Let's not make distribution kernel maintainers' lives more
> difficult than they already are.

They can just disable firmware signing.

> For the drivers I'm most familiar with, new versions of firmware have
> new filenames and are requested from userspace in most-preferred to
> least-preferred order.  The expectation of those drivers is that any
> given firmware version should be binary-identical.
>
> Are there drivers for which the expected firmware update cycle is *more*
> rapid than the kernel release cycle?  That would be quite a surprise,
> though not an unpleasant one.

On open firmware this can happen but that is not the reason to have
firmware signing.

 Luis
