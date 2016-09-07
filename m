Return-Path: <khilman@baylibre.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A035A67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 16:41:02 +0000 (UTC)
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A1E817D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 16:41:01 +0000 (UTC)
Received: by mail-pf0-f169.google.com with SMTP id 128so8281307pfb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Sep 2016 09:41:01 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Andrzej Hajda <a.hajda@samsung.com>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<579B60C0.9000609@samsung.com>
Date: Wed, 07 Sep 2016 09:40:59 -0700
In-Reply-To: <579B60C0.9000609@samsung.com> (Andrzej Hajda's message of "Fri,
	29 Jul 2016 15:57:20 +0200")
Message-ID: <7h1t0vy86c.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
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

Andrzej Hajda <a.hajda@samsung.com> writes:

> On 07/27/2016 06:50 PM, Luis R. Rodriguez wrote:
>> (first e-mail bounced)
>>
>> Rafael has proposed has a set of patches to help deal with functional
>> dependencies between devices to help with power management. Mauro has
>> spoken briefly before over the media controller feature graph used to help
>> build relationship between complex dynamic dependencies. Dmitry has taken on
>> to help enable asynchronous probe, however for built-in devices this requires
>> very specific platform knowledge otherwise using async probe will blow up
>> your kernel -- if you get it right though, using async probe can help with
>> boot. Even if you sort things out well -- there are current limitations with
>> ordering semantics available, case in point the x86 IOMMUs already have a small
>> sort run which expand beyond the core init entries allowed, and on top of this
>> the you still have device driver dependencies which are implicitly setting
>> order via link order: consider the ordering between AMD IOMMUv1, AMD IOMMUv2,
>> AMD KFD, and AMD radeon. This has made us realize that at the module front the
>> current 2 levels of init calls limits our ordering semantics leaving only link
>> order as a last measure when things are built-in. Likewise I've recently have
>> had to look into dependency issues early in boot been due to differences
>> between paravirtualization and non-PV kernels, this lead to some current work
>> to help generalize custom section uses (linker tables) and then for us to
>> consider expanding x86 semantics early in boot to address some of the
>> shortcomings implicit by the some paravirtualized boot path.
>>
>> The goal behind Rafael's work's goal is essentially to avoid code duplication
>> (as without doing that in the core many drivers potentially need to do the same
>> thing in the same way) and help to address the asynchronous system
>> suspend/resume case that cannot be addressed by any driver by itself anyway.
>> The effort behind Rafael's, Mauro's, Dmitry's and my work are all independent
>> however the patterns are very similar: addressing complex dependencies and
>> relationships at run time and available semantics for these.
>
> I am also interested in this topic. I have sent some times ago few
> early RFCs proposing solution for 'resource' life-time tracking:

[...]

> The framework can be easily expanded to help with power management

[sorry to be late to the party, catching up on this after some holidays]

I'm also interested in the PM / performance aspects of this topic.

Specifically, I'm working on QoS/performance/PM issues where we need a
way to "link" one device to another, where that link also includes any
busses, IOMMUs etc. that are on the path between the two endpoints.

Because the busses involved have dynamic voltage and frequency scaling
(DVFS) capabilities, the goal is to have dynamic QoS for the whole
link/path so that the busses on that path can aggregate QoS requirements
and do DVFS in order to meet the bandwidth/throughput requirements, but
also to scale back when performance is not needed to save power.

We can do much of this today using per-device pm_qos and runtime
PM/genpd for individual devices, but I'm looking for a way to do similar
for a "path" that has 2 endpoint devices, and some busses in between,
especially when these paths are not represented in the parent-child
relationships.

I had a brief look at Rafael's and your patches, but I need to look
closer at them to see if/how they might be used for this.

Kevin
