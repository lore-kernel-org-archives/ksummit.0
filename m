Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C47059D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 07:18:36 +0000 (UTC)
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 69E70E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 07:18:34 +0000 (UTC)
Received: by obbop1 with SMTP id op1so129135872obb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 00:18:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1498238.a26xTIy1oB@vostro.rjw.lan>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<2015360.EW9BxZmMXF@vostro.rjw.lan>
	<CAKMK7uFAUXv8S7f_ki+JW-h+3bWA8H7ZPZSQ4K6YXNXT69eDrw@mail.gmail.com>
	<1498238.a26xTIy1oB@vostro.rjw.lan>
Date: Wed, 22 Jul 2015 09:18:34 +0200
Message-ID: <CAKMK7uGtbL8GfnLc3LqeHpcQDcmPydnm8ofNE5SC7W9QQ+Zo6w@mail.gmail.com>
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

On Wed, Jul 22, 2015 at 3:12 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Tuesday, July 21, 2015 01:09:52 AM Daniel Vetter wrote:
>> On Tue, Jul 21, 2015 at 12:21 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>> > On Friday, July 17, 2015 01:41:56 PM Daniel Vetter wrote:
>> >> On Thu, Jul 16, 2015 at 5:58 PM, Greg KH <greg@kroah.com> wrote:
>> >> > On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
>> >> >> But the kernel already has quirk tables for various hardware, and that
>> >> >> seems appropriate to continue putting in the kernel.
>> >> >
>> >> > For some types of devices, sure.  For others, like broken USB keyboards
>> >> > that can't handle autosuspend, no.  For those we need a userspace
>> >> > _whitelist_ that udev can use.  So there's no one answer that works for
>> >> > all types of quirks.
>> >>
>> >> Whether white or blacklist or some other mixed thing doesn't really
>> >> matter. Imo the important part is that driver maintainers are in the
>> >> best position to maintain that, and pushing it out to anyone else is
>> >> just really not doing our jobs. And I think for most of these quirk
>> >> lists the kernel does seem like the most appropriate place. If the
>> >> list becomes giantic then we can move it to userspace (if that's
>> >> really a problem, afaik no one proposed yet to move device match
>> >> tables into userspace either and that's kinda the same thing really).
>> >> But as long as there's no white/black/whatever list yet starting in
>> >> the kernel is imo the right place.
>> >
>> > Well, I'm wondering, then, why i915.enable_psr is not enabled by default,
>> > for one example?
>> >
>> > Failing to enable it prevents some SoCs from using the deepest available
>> > C-states which in turn hurts battery life of the systems containing them
>> > quite a bit, so there surely is a reason to have it enabled.
>>
>> Because it's broken on a lot of machines, and it takes a pile of
>> effort to fix it.
>
> And there are quite a few subsystems having similar issues here and there.
>
> People who aren't aware of those command line/Kconfig/sysfs switches will
> never enable those features even though they may work well on their
> machines and may actually be necessary to save energy.

In my experience there's way too many people around who know about
these knobs but have no idea that they might be somewhat dangerous.
And then I get another bug report about a known bug just because
someone read a blog somewhere. Nowadays almost all i915 tuning knobs
are marked as _unsafe and taint your kernel if you touch them.

>> That work is under way now, but for a long time
>> priorities set by management where much more set on chasing the next
>> shiny thing. Took a few years of making noises about dropping it all
>> if it doesn't get fixed.
>>
>> This is actually a perfect example of what I mean with "hey it works
>> on my machine here, but I can't be bothered to fix up the corner-cases
>> so let's keep it disabled and move on". And the corner cases are hung
>> machines and frozen displays (and a few other things), and we
>> inflicted that a few times on Linus even.
>
> So among other things this topic is about a mechanism to possibly enable
> multiple things like that in one go instead of having to switch multiple
> knobs in various places (and needing to know about them in the first
> place).

I know, but at least for i915 I don't want it: When we know it's safe
to do we already enable all the power/performance tuning we have, and
if we know it's unsafe we don't want users to enable it themselves. If
you have a very specific product (which is not a generic distro or
anything) and have done careful testing and cross-checked with
developers then you can of course just enable these features. But then
you also don't need a new option, you can just change the driver
defaults directly.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
