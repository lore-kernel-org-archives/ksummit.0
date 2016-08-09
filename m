Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7CA8B3EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 12:04:56 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 085A81EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 12:04:55 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id f6so786803ith.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Aug 2016 05:04:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160809081734.GA10279@kroah.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan>
	<4826466.kMrAaT2rsn@avalon> <87d1lpose8.fsf@intel.com>
	<20160804095049.GA30029@kroah.com>
	<CAKMK7uH26eoLZSP=U5muv5U+O3Rr6RuYgw06UcGZzvcPq2f5eQ@mail.gmail.com>
	<20160809081734.GA10279@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 9 Aug 2016 14:04:53 +0200
Message-ID: <CAKMK7uFCjaKKUKn-DTUdsKOqWsAPaaZxVEkUXFZc=m0=82hyvw@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 9, 2016 at 10:17 AM, Greg KH <greg@kroah.com> wrote:
> On Tue, Aug 09, 2016 at 10:08:07AM +0200, Daniel Vetter wrote:
>> On Thu, Aug 4, 2016 at 11:50 AM, Greg KH <greg@kroah.com> wrote:
>> > On Thu, Aug 04, 2016 at 11:22:23AM +0300, Jani Nikula wrote:
>> >> So I admit to being pretty clueless wrt the fine details of module
>> >> loading, but I'm wondering if there could be any way of the module being
>> >> loaded telling the kernel (via a call, not by returning from probe) to
>> >> hold its horses for a while, and keep loading other modules. Sort of
>> >> like deferred probe, but without the full cleanup-retry cycle. The call
>> >> would return to the module later (not unlike deferred probe retries the
>> >> probe), and you could try again whatever it was that made you realize
>> >> you need to defer.
>> >
>> > Nope, it doesn't work that way, sorry.
>>
>> Why? If I just postpone the entire driver load to an async worker and
>> then block if it's not there, that should work?
>
> Maybe, but the code patch from probe() in the driver core, and module
> loader, might be assuming that all is ok, only to have your async init
> later on realize that things are not ok.  How you could propagate that
> error back into the driver core might be difficult, if not impossible.

Hm, I hoped we've made progress on that entire idea of async driver
load, and userspace no longer depending upon accurate driver load
error codes from modprobe.

>> > Nice try, just unwind your initialization properly :)
>>
>> There's a slight pratical problem of this being hard to test. Sure in
>> theory it's easy, but given how often we bomb normal module unload
>> already (and that's something our CI tests) practice disagrees.
>
> probe()/disconnect()/probe() in the driver core as an option might be a
> fun way to stress this as others have pointed out here.

I didn't mean "hard to test" as in "I don't know how" - we have a
testcase in CI for this. More as in, among the bazillion bugs I'm
fighting, making driver load perfectly race-free in the face of load
failures (or eventual unloading) isn't a terrible high priority.
Especially since with an on-chip gpu it's pretty hard for normal users
to be able to even hit those paths ;-) If instead we'd be able to just
stall until the thing we need shows up, that would fix the problem
without sending the validation complexity through the roof.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
