Return-Path: <khilman@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AA6B0AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 21:08:15 +0000 (UTC)
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E8761FB4F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 21:08:15 +0000 (UTC)
Received: by mail-pb0-f46.google.com with SMTP id rq2so105923pbb.19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 14:08:15 -0700 (PDT)
From: Kevin Hilman <khilman@linaro.org>
To: Mark Brown <broonie@kernel.org>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
	<1890814.sS5FutD9xo@avalon> <20140512203153.GH12304@sirena.org.uk>
	<53713A49.9070400@gmail.com> <20140512220729.GZ12304@sirena.org.uk>
Date: Wed, 14 May 2014 14:08:13 -0700
In-Reply-To: <20140512220729.GZ12304@sirena.org.uk> (Mark Brown's message of
	"Mon, 12 May 2014 23:07:29 +0100")
Message-ID: <7h38gc2hmq.fsf@paris.lan>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Mark Brown <broonie@kernel.org> writes:

> On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
>> On 12.05.2014 22:31, Mark Brown wrote:
>
>> > It also solves the system suspend dependencies.  Why don't the
>> > runtime PM dependencies just work with reference counting?
>
>> Runtime PM dependencies work with reference counting just fine, but
>> only for topologies matching Linux driver model, e.g. devices with
>> exactly one device they depend on, e.g. SPI controller and SPI devices
>> on the bus driven by it. Add there an IOMMU and other various strange
>> things that should be transparent to the drivers and it stops working.
>
> There's no reason why runtime PM references have to follow the topology
> - you do get a default reference count up to any parent (though we break
> that sometimes, as is the case with SPI controllers being suspended even
> though the devices below them are active) but there's nothing stopping
> references being taken outside the topology.

I'm very interested in this topic as well.

Though, I'm reluctant to see new APIs invented when I think already have
the infrastructure to handle this (though admittedly, I haven't seen all
the use-cases where this is problematic either.)

In my experience with this, it seems to me the root cause here is simply
that there are still lots of drivers/subsytems that are not runtime PM
adapted.

IOW, even if device X has a non-parent/child relationship with device Y,
if both are runtime PM adapted, the simple fact of X *using* Y (or using
the framework hiding Y) will be enough to ensure Y is powered up when
used.  

Yes, we could hack up the ability for X to directly refcount Y, but why
should we do that instead of adapdting Y to use runtime PM itself so
that when ever it's requested/used, it's powered up by the runtime PM
infrastructure.

What am I missing ?

>> I'm still investigating this issue, so more uses cases are yet to be
>> found, but I also guess this is the purpose of this thread. Anyway,
>> for some reason .suspend_late() and .resume_early() callbacks exist in
>> dev_pm_ops struct and I believe that at least some of the cases
>> "solved" by them might be related to the issue being discussed here.
>
> Yes, they're partly solving a particular common case for this sort of
> interdependency (though I guess they do also do things like allow us to
> make sure the hardware came back in a state where it won't be harmful
> to the rest of the system if we start enabling things).

IMO, the suspend_late/resume_early callbacks are useful for turning
drivers/subsystems into what I call "runtime PM centric".  That means
the driver/subsytem can focus on a runtime PM centric view of the world,
and then implement suspend/resume using the late/early callbacks to call
the same functions as the runtime suspend/resume.

Kevin
