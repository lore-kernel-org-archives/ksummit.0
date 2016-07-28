Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48A808D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:50:24 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B601B204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:50:23 +0000 (UTC)
To: "Luis R. Rodriguez" <mcgrof@suse.com>, Mark Brown <broonie@kernel.org>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <579A7DFD.60305@metafoo.de>
Date: Thu, 28 Jul 2016 23:49:49 +0200
MIME-Version: 1.0
In-Reply-To: <20160727175829.GG5537@wotan.suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 07/27/2016 07:58 PM, Luis R. Rodriguez wrote:
> On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
>>> to help enable asynchronous probe, however for built-in devices this requires
>>> very specific platform knowledge otherwise using async probe will blow up
>>> your kernel -- if you get it right though, using async probe can help with
>>
>> I'm not sure what specific platform knowledge you're thinking of here?
>> We have coverage for most things in the form of deferred probe (messy
>> though it is).
> 
> Deferred probe is a complete a hack and sub-optimal.

I fully agree. In the past though there were a few good attempts of
providing something better than probe deferral, but those were always
quickly shutdown by GregKH for failing to prove that probe deferral
really is insufficient.

This probably an issue of presentation, but for future attempts it
should be kept in mind that hard numbers on why this is better greatly
improve the chance of it being accepted.
