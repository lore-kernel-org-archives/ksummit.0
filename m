Return-Path: <hverkuil@xs4all.nl>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0FFF671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:46:03 +0000 (UTC)
Received: from lb2-smtp-cloud2.xs4all.net (lb2-smtp-cloud2.xs4all.net
	[194.109.24.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C6A0DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 07:46:02 +0000 (UTC)
To: Lars-Peter Clausen <lars@metafoo.de>, "Luis R. Rodriguez"
	<mcgrof@suse.com>, Mark Brown <broonie@kernel.org>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
Date: Fri, 29 Jul 2016 09:45:55 +0200
MIME-Version: 1.0
In-Reply-To: <579A7DFD.60305@metafoo.de>
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



On 07/28/2016 11:49 PM, Lars-Peter Clausen wrote:
> On 07/27/2016 07:58 PM, Luis R. Rodriguez wrote:
>> On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
>>>> to help enable asynchronous probe, however for built-in devices this requires
>>>> very specific platform knowledge otherwise using async probe will blow up
>>>> your kernel -- if you get it right though, using async probe can help with
>>>
>>> I'm not sure what specific platform knowledge you're thinking of here?
>>> We have coverage for most things in the form of deferred probe (messy
>>> though it is).
>>
>> Deferred probe is a complete a hack and sub-optimal.
> 
> I fully agree. In the past though there were a few good attempts of
> providing something better than probe deferral, but those were always
> quickly shutdown by GregKH for failing to prove that probe deferral
> really is insufficient.
> 
> This probably an issue of presentation, but for future attempts it
> should be kept in mind that hard numbers on why this is better greatly
> improve the chance of it being accepted.

My main problem is not so much with deferred probe (esp. for cyclic dependencies
it is a simple method of solving this, and simple is good). My main problem is
that you can't tell the system that driver A needs to be probed after drivers B,
C and D are probed first.

That would allow us to get rid of v4l2-async.c which is a horrible hack.

That code allows a bridge driver to wait until all dependent drivers are probed.
This really should be core functionality.

Do other subsystems do something similar like drivers/media/v4l2-core/v4l2-async.c?
Does anyone know?

Regards,

	Hans
