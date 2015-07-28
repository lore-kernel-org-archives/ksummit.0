Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76F53268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:36:16 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1870879
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 18:36:16 +0000 (UTC)
Date: Tue, 28 Jul 2015 11:36:10 -0700
From: josh@joshtriplett.org
To: David Howells <dhowells@redhat.com>
Message-ID: <20150728183610.GB5307@cloud>
References: <20436.1438090619@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20436.1438090619@warthog.procyon.org.uk>
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

On Tue, Jul 28, 2015 at 02:36:59PM +0100, David Howells wrote:
> Patches are in the works for the provision of signatures for firmware blobs
> for the kernel to check, thus allowing the kernel to act as gatekeeper on what
> firmware blobs get loaded where.
> 
> Note that it has been agreed that signatures will be in separate files to the
> firmware blobs so as not to potentially corrupt a blob by copying it to an OS
> that doesn't expect the signature.  Also, we don't want to modify the blob in
> case of IP.
> 
> We're currently using PKCS#7/CMS messages as the signature format since we
> have a PKCS#7 parser and verifier already in the kernel for kexec.
> 
> Patches have been proposed for inclusion in security/next that allow PKCS#11
> to be used to supply h/w keys to the sign-file program and to the kernel build
> process.

What's the advantage to using signatures here, rather than hashes?

What if we just made request_firmware take a cryptographically secure
hash, and verify that the firmware supplied by userspace has that hash?
Ideally, different firmware should have a different version, and often
the kernel driver knows the specific versions it works with.

The main advantage of signatures would be the ability to update the
firmware *without* updating the driver.  Is that a feature?  Is it
really a problem to add a hash to the driver?

- Josh Triplett
