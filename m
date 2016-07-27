Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95B9094E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:03:32 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3FF9144
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 13:03:30 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id l9so1222305oih.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 06:03:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Jul 2016 15:03:29 +0200
Message-ID: <CAKMK7uH31nB0=-ZBOCzamOkAozrLgsFz4ZtBkeumhgrmnu2bkw@mail.gmail.com>
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset=UTF-8
Cc: Grant Likely <grant.likely@linaro.org>, Dave Airlie <airlied@linux.ie>,
	Linus Torvalds <torvalds@linux-foundation.org>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 6:45 PM, Olof Johansson <olof@lixom.net> wrote:
> On Wed, Jul 20, 2016 at 5:11 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> In my very first KS I found the maintainership model presentations
>> (x86-tip & armsoc) rather interesting. And last year we've had an
>> ad-hoc discussion about group maintainership again. I think drm&i915
>> would be an interesting case since over the past year I've done some
>> changes which are at the edge of what's common in the kernel, and it
>> seems to work (at least for us) fairly well. I discussed this a bit
>> with a few folks at ELC San Diego too.
>>
>> Short summary: i915 has now a two-level maintenance model with 2
>> maintainers (who take the blame) and 15 people who can push patches.
>> In a way a rather big group, but not so big that people don't all know
>> each another any more personally. We have some detailed docs about the
>> patch flow and expectations:
>>
>> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/drm-intel.html
>>
>> and about the dim tool used to support this all
>>
>> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/dim.html
>>
>> But I think the more interesting bits are why I decided to try this
>> out, what I hoped would happen, what I feared might happen. And with 1
>> year of experience, what actually happens and what I think is needed
>> to make this work and an actual benefit over more traditional
>> maintainer models. And of course I'd like to compare notes with other
>> group maintainers.
>
> Very interested in participating here, for obvious reasons -- learning
> from others how we can do things even better as well as sharing how
> things are working for us, 5 years into the endeavor.
>
> One thing we're low on for arm-soc is tooling, I know the x86 guys
> have quite a bit more than we do in this area, so ideas on what we can
> do to make our own lives easier is valuable.

drm group maintainer tooling is fairly low-key. The one interesting
bit is that the overall integration tree is regenerated every time you
push a patch (to scale out conflict resolution to committers too).
Conflict resolutions are tracked using git rerere and optional manual
fixup patches in a shared branch. There's also a setup command to get
it all started. I think that's probably the most interesting part of
our tooling.

One thing that's kinda annoying is how bad git rerere is at reapplying
stored resolutions with slightly changed context, or when merging the
other way round. But it's not yet bad enough that I've sat down and
fixed it ;-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
