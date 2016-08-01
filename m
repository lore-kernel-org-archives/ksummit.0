Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D3589F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 21:15:14 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A689729D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 21:15:13 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id s189so108632090vkh.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 14:15:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160801205706.GE3296@wotan.suse.de>
References: <1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<20160801202320.GB3296@wotan.suse.de>
	<CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
	<20160801205706.GE3296@wotan.suse.de>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 14:14:52 -0700
Message-ID: <CALCETrXCfZnX3MtV=DHov1+qcWZOOcEzTMXxVx5zr1QYtAVoPw@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>, Andy Lutomirski <luto@kernel.org>,
	Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 1, 2016 at 1:57 PM, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> On Mon, Aug 01, 2016 at 01:37:43PM -0700, Andy Lutomirski wrote:
>> On Mon, Aug 1, 2016 at 1:23 PM, Luis R. Rodriguez <mcgrof@suse.com> wrote:
>> > The second stage of firmware singing would be to iron out if vendors even want
>> > to participate with a series of vendor + firmware file key and we'd have a
>> > registry in the kernel built-in. We'd check then provenance in 2 levels:
>> >
>> >   o linux-firmware maintainer key
>> >   o vendor key for the target file
>>
>> Given Johannes Berg's request to move regulatory database loading into
>> the kernel, there might be an earlier use case.
>
> I share his goal, and in fact getting rid of needing CRDA was my original
> motivation to add firmware signing support. When we reviewed how this would
> work -- we seemed to have agreed that Seth (wireless-regdb maintainer) would no
> longer need to sign the regulatory.bin file and whatever file we end up with
> would instead be signed by Kyle, the linux-firmware maintainer.

Sounds entirely reasonable.

>
>> Specifically, either
>> set up the regulatory database with a vendor of
>> "linux-wireless-regulatory" and teach the verification code that this
>> particular vendor *requires* a vendor signature (and not, say, a
>> distro signature) or allocate it its own enum value for the type and
>> teach the verification code to work with that.
>
> Well reason we ended up deciding on just one key and linux-firmware was
> that people already package linux-firmware and we'd hope no one will
> put a gun to Kyle's head to do evil things. Nevertheless, what you
> describe of augmenting keys for files / purpose seems sensible, however
> this should be optional. For our case in 802.11 we seemed to be OK
> with Kyle's key last we discussed.

Let me put on my security person / armchair cryptographer hat:

NAK NAK NAK NAK NAK

The 90s are over.  Saying "I threw together this protocol.  It has
these known weaknesses, but I don't think they really matter all that
much." was a pretty bad idea in the nineties (witness SSL2, SSL3, WEP,
etc), and IMNSHO it's simply inexcusable now.

David Howells implemented PKCS7 authenticated attribute support in the
kernel for a reason.  If Kyle will use PKCS7 signatures, get the
authenticated attribute format right and *use it* from day one.  Or he
could use my old suggestion instead: rather than signing the firmware
blob itself, sign a little data structure like this:

struct linux_blob_signed_data {
  unsigned char magic[8];  // "LINUXSIG" -- for domain separation in
case someone messes up
  uint32_t version;  // = 1
  unsigned char sha256[32];  // SHA256 hash of the blob
  uint32_t type;  // what type of thing this is (firmware, etc)
  unsigned char description[];  // the remainder of the structure is
"iwlwifi-whatever.ucode", etc.
};

Then, to verify a signature, the kernel hashes the blob, generates its
own linux_blob_signed_data, memcmps it to the one that Kyle signed
(and rejects if they differ *at all*), and then verifies the
signature.  (Do not try to be clever and parse the supplied
linux_blob_signed_data -- there is a long and storied history of
equivalent ideas being implemented incorrectly, and I can dig out
literature references if you really want.  Just generate your own and
memcmp it, which leaves no room for ambiguity.)

If you're using something other than PKCS7 (which I'd suggest -- PKCS7
is a nasty, ugly, overcomplicated standard), use the struct
linux_blob_signed_data approach.

This is only a few lines of code, and I think there is no excuse for
getting it wrong.  Heck, this would be trivial to implement in pretty
much any scripting language better than bash.

(Sorry to bash your signature thingy, Kyle, but all I'm asking you do
to is either use the fancy pkcs7 openssl options (*gag*) or sign a
trivial data structure instead of the file itself.  If you like, I
hereby offer to write the code if you give me a baseline to work
with.)

--Andy
