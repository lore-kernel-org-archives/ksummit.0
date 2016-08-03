Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4ED36956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:20:40 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57170241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 17:20:39 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id s189so151072492vkh.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 10:20:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160803164452.GM4541@io.lakedaemon.net>
References: <20160801230435.GF4541@io.lakedaemon.net>
	<CALCETrUwNdXdww5Bat908reeDiXmu3FsNTQg6NTJ5G71ZoRZ-A@mail.gmail.com>
	<20160801233036.GH4541@io.lakedaemon.net>
	<CALCETrWDsMdU2-AWQC4wYvotnNd2ydWT15Ckq0nZaNRJZOtZ-g@mail.gmail.com>
	<CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
	<CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
	<20160802122005.GI4541@io.lakedaemon.net>
	<CALCETrVEY=opRPGKy=P9h8s+TC_K19WnBJ2svXT+=_FnqRF1Mw@mail.gmail.com>
	<CALCETrVZtn_SmeN1YX9_+2g+bEAHsfJJ7KQH7-eC_mU3O+0x2w@mail.gmail.com>
	<CALCETrX+-iD6=yECjZqG3Zfc2QnGxhom4tyUCUu5Kz3G4Y2Uxw@mail.gmail.com>
	<20160803164452.GM4541@io.lakedaemon.net>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 10:20:17 -0700
Message-ID: <CALCETrUUrYJk-WoTEMinxJyLG7TfJJAh+v3bZ1XsoufyjR99xg@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
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

On Wed, Aug 3, 2016 at 9:44 AM, Jason Cooper <jason@lakedaemon.net> wrote:
> Hi Andy,
>
> On Tue, Aug 02, 2016 at 08:07:17AM -0700, Andy Lutomirski wrote:
>> On Aug 2, 2016 5:20 AM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>> > On Mon, Aug 01, 2016 at 04:45:20PM -0700, Andy Lutomirski wrote:
>> > > On Aug 1, 2016 4:30 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>> > > > On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wrote:
>> > > > > On Aug 1, 2016 4:04 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>> > ...
>> > > > > > Assuming Andy's lightweight signature scheme, it would probably be best
>> > > > > > to do a lookup based on the sha256 hash of the file.  Then pathnames
>> > > > > > don't matter, and bad files don't even get to the signature checking
>> > > > > > code.
>> > > > > >
>> > > > >
>> > > > > I'm not sure I understand what you mean.  What table would we look the hash
>> > > > > up in?  What are we finding in that table?
>> > > >
>> > > > From the other subthread:
>> > > >
>> > > > > Then, to verify a signature, the kernel hashes the blob, generates its
>> > > > > own linux_blob_signed_data, memcmps it to the one that Kyle signed
>> > > > > (and rejects if they differ *at all*), and then verifies the
>> > > > > signature.  (Do not try to be clever and parse the supplied
>> > > > > linux_blob_signed_data -- there is a long and storied history of
>> > > > > equivalent ideas being implemented incorrectly, and I can dig out
>> > > > > literature references if you really want.  Just generate your own and
>> > > > > memcmp it, which leaves no room for ambiguity.)
>> > > > >
>> > > >
>> > > > So, I'm suggesting that when "the kernel hashes the blob", it use that
>> > > > hash to locate *which* "Kyle-signed" linux_blob_signed_data it needs to
>> > > > compare against.  That's all, just removing the filename from the
>> > > > equation. :-)
>> > >
>> > > So Kyle would generate a list of signatures indexed by the blob's hash
>> > > instead of generating things like "iwlwifi-whatever.ucode.sig"?  Seems
>> > > okay.  It'll keep the existing hooks working, I think.  Of course, we still
>> > > need to check the "iwlwifi-whatever.ucode" bit to confirm that it matches
>> > > Kyle's signed data.
>> >
>> > Right.  That's where it may be better to use a version string, say the
>> > sha1 from linux-firmware.git, or the upstream version number.  However,
>> > that route means we can't easily 'build our own linux_blob_signed_data
>> > and do a memcmp.' since userspace may not have that info handy.
>>
>> I don't think I agree, although iwlwifi may not be the best example.
>
> merf.  No, that was a half-baked idea (version numbers and such).
>
>> The driver will say request_firmware("iwlwifi-whatever.ucode", ...,
>> "Intel") or similar.  The distro compiles the driver.  Afterwards, Intel
>> releases an updated, backwards-compatible blob.
>>
>> If root trusts Intel, root can install that blob along with Kyle or Intel's
>> signature, and the kernel should accept it.  We can achieve this by Kyle
>> signing the whole struct *and providing the signed struct* or by Intel
>> doing the equivalent operation.
>
> I agree, but aren't a lot of the files in linux-firmware hex dumps?
> meaning that 'compiling' is just reverting them to binary.  Almost akin
> to a deterministic build.  Intel's signature should still verify.
>
> Having Kyle's signature adds weight since an after-the-fact attacker
> would have to compromise two locations instead of just one.

I don't think that most vendors supply signatures right now, though.

>
>> But we do need the kernel to verify the "iwlwifi-whatever.ucode" string to
>> prevent an attack in which someone does:
>>
>> cp other-signed-thing.ucode iwlwifi-whatever.ucode
>
> How so?  The sha256 of the blob won't match, the signature will fail.
>

I'm assuming the attacker has the ability to validly sign
other-signed-thing.ucode.  For example, suppose that Eviltel wanted to
compromise Intel hardware and released a firmware blob that worked
correctly on Eviltel hardware but did bad things if loaded into an
Intel card.  The verification scheme should prevent Kyle's signature
on the Eviltel blob from being abused to load it into the Intel
device.

> And besides, you seems to be saying the kernel needs to verify the
> filename, yet the command you give spoofs that filename...  You seem to
> be proving *my* point ;-)

?

I'm saying that my attack should fail because the kernel should verify
that Kyle signed a message saying "the blob with has xyz is okay to
use for drivers that request 'other-signed-thing.ucode'".  Drivers
that request 'iwlwifi-whatever.ucode' won't accept that.

>
>> and thus causes the driver to upload something harmful to the card.  The
>> reason the textual firmware name works here (for using Kyle's signature and
>> for distro signatures) is that the string does uniquely define the firmware
>> purpose for Linux.
>
> Back to my earlier suggestion: The sha256 hash of the blob uniquely
> identifies the blob, and gives us a more flexible system.  We care about
> the blob, not the name.  git does the same thing, but with sha1.
>
> We can still happily use the filename in the request_firmware() call,
> it's just an untrusted fs lookup string.  Ultimately, it's the hash of the
> blob that matters.

But this is vulnerable to exactly the attack above, right?

To clarify, I'm not saying I care at all about the actual on-disk name
of the file.  I'm saying that I think Kyle should sign something that
includes the literal string passed to request_firmware, as that string
defines the intended purpose of the blob.  In most cases, they happen
to be the same string.

>
>> If needed for vendor relations, we could accept an alternate format for
>> vendor keys.  In that case, we avoid the wrong-blob attack by checking that
>> the key we verify with matches the expected vendor and hope that the vendor
>> doesn't release two pieces of hardware with firmwares that damage or attack
>> each other.
>
> -EPARSE.

What I mean is: Kyle would sign a structure defined by the kernel, but
if necessary would also accept a different signature format from a
hardware vendor if the vendor wanted us to.
