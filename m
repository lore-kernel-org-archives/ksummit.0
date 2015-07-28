Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E60EE268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:54:34 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 582FC1B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:54:34 +0000 (UTC)
Date: Tue, 28 Jul 2015 11:54:28 -0700
From: josh@joshtriplett.org
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150728185428.GD5307@cloud>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438109061.5441.202.camel@HansenPartnership.com>
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 11:44:21AM -0700, James Bottomley wrote:
> On Tue, 2015-07-28 at 11:36 -0700, josh@joshtriplett.org wrote:
> > On Tue, Jul 28, 2015 at 02:36:59PM +0100, David Howells wrote:
> > > Patches are in the works for the provision of signatures for firmware blobs
> > > for the kernel to check, thus allowing the kernel to act as gatekeeper on what
> > > firmware blobs get loaded where.
> > > 
> > > Note that it has been agreed that signatures will be in separate files to the
> > > firmware blobs so as not to potentially corrupt a blob by copying it to an OS
> > > that doesn't expect the signature.  Also, we don't want to modify the blob in
> > > case of IP.
> > > 
> > > We're currently using PKCS#7/CMS messages as the signature format since we
> > > have a PKCS#7 parser and verifier already in the kernel for kexec.
> > > 
> > > Patches have been proposed for inclusion in security/next that allow PKCS#11
> > > to be used to supply h/w keys to the sign-file program and to the kernel build
> > > process.
> > 
> > What's the advantage to using signatures here, rather than hashes?
> > 
> > What if we just made request_firmware take a cryptographically secure
> > hash, and verify that the firmware supplied by userspace has that hash?
> > Ideally, different firmware should have a different version, and often
> > the kernel driver knows the specific versions it works with.
> > 
> > The main advantage of signatures would be the ability to update the
> > firmware *without* updating the driver.  Is that a feature?  Is it
> > really a problem to add a hash to the driver?
> 
> So in that case, what's the advantage of separating the firmware from
> the driver?  If we can't update it without updating the driver, we could
> just build it in and save a huge amount of hassle.

Licensing, which is a large part of why we have request_firmware to
begin with.  Let's not make distribution kernel maintainers' lives more
difficult than they already are.

For the drivers I'm most familiar with, new versions of firmware have
new filenames and are requested from userspace in most-preferred to
least-preferred order.  The expectation of those drivers is that any
given firmware version should be binary-identical.

Are there drivers for which the expected firmware update cycle is *more*
rapid than the kernel release cycle?  That would be quite a surprise,
though not an unpleasant one.

- Josh Triplett
