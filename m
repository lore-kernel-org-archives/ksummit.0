Return-Path: <pjones@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BC10409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:52:12 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1EA9B215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 19:52:12 +0000 (UTC)
Date: Tue, 28 Jul 2015 15:52:08 -0400
From: Peter Jones <pjones@redhat.com>
To: David Howells <dhowells@redhat.com>
Message-ID: <20150728195208.GB22263@redhat.com>
References: <20150728184730.GA22263@redhat.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096326.26913.180.camel@infradead.org>
	<31518.1438110849@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <31518.1438110849@warthog.procyon.org.uk>
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org,
	richard@hughsie.com, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 08:14:09PM +0100, David Howells wrote:
> Peter Jones <pjones@redhat.com> wrote:
> 
> > And even past there - if the firmware update is compliant with NIST
> > SP800-147 (which they really all /should/ be, but we know how that
> > goes), then the actual blob that gets passed to the firmware still must
> > be signed with a key trusted by the firmware.
> 
> This is just BIOS updating, right, and not, say, for supplying firmware to my
> DVB cards?
> 
> Though I suppose the technique might be generally applicable.

It singles out system firmware quite a bit, yes, though it isn't clear
to me that you /couldn't/ read it against updates for a PCI Option ROM
or even the binary we upload to a running card for wifi if you chose to
implement your hardware that way.

Additionally, if you're on a modernish UEFI system:

a) the "Capsule Update" mechanism we're using for firmware updates can
be used on option roms, and it can validate them first and return
EFI_SECURITY_VIOLATION to us if they don't validate, and
b) UEFI Option ROMs are just PE binaries, and if Secure Boot is enabled,
if they don't verify correctly against the SB databases, they don't get
loaded and run.

So there are multiple layers of protection there.

-- 
        Peter
