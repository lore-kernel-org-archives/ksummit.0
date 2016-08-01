Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 133E28A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:57:10 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04E59275
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 20:57:08 +0000 (UTC)
Date: Mon, 1 Aug 2016 22:57:06 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: Andy Lutomirski <luto@amacapital.net>,
	Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20160801205706.GE3296@wotan.suse.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXZicXvXPFC=NenCCJ76rB=2shBzEfkUb4xgHh0Vrub+A@mail.gmail.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Kyle McMartin <kyle@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>, Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 01, 2016 at 01:37:43PM -0700, Andy Lutomirski wrote:
> On Mon, Aug 1, 2016 at 1:23 PM, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> > On Mon, Aug 01, 2016 at 10:59:57AM -0700, Andy Lutomirski wrote:
> >> On Mon, Aug 1, 2016 at 10:29 AM, Luis R. Rodriguez <mcgrof@suse.com> wrote:
> >> > On Sun, Jul 31, 2016 at 11:20:08AM -0700, Andy Lutomirski wrote:
> >> >> If IMA doesn't want or need to verify the purpose of the loaded file, fine.
> >> >
> >> > So other than origin you are indicating a proper LSM that would want to vet firmware
> >> > should want purpose ? Is that right?
> >>
> >> A security policy that wants to provide strong protection should
> >> verify that whatever file is being loaded is being used for its
> >> authorized purpose.  The wireless regulatory subsystem should only
> >> load data signed by the wifi regulatory key, the iwlwifi driver should
> >> only accept firmware signed by the system *for the purpose of being
> >> used as iwlwifi firmware* (or perhaps signed by Intel), the nouveau
> >> driver should accept files signed for the purpose of being used as
> >> nvidia firmware and should reject things that are signed by Intel,
> >> etc.
> >>
> >> > If so I'd like to understand this suggestion
> >> > a bit better given we already have. So we have:
> >> >
> >> > #define __kernel_read_file_id(id) \
> >> >         id(UNKNOWN, unknown)            \
> >> >         id(FIRMWARE, firmware)          \
> >> >         id(FIRMWARE_PREALLOC_BUFFER, firmware)  \
> >> >         id(MODULE, kernel-module)               \
> >> >         id(KEXEC_IMAGE, kexec-image)            \
> >> >         id(KEXEC_INITRAMFS, kexec-initramfs)    \
> >> >         id(POLICY, security-policy)             \
> >> >         id(MAX_ID, )
> >> >
> >> >
> >> > #define __fid_enumify(ENUM, dummy) READING_ ## ENUM,
> >> > #define __fid_stringify(dummy, str) #str,
> >> >
> >> > enum kernel_read_file_id {
> >> >         __kernel_read_file_id(__fid_enumify)
> >> > };
> >> >
> >> > extern int kernel_read_file_from_path(char *, void **, loff_t *, loff_t,
> >> >                                       enum kernel_read_file_id);
> >> >
> >> > Are you saying FIRMWARE id is not sufficient ? What would be an example
> >> > purpose be here for FIRMWARE ?
> >>
> >> The string "iwlwifi-8265-21.ucode" would be a reasonable purpose, I
> >> think.  It could make sense to split out the vendor, too:
> >>
> >> .type = FIRMWARE,
> >> .vendor = "Intel",
> >> .purpose = "iwlwifi-8265-21.ucode",
> >>
> >> then distro policy could know to accept a file signed by Intel
> >> (because "Intel" would be mapped in some table to a public key), a
> >> file signed by the distro key where the signature (using PKCS#7
> >> auxiliarry data (or whatever it's called) or some other simpler
> >> protocol) indicates that the signed object is "iwlwifi-8265-21.ucode",
> >> or perhaps an IMA-verified file with an appropriate absolute path.
> >
> > OK thanks, this makes it clear.
> >
> > If you consider the existing kernel strategy for module signing as an LSM
> > (even though it is not yet), then the way firmware singing was being
> > designed currently was to match that LSM. That is, we'd have something
> > very similar to mod_verify_sig() just that when calling
> > verify_pkcs7_signature() would use VERIFYING_FIRMWARE_SIGNATURE, would
> > be used instead of VERIFYING_MODULE_SIGNATURE.
> >
> > We have:
> >
> > /*
> >  * The use to which an asymmetric key is being put.
> >  */
> > enum key_being_used_for {
> >         VERIFYING_MODULE_SIGNATURE,
> >         VERIFYING_FIRMWARE_SIGNATURE,
> >         VERIFYING_KEXEC_PE_SIGNATURE,
> >         VERIFYING_KEY_SIGNATURE,
> >         VERIFYING_KEY_SELF_SIGNATURE,
> >         VERIFYING_UNSPECIFIED_SIGNATURE,
> >         NR__KEY_BEING_USED_FOR
> > };
> >
> > In this light, what you describe would be an extension to this LSM and am
> > wondering if we can stage this so this so that this "vendor" and "purpose"
> > thing is dealt with after the same LSM strategy is matched to module signing
> > first. With this simple scheme we'd just have one key -- the linux-firmware
> > maintainer's key.
> >
> 
> I don't see why not.  After all, nothing is verifying the firmware
> name / purpose right not, so nothing would regress.

OK then as far as firmware signing is concerned I think this is agreed upon
material.

> > The second stage of firmware singing would be to iron out if vendors even want
> > to participate with a series of vendor + firmware file key and we'd have a
> > registry in the kernel built-in. We'd check then provenance in 2 levels:
> >
> >   o linux-firmware maintainer key
> >   o vendor key for the target file
> 
> Given Johannes Berg's request to move regulatory database loading into
> the kernel, there might be an earlier use case.

I share his goal, and in fact getting rid of needing CRDA was my original
motivation to add firmware signing support. When we reviewed how this would
work -- we seemed to have agreed that Seth (wireless-regdb maintainer) would no
longer need to sign the regulatory.bin file and whatever file we end up with
would instead be signed by Kyle, the linux-firmware maintainer.

> Specifically, either
> set up the regulatory database with a vendor of
> "linux-wireless-regulatory" and teach the verification code that this
> particular vendor *requires* a vendor signature (and not, say, a
> distro signature) or allocate it its own enum value for the type and
> teach the verification code to work with that.

Well reason we ended up deciding on just one key and linux-firmware was
that people already package linux-firmware and we'd hope no one will
put a gun to Kyle's head to do evil things. Nevertheless, what you
describe of augmenting keys for files / purpose seems sensible, however
this should be optional. For our case in 802.11 we seemed to be OK
with Kyle's key last we discussed.

At least for starters.

> In any event, consolidating the code so there's a single "verify this
> loaded blob" function that implements all the policy would probably
> make this easier to write, maintain, and audit.

Agreed. So LSM'ifyng this.

 Luis
