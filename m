Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92C50282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:19:19 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 262C5153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:19:19 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20150728183610.GB5307@cloud>
References: <20150728183610.GB5307@cloud>
	<20436.1438090619@warthog.procyon.org.uk>
To: josh@joshtriplett.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <31576.1438111153.1@warthog.procyon.org.uk>
Date: Tue, 28 Jul 2015 20:19:13 +0100
Message-ID: <31577.1438111153@warthog.procyon.org.uk>
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

josh@joshtriplett.org wrote:

> What's the advantage to using signatures here, rather than hashes?
> 
> What if we just made request_firmware take a cryptographically secure
> hash, and verify that the firmware supplied by userspace has that hash?
> Ideally, different firmware should have a different version, and often
> the kernel driver knows the specific versions it works with.
> 
> The main advantage of signatures would be the ability to update the
> firmware *without* updating the driver.  Is that a feature?  Is it
> really a problem to add a hash to the driver?

If you wanted to update *any* piece of firmware, you would have to update your
kernel.  Further, you'd have to keep a back catalogue of *all* the old
firmware versions that your device might support.

Further, there was a mismatch between the release of the linux-firmware
package, say, and the kernel such that the firmware was installed first, you
might render a whole load of users' systems unbootable - or, at least,
distinctly degraded in operation.  That could get lawyers involved;-)

David
