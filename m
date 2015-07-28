Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 629EC9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:10:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CEF4C1C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:10:40 +0000 (UTC)
Message-ID: <1438099839.5441.165.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 09:10:39 -0700
In-Reply-To: <CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2015-07-28 at 09:05 -0700, Andy Lutomirski wrote:
> On Tue, Jul 28, 2015 at 8:31 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Tue, 2015-07-28 at 08:22 -0700, Andy Lutomirski wrote:
> >> On Tue, Jul 28, 2015 at 8:10 AM, James Bottomley
> >> <James.Bottomley@hansenpartnership.com> wrote:
> >> > On Tue, 2015-07-28 at 14:36 +0100, David Howells wrote:
> >> >> Patches are in the works for the provision of signatures for firmware blobs
> >> >> for the kernel to check, thus allowing the kernel to act as gatekeeper on what
> >> >> firmware blobs get loaded where.
> >> >>
> >> >> Note that it has been agreed that signatures will be in separate files to the
> >> >> firmware blobs so as not to potentially corrupt a blob by copying it to an OS
> >> >> that doesn't expect the signature.  Also, we don't want to modify the blob in
> >> >> case of IP.
> >> >>
> >> >> We're currently using PKCS#7/CMS messages as the signature format since we
> >> >> have a PKCS#7 parser and verifier already in the kernel for kexec.
> >> >>
> >> >> Patches have been proposed for inclusion in security/next that allow PKCS#11
> >> >> to be used to supply h/w keys to the sign-file program and to the kernel build
> >> >> process.
> >> >>
> >> >> There are a number of areas that could do with sorting out with regard key
> >> >> policy:
> >> >>
> >> >>  (1) Should signatures produced by the manager of the linux-firmware package
> >> >>      be allowed only?
> >> >
> >> > Firmware is a binary blob usually with no decompilation.  How would the
> >> > package manager know its provenance?  The only people who know are the
> >> > people who write the driver.  If they sign, I think we have to accept
> >> > their signature and if not, we could have a weaker level of trust on the
> >> > package manager based on unbroken chain of transmission from the
> >> > firmware provider, but you'd have to trust the packaging organisation.
> >>
> >> But IMO we really don't want trust $RANDOM_USB_WIDGET_VENDOR to supply
> >> firmware for the GPU, for example.
> >
> > I'm not saying that.  I'm saying that if we verify some chain in
> > firmware, it has to be from a trusted supplier to us, meaning we invest
> > trust already in the supplier.  However, the trusted supplier should be
> > the original device vendor.  if $RANDOM_USB_WIGET_VENDOR isn't the
> > original vendor, then this would not trust them.  If they are, it's
> > hobson's choice ... and god help us.
> 
> Sure, but we shouldn't stick the USB vendor's key into the system
> keyring.  I'm fine with having it in the kernel or in some database,
> though.

Actually, I don't think we should have a general system keyring for
firmware.  We need driver specific ones, so the USB vendor key is *only*
trusted for that particular driver.  Putting vendor keys into our
general keyring would be a recipe for inviting abuse.

James
