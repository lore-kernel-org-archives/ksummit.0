Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 67E7B14E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:35:40 +0000 (UTC)
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDA8D7C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:35:39 +0000 (UTC)
Received: by mail-it0-f48.google.com with SMTP id p129-v6so10001435ite.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 08:35:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOw6vbLUnpZGm1MdfUpm5W8hp6b_6VuOqOSQUwbXHKYC=P0Bjw@mail.gmail.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<CAOw6vbKa+85J0gDbh0Fj3GYQFcDma_qPPYjSUKxYvjmHvO3a5A@mail.gmail.com>
	<20180905142225.GA8757@kroah.com>
	<CAOw6vbLUnpZGm1MdfUpm5W8hp6b_6VuOqOSQUwbXHKYC=P0Bjw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Sep 2018 17:35:38 +0200
Message-ID: <CAKMK7uESeyc5Wt2tXiq7Hwg5VnF6nFtjBnFL3e4FThCcb8ZcBg@mail.gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 4:29 PM, Sean Paul <seanpaul@chromium.org> wrote:
> On Wed, Sep 5, 2018 at 10:23 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Wed, Sep 05, 2018 at 10:08:00AM -0400, Sean Paul wrote:
>> > > Which ones are you interested in?  I'd always prefer to hand off staging
>> > > drivers to an existing subsystem but it's not always clear who that
>> > > should be.
>> >
>> > In the case of vboxvideo, we won't accept it in drm since it's not an
>> > atomic driver. staging's bar for entry was lower, so the driver was
>> > stuck in there. Perhaps we would have been better to take it in drm
>> > behind a config, but that's not ideal either.
>>
>> for vboxvideo, I am pretty sure I got an "it's ok to put it there" from
>> the DRM maintainers before I accepted it.  So they know it is there :)
>>
>
> Oh for sure, I didn't mean to imply it was there without our knowledge
> (reading my mail back the implication is definitely there, apologies).
> I think the narrative was "ack to put it there, but it'll cause pain".
> If the atomic conversion was done expediently, it wouldn't be so bad,
> but it's starting to become an anchor (IMO).

Yeah I acked it for -staging. I have regrets now, but next time around
I'm probably as gullible as ever.

>> If it's not ever going to be merged, maybe we should just drop it?
>
> Yeah, I'm fine with that. It doesn't seem like anyone is super
> motivated to do the atomic conversion any time soon.
>
> Generally speaking, I think the vboxvideo experiment has shown that
> staging isn't a good fit for us. For subsystems with less churn or
> surrounding infrastructure, it's probably much less of an issue.

It slowed down a bit, but past 3 years we've merged like 2-3 new
atomic drivers per release. Now we mostly have a driver for each kind
of display IP out there, so a lot more boils down to adding support
for different variants of the same hw. So it's clearly possible to
land a simple drm atomic modeset driver without too onerous amounts of
work. vboxvideo otoh seems to not really move - looking at git log all
the changes are just general refactorings, no one seems to do the one
and only thing (cut it over to atomic, probably best as a
drm_simple_display_pipe driver) that we want. And it's now a full year
in-tree.

So all the pain (we have to refactor yet another driver using outdated
helpers/api), no gain (doesn't seem to pull in more contributors or
more bug reporters afaict) for the subsystem. Ack on removing it.

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
