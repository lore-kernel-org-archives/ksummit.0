Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DB59720
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 15:39:11 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 058BA203
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 15:39:06 +0000 (UTC)
Received: by mail-oi0-f44.google.com with SMTP id y2so61939956oie.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 08:39:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161024164116.GB17252@sirena.org.uk>
References: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
	<20161022011925.6n3nhq23vbrly364@thunk.org>
	<20161024164116.GB17252@sirena.org.uk>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 27 Oct 2016 08:39:05 -0700
Message-ID: <CAPcyv4i2BV9i=CA=R=gHNFk5z4gEVhLmJSpYx-wV_Kam1L_nRQ@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "fuego@lists.linuxfoundation.org" <fuego@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Some ideas on open source testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 24, 2016 at 9:41 AM, Mark Brown <broonie@kernel.org> wrote:
[..]
>> Maybe that would be a 90% solution for many file system and even
>> device driver authors, assuming the necesary SOC IP blocks could be
>> emulated by qemu.
>
> qemu emulation isn't really that useful for driver testing, the quality
> of the emulation with respect to the hardware is generally not super
> hot.

The other problem with emulation is testing corner cases and failures.
I doubt the qemu project would want to carry deliberately broken
emulations just for test purposes. This is why I ended up using
interface mocking (the '--wrap=' linker option) for the libnvdimm unit
test suite.

I have found this method effective for testing device-driver routines
in the absence of hardware.
