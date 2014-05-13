Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9C74496D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:26:14 +0000 (UTC)
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8468F201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:26:11 +0000 (UTC)
Received: by mail-qc0-f172.google.com with SMTP id l6so486385qcy.17
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:26:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <15219046.LHbmDh0AgC@avalon>
References: <1872038.43ncqEMWSx@avalon> <20140512220729.GZ12304@sirena.org.uk>
	<CAKMK7uEYw+tuLNTu+pSimEewnuEakGQEsvRmq-hx_dunfBSVUg@mail.gmail.com>
	<15219046.LHbmDh0AgC@avalon>
Date: Tue, 13 May 2014 08:26:09 -0600
Message-ID: <CAKocOOOzE3vMyU9pvVVc_-umNBdZH7+oJA1oLqXANfRTnMdM-w@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, May 13, 2014 at 4:31 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tuesday 13 May 2014 09:43:05 Daniel Vetter wrote:
>> On Tue, May 13, 2014 at 12:07 AM, Mark Brown <broonie@kernel.org> wrote:
>> > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
>> >> On 12.05.2014 22:31, Mark Brown wrote:
>> >> > It also solves the system suspend dependencies.  Why don't the
>> >> > runtime PM dependencies just work with reference counting?
>> >>
>> >> Runtime PM dependencies work with reference counting just fine, but
>> >> only for topologies matching Linux driver model, e.g. devices with
>> >> exactly one device they depend on, e.g. SPI controller and SPI devices
>> >> on the bus driven by it. Add there an IOMMU and other various strange
>> >> things that should be transparent to the drivers and it stops working.
>> >
>> > There's no reason why runtime PM references have to follow the topology
>> > - you do get a default reference count up to any parent (though we break
>> > that sometimes, as is the case with SPI controllers being suspended even
>> > though the devices below them are active) but there's nothing stopping
>> > references being taken outside the topology.
>
> One of the issues is that we need API(s) to take/release those references. In
> some cases the depender doesn't have direct access to the dependee, like in
> the IOMMU case where the DMA mapping API hides the IOMMU. One of the questions
> here is whether this kind of problems should be solved with ad-hoc solutions
> (for instance adding PM support to the DMA mapping API in this specific case),
> or in a more generic fashion. Answering that will require a comprehensive list
> of use cases to detect common patterns.
>
>> I guess some helpers to grab/drop runtime PM references on all parts
>> of a componentized device should resolve this?
>
> That could help in some cases, but there might be ordering issues.

Can we use pm domains concept to solve the problem? As it exists
today, it probably
can't support loosely associated devices, however, could it be
extended to support
handling device groups that don't necessarily share power source and/or clock.

I started looking at this as a way to solve media device PM issues,
however I haven't
had a chance to experiment with this idea.

-- Shuah
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
