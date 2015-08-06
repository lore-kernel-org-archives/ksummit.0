Return-Path: <jic23@jic23.retrosnub.co.uk>
In-Reply-To: <20150806062029.55f0c2f2@recife.lan>
References: <20150806062029.55f0c2f2@recife.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Thu, 06 Aug 2015 13:42:17 +0100
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Ksummit-discuss@lists.linuxfoundation.org
Message-ID: <F516739C-4E0D-4842-873A-181E03D4C25E@jic23.retrosnub.co.uk>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Media Controller
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 6 August 2015 10:20:29 BST, Mauro Carvalho Chehab <mchehab@osg.samsung.com> wrote:
>Along the years, we've been developing a mechanism at the Kernel to
>store
>and present graphs to userspace, called Media Controller. The original
>scope of the Media Controller were to store and represent pipeline
>connections
>between hardware components on complex streaming devices, like the ones
>that are used on cell phones, where there are typically two camera
>sensors,
>and lots of processing units to enhance the image and to convert it
>into
>different formats.
>
>Since the beginning, we found that it would be useful to use it some
>day
>on other subsystems. Well, now such day has come ;)
>
>Driven by the need of using the media controller on TV sets, where the
>pipelines can be really complex and may cover more than one subsystem,
>we're reworking at both the core implementation and at the userspace
>API
>to allow it to be used where needed.
>
>On a TV set, the streaming data pipeline covers camera sensors, analog
>TV,
>digital TV, crypto/decrypto modules, audio and GPU. Also, TVs have
>network
>interfaces that may be provided via DVB (like CATV). If we want/need to
>
>represent and control the full pipeline, the media controller has to
>have
>support on different subsystems: V4L2, DVB, ALSA, DRM and Network. It
>also
>needs a way to share a common struct between those subsystems without
>making
>them depend on each other. So, it should use devres.
>
>Also, on the MC summit, it was pointed that other subsystems like IIO
>(Linux Industrial I/O) have similar needs and also need to track
>complex
>pipelines.

Not yet as complex as some of your media cases though I wouldn't be
 surprised if Lars has stuff for this underway!

I need to catch up with your framework as I lost track a while back. Lars-Peter
 Clausen is probably the best person to be present for the IIO elements of this (on top of other roles in this discussion!)

Thankfully most of the sensor hub stuff is probably still where media devices were a while back in that the inputs are hardwired to the DSP elements and
 mostly hidden from the host processor.
Of course there are probably more complex topologies already out there
 somewhere!

Jonathan
>
>When we have such complex pipelines that interact with different
>subsystems,
>we need to better describe the interfaces between userspace and the
>pipeline. In the past, we only needed to represent device nodes, but
>now
>we'll need to be capable of representing network interfaces and sysfs.
>
>We also need to allow dynamic changes in terms of removing and adding
>objects at the graph.
>
>Due to that, we're redesigning the MC core, making it more generic and
>more capable of representing complex devices. So, we'd like to discuss
>it with the KS audience, in order to check if there are other use cases
>for it, and if the solution we're designing would require more changes
>to fit such other use cases.
>
>For this discussion, I nominate myself and Laurent Pinchart, Hans
>Verkuil,
>Sakari Ailus, Shuah Khan and Lars-Peter Clausen.
>
>PS.: I know we're a week late, but we've been busy this month with the
>discussions, including a Media Controller 3-days summit in Helsinki
>last
>week.
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
