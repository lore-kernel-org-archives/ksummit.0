Return-Path: <shuahkhan@gmail.com>
MIME-Version: 1.0
In-Reply-To: <55C462BB.9070602@metafoo.de>
References: <20150806062029.55f0c2f2@recife.lan>
	<F516739C-4E0D-4842-873A-181E03D4C25E@jic23.retrosnub.co.uk>
	<D734F165-79F5-4A3A-89DD-3C03637CD09C@jic23.retrosnub.co.uk>
	<55C462BB.9070602@metafoo.de>
Date: Wed, 12 Aug 2015 10:12:18 -0600
Message-ID: <CAKocOOMW2euwnt9cbCQ4NyPZ4uG7EHAnS5s3GP_CD53xSQgA_g@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Content-Type: text/plain; charset=UTF-8
Cc: shuahkh@osg.samsung.com, Ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Media Controller
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 7, 2015 at 1:48 AM, Lars-Peter Clausen <lars@metafoo.de> wrote:
> On 08/07/2015 09:21 AM, Jonathan Cameron wrote:
>>
>>
>> On 6 August 2015 13:42:17 BST, Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
>>>
>>>
>>> On 6 August 2015 10:20:29 BST, Mauro Carvalho Chehab
>>> <mchehab@osg.samsung.com> wrote:
>>>> Along the years, we've been developing a mechanism at the Kernel to
>>>> store
>>>> and present graphs to userspace, called Media Controller. The original
>>>> scope of the Media Controller were to store and represent pipeline
>>>> connections
>>>> between hardware components on complex streaming devices, like the
>>> ones
>>>> that are used on cell phones, where there are typically two camera
>>>> sensors,
>>>> and lots of processing units to enhance the image and to convert it
>>>> into
>>>> different formats.
>>>>
>>>> Since the beginning, we found that it would be useful to use it some
>>>> day
>>>> on other subsystems. Well, now such day has come ;)
>>>>
>>>> Driven by the need of using the media controller on TV sets, where the
>>>> pipelines can be really complex and may cover more than one subsystem,
>>>> we're reworking at both the core implementation and at the userspace
>>>> API
>>>> to allow it to be used where needed.
>>>>
>>>> On a TV set, the streaming data pipeline covers camera sensors, analog
>>>> TV,
>>>> digital TV, crypto/decrypto modules, audio and GPU. Also, TVs have
>>>> network
>>>> interfaces that may be provided via DVB (like CATV). If we want/need
>>> to
>>>>
>>>> represent and control the full pipeline, the media controller has to
>>>> have
>>>> support on different subsystems: V4L2, DVB, ALSA, DRM and Network. It
>>>> also
>>>> needs a way to share a common struct between those subsystems without
>>>> making
>>>> them depend on each other. So, it should use devres.
>>>>
>>>> Also, on the MC summit, it was pointed that other subsystems like IIO
>>>> (Linux Industrial I/O) have similar needs and also need to track
>>>> complex
>>>> pipelines.
>>>
>>> Not yet as complex as some of your media cases though I wouldn't be
>>> surprised if Lars has stuff for this underway!
>
> This[1] is the quick presentation I gave the media controller workshop, it
> has a few examples of complex pipelines. Most of the driver support is work
> in progress, but it shows why we need a method of describing the data flow
> topology. So the goal is to have the MC integration ready when the drivers
> get merged.
>
Sorry if you are seeing this meesage twice. My previous message didn't make to
the KS because it was too large.

I have been working on updating snd-usb-audio and a media driver (au0828) that
uses snd-usb-audio as its audio driver to use Media Controller API to share
resources. Sharing resources across these varied set of drivers required adding
Managed Media Controller API and now I am building on top. Managed Media
Controller API creates media_device as a device resource at the parent
USB device
which is the root device for this driver hierarchy.

We reviewed Patch series v5 at the Media Summit and I am working on v6. Patch
series v5 is available at

https://git.kernel.org/cgit/linux/kernel/git/shuah/linux.git/log/?h=media_controller

As go along and do this work, I am refining and adding new MC interfaces as
needed and creating handlers to enable  drivers to coordinate initialization as
each driver adds new entities. Here is the link to media graph for

Hauppauge HVR950Q Hybrid USB TV stick that id driven by au0828 (DVB, Video),
and snd-usb-audio drivers.  The media device is s Managed device resource.

https://drive.google.com/file/d/0B0NIL0BQg-AlSFJPelltTm82UGM/view

I look forward to sharing and discussing this work and MC use-cases for other
driver classes at the workshop.

thanks,
-- Shuah
