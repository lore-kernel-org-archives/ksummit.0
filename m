Return-Path: <lars@metafoo.de>
Message-ID: <55C462BB.9070602@metafoo.de>
Date: Fri, 07 Aug 2015 09:48:11 +0200
From: Lars-Peter Clausen <lars@metafoo.de>
MIME-Version: 1.0
To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Ksummit-discuss@lists.linuxfoundation.org
References: <20150806062029.55f0c2f2@recife.lan>
	<F516739C-4E0D-4842-873A-181E03D4C25E@jic23.retrosnub.co.uk>
	<D734F165-79F5-4A3A-89DD-3C03637CD09C@jic23.retrosnub.co.uk>
In-Reply-To: <D734F165-79F5-4A3A-89DD-3C03637CD09C@jic23.retrosnub.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Media Controller
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/07/2015 09:21 AM, Jonathan Cameron wrote:
> 
> 
> On 6 August 2015 13:42:17 BST, Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
>>
>>
>> On 6 August 2015 10:20:29 BST, Mauro Carvalho Chehab
>> <mchehab@osg.samsung.com> wrote:
>>> Along the years, we've been developing a mechanism at the Kernel to
>>> store
>>> and present graphs to userspace, called Media Controller. The original
>>> scope of the Media Controller were to store and represent pipeline
>>> connections
>>> between hardware components on complex streaming devices, like the
>> ones
>>> that are used on cell phones, where there are typically two camera
>>> sensors,
>>> and lots of processing units to enhance the image and to convert it
>>> into
>>> different formats.
>>>
>>> Since the beginning, we found that it would be useful to use it some
>>> day
>>> on other subsystems. Well, now such day has come ;)
>>>
>>> Driven by the need of using the media controller on TV sets, where the
>>> pipelines can be really complex and may cover more than one subsystem,
>>> we're reworking at both the core implementation and at the userspace
>>> API
>>> to allow it to be used where needed.
>>>
>>> On a TV set, the streaming data pipeline covers camera sensors, analog
>>> TV,
>>> digital TV, crypto/decrypto modules, audio and GPU. Also, TVs have
>>> network
>>> interfaces that may be provided via DVB (like CATV). If we want/need
>> to
>>>
>>> represent and control the full pipeline, the media controller has to
>>> have
>>> support on different subsystems: V4L2, DVB, ALSA, DRM and Network. It
>>> also
>>> needs a way to share a common struct between those subsystems without
>>> making
>>> them depend on each other. So, it should use devres.
>>>
>>> Also, on the MC summit, it was pointed that other subsystems like IIO
>>> (Linux Industrial I/O) have similar needs and also need to track
>>> complex
>>> pipelines.
>>
>> Not yet as complex as some of your media cases though I wouldn't be
>> surprised if Lars has stuff for this underway!

This[1] is the quick presentation I gave the media controller workshop, it
has a few examples of complex pipelines. Most of the driver support is work
in progress, but it shows why we need a method of describing the data flow
topology. So the goal is to have the MC integration ready when the drivers
get merged.

- Lars

[1] http://metafoo.de/iio_media_controller.pdf
