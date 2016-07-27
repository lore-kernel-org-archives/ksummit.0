Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E114794E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:59:35 +0000 (UTC)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4758C15B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 12:59:35 +0000 (UTC)
Received: by mail-oi0-f43.google.com with SMTP id l72so16090423oig.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 05:59:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160727030406.GU9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
	<20160727030406.GU9681@localhost>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 Jul 2016 14:59:33 +0200
Message-ID: <CAKMK7uHsC5V_O3by9qaemJU_L3P07MmqadVbXOuJUVLMN_Dg1Q@mail.gmail.com>
To: Vinod Koul <vinod.koul@intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 27, 2016 at 5:04 AM, Vinod Koul <vinod.koul@intel.com> wrote:
> On Tue, Jul 26, 2016 at 09:45:35AM -0700, Olof Johansson wrote:
>> On Wed, Jul 20, 2016 at 5:11 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> > But I think the more interesting bits are why I decided to try this
>> > out, what I hoped would happen, what I feared might happen. And with 1
>> > year of experience, what actually happens and what I think is needed
>> > to make this work and an actual benefit over more traditional
>> > maintainer models. And of course I'd like to compare notes with other
>> > group maintainers.
>>
>> Very interested in participating here, for obvious reasons -- learning
>> from others how we can do things even better as well as sharing how
>> things are working for us, 5 years into the endeavor.
>
> Am interested in this discussion as well for very obvious reasons
>
>> One thing we're low on for arm-soc is tooling, I know the x86 guys
>> have quite a bit more than we do in this area, so ideas on what we can
>> do to make our own lives easier is valuable.
>
> Okay one of the gripes I have is that it is a bit hard to compile arm
> drivers. I regularly compile all drivers in subsystem I maintain and arm
> ones are not always straightforward. Figuring our which config to use
> for compile testing involves a bit of time, which I would like to avoid.
>
> Having said that stuff like multi_xx_defconfig has improved a bit and
> seem to be in right direction (not an expert at arm arch's) but doesn't
> seem to cover all. Right now I am manually maintaining 4 different arm
> configs to compile test all the drivers in dmaengine subsystem which
> isn't a very big subsystem. For other arch's it is one config per
> subsystem.
>
> So if you have suggestions to improve my flow, I would like to hear
> that, maybe I am doing something not right here...

Since we're rolling out the drm/i915 group maintainership to the
drm-misc tree now as another experiment we've had to solve this for
the drm subsystem somehow:
- We track one arm multiplatform and one x86 config in the
rerere-cache branch we use:

https://cgit.freedesktop.org/drm-intel/tree/?h=rerere-cache

- Developers integrate that into into their compile-test environment
to make sure nothing breaks before pushing. Atm the compile-test stuff
isn't implemented in shared tooling.

- DRM doesn't have any drivers any more which can't be covered with
these too. For new drivers we require multiplatform support, at least
for compile testing. But I guess that's not a solution for everyone :(

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
