Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1FC77A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 21:34:10 +0000 (UTC)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 832DC1D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 21:34:09 +0000 (UTC)
Received: by mail-oi0-f46.google.com with SMTP id p136so24681311oic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 14:34:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161027211504.GA23540@roeck-us.net>
References: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
	<20161022011925.6n3nhq23vbrly364@thunk.org>
	<20161024164116.GB17252@sirena.org.uk>
	<CAPcyv4i2BV9i=CA=R=gHNFk5z4gEVhLmJSpYx-wV_Kam1L_nRQ@mail.gmail.com>
	<20161027211504.GA23540@roeck-us.net>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 27 Oct 2016 14:34:08 -0700
Message-ID: <CAPcyv4iGjy7xtPLW0cp9x92RtHqceF0FWPU3jRb1aMyUi6b7Lw@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
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

On Thu, Oct 27, 2016 at 2:15 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> Hi Dan,
>
> On Thu, Oct 27, 2016 at 08:39:05AM -0700, Dan Williams wrote:
>> On Mon, Oct 24, 2016 at 9:41 AM, Mark Brown <broonie@kernel.org> wrote:
>> [..]
>> >> Maybe that would be a 90% solution for many file system and even
>> >> device driver authors, assuming the necesary SOC IP blocks could be
>> >> emulated by qemu.
>> >
>> > qemu emulation isn't really that useful for driver testing, the quality
>> > of the emulation with respect to the hardware is generally not super
>> > hot.
>>
>> The other problem with emulation is testing corner cases and failures.
>> I doubt the qemu project would want to carry deliberately broken
>> emulations just for test purposes. This is why I ended up using
>> interface mocking (the '--wrap=' linker option) for the libnvdimm unit
>> test suite.
>>
>
> I understand what you are saying - emulations such as qemu have their
> limitations, are ultimately only as good as their programmers, and will
> never be able to replace real hardware.
>
> However, you are turning a big advantage of a system emulation - its
> inherent ability to insert errors and corner cases at will without
> having to change the code running on the DUT - into a disadvantage.
> A second advantage - the practically unlimited scalability of a software
> based emulation - is completely ignored.
>
> I don't know if the qemu project would want to get involved in error
> insertion, and I did not ask. However, I have seen many test systems
> where error insertion was used specifically to test error handling
> and corner cases. This is actually quite important, since such cases
> are much more difficult to test with real hardware (which, contrary
> to common thinking, isn't typically that buggy). Such test systems
> tend to be extremely powerful for detecting corner cases.
>
> In-system or white-box tests such as the one used for libnvdimm have
> advantages, but there is also a downside. By definition such tests
> modify the DUT, and changing the test requires updating the code running
> on the DUT. The tests tend to depend on DUT-internal code structure,
> need to be persistently and actively maintained, and is thus often more
> costly to maintain in the long term than code running in an emulator.
>
> I am not trying to say that such code - or module test code in general -
> would not be useful; it does have its purpose. However, it isn't perfect
> either.
>
> One could argue that an external test system - let it be qemu or something
> else - could be much more effective in dynamically (or even statically)
> creating various test cases and exercising them.
>
> Sure, qemu doesn't support many drivers. That is, however, to a large part
> due to people not willing to or interested in writing those drivers (which
> isn't actually that difficult). But even for existing drivers one could
> argue that it is actually beneficial for them to be less than perfect,
> since that makes it more likely to find driver errors.
>
> Using some real numbers (fresh from Fengguang): 0day currently runs some
> 150,000 qemu boot tests per day (in addition to its 36,000 kernel builds
> per day). Those qemu tests generate ~2 error reports per day. There are
> ~18 build servers and 60+ servers running qemu tests. The system detects
> ~800 compile error per month (which translates to about ~25 per day).
> I am very grateful that those tests are being run, and I don't think
> that such large-scale testing would even remotely be possible without qemu.
>
> Yes, qemu is far from perfect. My suggestion would be to improve instead
> of discounting it.
>
> I absolutely agree that testing on real hardware is and will always be
> necessary. However, it also has its limitations. Instead of discounting
> qemu and trying to run all tests on real hardware (all 150,000 per day
> of it), I strongly believe that testing as much as possible with qemu
> (or pick your preferred emulator), and to focus testing with real hardware
> on cases which are difficult or impossible to test with an emulator,
> would be much more rewarding and offer much more "bang for the buck".
>

Agree.  The value of qemu should not be discounted and more emulations
for existing hardware IP blocks is always a good thing.  For example,
we now have the ability in the latest QEMU to emulate the ACPI tables
and device specific methods to describe NVDIMM resources.  That
enabling has uncovered kernel bugs and is part of the test suite going
forward.

However it does not cover the corner cases generated by
tools/testing/nvdimm/ and I do not think it should try.  White box
unit testing with interface mocking goes after a different class of
problems than emulation, and the value of emulation goes well beyond
testing.
