Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3046C8AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 19:56:50 +0000 (UTC)
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDA2321C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 19:56:49 +0000 (UTC)
Received: by qgeh16 with SMTP id h16so96268906qge.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 12:56:49 -0700 (PDT)
Date: Mon, 3 Aug 2015 15:56:46 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150803195645.GD2981@gmail.com>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
	<20150803190145.GC2981@gmail.com>
	<CALCETrXhJt7-yqJFtaXmd9cHND0bPAU4UsOeGqQhiFvBQN9jXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALCETrXhJt7-yqJFtaXmd9cHND0bPAU4UsOeGqQhiFvBQN9jXQ@mail.gmail.com>
Cc: Jerome Glisse <jglisse@redhat.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
 Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 03, 2015 at 12:07:49PM -0700, Andy Lutomirski wrote:
> On Mon, Aug 3, 2015 at 12:01 PM, Jerome Glisse <j.glisse@gmail.com> wrote:
> > On Mon, Aug 03, 2015 at 07:51:02PM +0100, David Woodhouse wrote:
> >> On Fri, 2015-07-31 at 12:34 -0400, Jerome Glisse wrote:
> >> > No the ASID should not be associated with mm_struct. There is to
> >> > few ASID to have enough of them. I think currently there is only
> >> > 8bits worth of ASID. So what happen is that the GPU device driver
> >> > schedule process and recycle ASID as it does.
> >>
> >> In PCIe we have 20 bits of PASID. And we are going to expect hardware
> >> to implement them all, even if it can only do caching for fewer PASIDs
> >> than that.
> >>
> >
> > This is not the case with current AMD hw which IIRC only support 8bits or
> > 9bits for PASID. Dunno if there next hardware will have more bits or not.
> > So i need to check PCIE spec but i do not think the 20bits is a mandatory
> > limit.
> >
> >> There is also an expectation that a given MM will have the *same* PASID
> >> across all devices.
> >
> > I understand that this would be prefered. But in case of hw that have only
> > limited number of bit for PASID you surely do not want to starve it ie it
> > would be better to have the device recycle PASID to maximize its usage.
> >
> 
> FWIW, x86 PCID has 12 bits, and, if I ever try to implement support
> for it, my thought would be to only use 3 or 4 of those bits and
> aggressively recycle PCIDs.
> 
> I have no idea whether ASIC and PCID are supposed to be related at
> all, given that I don't know anything about how to program these
> unified memory contraptions.

So it is even worse than i tought, PASID spec says that the PASID capability
register have a field indicating the number of bit for PASID the device
supports. Valid value include 1bit which is kind of low, and it does not
seems there is any mandatory lower limit.

So if we want one page table (mm) associated with one PASID this might be
tedious if not impossible. Let say one device support 12bits and process
start using that device, we set PASID to ((1 << 12) - 1), then process
want to use another device that only support 8bits, so we would need to
switch PASID to something that fit. The first device might not allow to
switch PASID without big hammer like fully stoping current job or waiting
for current job to complete with no garanty on how long it could takes,
minutes, hours, days, ...

I agree and wish we could have one mm one PASID but given hardware, i think
we need to do a reality check here :(

Cheers,
Jérôme
