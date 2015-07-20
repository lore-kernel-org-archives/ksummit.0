Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A6E125A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:09:54 +0000 (UTC)
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5472922F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 23:09:53 +0000 (UTC)
Received: by oigd21 with SMTP id d21so76369252oig.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 16:09:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2015360.EW9BxZmMXF@vostro.rjw.lan>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<20150716155819.GA30423@kroah.com>
	<CAKMK7uFmyH9Gc3EY6F24PK3hOtxLPYEi9U=ixe=g-3=amoQoCw@mail.gmail.com>
	<2015360.EW9BxZmMXF@vostro.rjw.lan>
Date: Tue, 21 Jul 2015 01:09:52 +0200
Message-ID: <CAKMK7uFAUXv8S7f_ki+JW-h+3bWA8H7ZPZSQ4K6YXNXT69eDrw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
 the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 21, 2015 at 12:21 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Friday, July 17, 2015 01:41:56 PM Daniel Vetter wrote:
>> On Thu, Jul 16, 2015 at 5:58 PM, Greg KH <greg@kroah.com> wrote:
>> > On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
>> >> But the kernel already has quirk tables for various hardware, and that
>> >> seems appropriate to continue putting in the kernel.
>> >
>> > For some types of devices, sure.  For others, like broken USB keyboards
>> > that can't handle autosuspend, no.  For those we need a userspace
>> > _whitelist_ that udev can use.  So there's no one answer that works for
>> > all types of quirks.
>>
>> Whether white or blacklist or some other mixed thing doesn't really
>> matter. Imo the important part is that driver maintainers are in the
>> best position to maintain that, and pushing it out to anyone else is
>> just really not doing our jobs. And I think for most of these quirk
>> lists the kernel does seem like the most appropriate place. If the
>> list becomes giantic then we can move it to userspace (if that's
>> really a problem, afaik no one proposed yet to move device match
>> tables into userspace either and that's kinda the same thing really).
>> But as long as there's no white/black/whatever list yet starting in
>> the kernel is imo the right place.
>
> Well, I'm wondering, then, why i915.enable_psr is not enabled by default,
> for one example?
>
> Failing to enable it prevents some SoCs from using the deepest available
> C-states which in turn hurts battery life of the systems containing them
> quite a bit, so there surely is a reason to have it enabled.

Because it's broken on a lot of machines, and it takes a pile of
effort to fix it. That work is under way now, but for a long time
priorities set by management where much more set on chasing the next
shiny thing. Took a few years of making noises about dropping it all
if it doesn't get fixed.

This is actually a perfect example of what I mean with "hey it works
on my machine here, but I can't be bothered to fix up the corner-cases
so let's keep it disabled and move on". And the corner cases are hung
machines and frozen displays (and a few other things), and we
inflicted that a few times on Linus even.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
