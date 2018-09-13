Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56870C84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:41:29 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC4632C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:41:28 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id q5-v6so2857628iop.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 04:41:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180913112738.GA8411@sirena.org.uk>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
	<20180912185949.GC25894@wrath>
	<CAKMK7uFpat8PxSq9EqEJ7Ec43o_0AcMzxFGC_fLY0c-Ncycegg@mail.gmail.com>
	<20180913112738.GA8411@sirena.org.uk>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 13 Sep 2018 13:41:26 +0200
Message-ID: <CAKMK7uEwX1GLN5K1=dPq9rdpVBPS259zYj3r25A=dWBqHUV2Jw@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 13, 2018 at 1:27 PM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, Sep 12, 2018 at 10:05:19PM +0200, Daniel Vetter wrote:
>> On Wed, Sep 12, 2018 at 8:59 PM, Darren Hart <dvhart@infradead.org> wrote:
>
>> > Regarding tooling, Andy and I have documented our process and shared our
>> > tooling which has evolved to try and prevent human error. I believe DRM
>> > has something even more evolved.
>
>> > https://github.com/dvhart/pdx86-tools
>
>> Hm, the gen-config scrips looks like a really neat idea. Atm we
>> manually maintain some configs for all the drm drivers, but this is
>> much better I think. Next step up would be to double-check that make
>
> Yes, I've got a script like that as well (mine's a *tiny* bit less
> sophisticated) - it's super handy if you frequently add new drivers.
>
>> Bit of googling and fooling around says make CONFIG_FOO=y olddefconfig
>> seems to do this, including enabling (all?) dependencies you need.
>
> That only works for dependencies that are selected, if there's a config
> option that stops CONFIG_FOO being seen by the user (eg, having MFD_FOO
> preventing SUBSYSTEM_FOO being enabled) then it'll just get silently
> ignored.

I guess I fumbled something with my testing, this does indeed not work
like I hoped :-/
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
