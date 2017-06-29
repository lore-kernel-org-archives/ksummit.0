Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 975BA710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 10:23:29 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 44541171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 10:23:29 +0000 (UTC)
Date: Thu, 29 Jun 2017 07:23:20 -0300
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629072320.22ac0049@vento.lan>
In-Reply-To: <CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Christoph Hellwig <hch@infradead.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Tue, 27 Jun 2017 14:36:44 -0700
Linus Torvalds <torvalds@linux-foundation.org> escreveu:

> On Tue, Jun 27, 2017 at 2:16 PM, Olof Johansson <olof@lixom.net> wrote:
> >
> > It sounds to me like you want to turn it from option/driver selection
> > to feature selection, where features could be stuff like:
> >
> > So, a meta config layer if seen in the context of our current config system.  
> 
> Yes.
> 
> Most people are really bad at knowing details, but they may well know
> some big-picture stuff. They can certainly answer questions like "do
> you have a laptop", and "does it have a PCMCIA card slot".
> 
> They might even be able to answer some HW specifics ("Is it 64-bit?"
> "Is the CPU an Intel/AMD or ARM chip?").

Perhaps we could add some "hint" questions at the very beginning of Kconfig
that would give some hints about the kind of usage the user expects.

E. g. asking if the Kernel is for the local machine. If so, it could look at
the cpu model at /proc/cpuinfo and take a set of defaults for that
specific model.

It could also have menu selections that would allow to select the type
of usage (customer PC, laptop, server, custom hardware, ...) and the
distro, in order to load some specific set of defaults for ARCH and
core-dependent features, and allow taking some "hints" at driver's level.

With those hints subsystem Kconfigs could use such information to take
automatic decisions about what should be enabled by default, and even
hide technical questions.

That's easier said than done, as implementing the hints logic can be
painful.

If we take such way, one open question is wow to tell Kconfig to read
/proc/cpuinfo or to run lspci/lsusb. Perhaps the simplest way would be
to add some dialect at Kconfig that would make it run a script if 
a Kconfig symbol has its value changed, and restart Kconfig after
the end of the script. This way, such script could internally modify
.config, in order to tweak the defaults.

Thanks,
Mauro
