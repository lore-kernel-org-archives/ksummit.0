Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 227D3958
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:48:06 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5C6314F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:48:05 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id BA1E3ACAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:48:03 +0000 (UTC)
Date: Tue, 2 Aug 2016 11:48:03 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Hannes Reinecke <hare@suse.com>
In-Reply-To: <bf260f5f-d2df-01ee-f0f9-1ab3dc1a6e6e@suse.com>
Message-ID: <alpine.LNX.2.00.1608021145340.22028@cbobk.fhfr.pm>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<1555444.RIYpEbA2F7@vostro.rjw.lan>
	<20160802005650.GF3296@wotan.suse.de>
	<bf260f5f-d2df-01ee-f0f9-1ab3dc1a6e6e@suse.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Tue, 2 Aug 2016, Hannes Reinecke wrote:

> We actually have been discussing such a scenario when running under 
> UEFI; there you could implement a generic UEFI network driver, which 
> then later might get superseded by the 'real' network driver.
> 
> Which would require to
> a) be able to properly formulate the probing order
> and
> b) establish proper rules on how to 're-bind' a device to a different
> driver.

Similar use-case for HID.

There is a lot of hardware for which hid-generic driver 'sort of works' 
(and it makes sense to have that one included in the initrd), but then 
there are specific drivers fully exploiting all the capabilities of 
particular device (and it doesn't make sense to include all of those in 
initrd).

Currently, the hid-generic doesn't bind to such devices at all, because it 
has a large list of device IDs for which specific drivers exist, and 
expects those to be bound. Which doesn't really provide the best user 
experience.

Thanks,

-- 
Jiri Kosina
SUSE Labs
