Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8C9A44D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:43:07 +0000 (UTC)
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5736E1F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:43:06 +0000 (UTC)
Received: by mail-ig0-f170.google.com with SMTP id r10so5618573igi.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 00:43:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140512220729.GZ12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
	<1890814.sS5FutD9xo@avalon> <20140512203153.GH12304@sirena.org.uk>
	<53713A49.9070400@gmail.com> <20140512220729.GZ12304@sirena.org.uk>
Date: Tue, 13 May 2014 09:43:05 +0200
Message-ID: <CAKMK7uEYw+tuLNTu+pSimEewnuEakGQEsvRmq-hx_dunfBSVUg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 13, 2014 at 12:07 AM, Mark Brown <broonie@kernel.org> wrote:
> On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
>> On 12.05.2014 22:31, Mark Brown wrote:
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

I guess some helpers to grab/drop runtime PM references on all parts
of a componentized device should resolve this? We propably don't want
to bake this into the driver core since often the driver will know
that it e.g. doesn't need a specific encoder block (if it's not
enabled), so doesn't to grab a reference. But for simple drivers, and
to get runtime PM off the ground when enabling new hardware this could
be rather useful.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
