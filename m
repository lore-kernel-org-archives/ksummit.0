Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 480F383D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 19:13:10 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B2661F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 19:13:08 +0000 (UTC)
To: Jonathan Cameron <jic23@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <579A5925.8060700@metafoo.de>
Date: Thu, 28 Jul 2016 21:12:37 +0200
MIME-Version: 1.0
In-Reply-To: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/20/2016 11:18 PM, Jonathan Cameron wrote:
> Hi All,
> 
> This topic would be around the way the various subsystems interact, in the
> rough area of 'sensors' (I haven't yet had much of an issue with subsystem
> crossing with output devices but maybe that's just over the next hill!)

I've been on the other side of that hill and I can tell you there is
also some output overlap. E.g. between regulator drivers and IIO DAC
drivers. There are regulator drivers for general-purpose DACs that are
no any different than other DACs supported by IIO. E.g. ad5398. Other
overlaps might be backlight brightness control or lens control. In those
cases you have some kind of hardware aperture connected to the output
and the application is no longer ambiguous. But we should still avoid
writing application specific drivers for this case and rather make sure
that we have proper in-kernel frameworks so a generic driver can be
controlled through the application specific userspace API.
