Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 12 Sep 2018 09:07:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Peter Huewe <peterhuewe@gmx.de>
Message-ID: <20180912070727.GB13500@kroah.com>
References: <trinity-b7dcc7ee-84eb-4ba9-ab94-b2936551a388-1536588284133@3c-app-gmx-bs33>
	<20180911113725.5d91b945@jawa> <20180911193308.GA4429@kroah.com>
	<2400444.QbA1LOmrIy@avalon> <20180912062631.GB10268@kroah.com>
	<D4FD9759-C9C2-4F09-8175-48504E8BC87A@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D4FD9759-C9C2-4F09-8175-48504E8BC87A@gmx.de>
Cc: Jonas Jensen <jonas.jensen@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org, Lukasz Majewski <lukma@denx.de>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Deprecation / Removal of
 old hardware support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 12, 2018 at 08:49:05AM +0200, Peter Huewe wrote:
> 
> 
> Am 12. September 2018 08:26:31 MESZ schrieb Greg KH <gregkh@linuxfoundation.org>:
> >On Wed, Sep 12, 2018 at 12:39:34AM +0300, Laurent Pinchart wrote:
> >> Hi Greg,
> >> 
> >> On Tuesday, 11 September 2018 22:33:08 EEST Greg KH wrote:
> >> > On Tue, Sep 11, 2018 at 11:37:25AM +0200, Lukasz Majewski wrote:
> >> > > In the kernel community we pose a lot of attention to security
> >(for
> >> > > example the prompt reaction on meltdown/spectre), but in the same
> >time
> >> > > we tend to forget about the "long lived" devices and force their
> >> > > maintainers to use 2.6.x kernels..... (or even 2.4.x).
> >> > 
> >> > We care, but really, how much can we do here?
> >> > 
> >> > I've been working a lot with the Adroid ecosystem to try to help
> >fix
> >> > their bad habits of "grab a random kernel and ship it and never
> >update
> >> > it" by providing longer lived kernels that they can constantly
> >update
> >> > their devices to.
> >> > 
> >> > But their lifetimes is much shorter compared to yours, and I have
> >no
> >> > insight into what kernels are being used, what configurations you
> >all
> >> > care about, and how long you need/want them updated.
> >> > 
> >> > Working with really old kernels like you have, without hardware
> >> > available to test is a hard task.  If your hardware is in a system
> >like
> >> > kernelci, then you can be sure that any new kernel will work
> >properly
> >> > with your system and then you might not want to have to stay with
> >really
> >> > old kernels that no one can maintain :)
> >> > 
> >> > There's a Linux Foundation project, "CIP" that wants to maintain
> >kernels
> >> > for devices like what you are making for 20+ years.  They are
> >having the
> >> > problems of not knowing exactly what platforms they wish to
> >support, but
> >> > their goal is good, hopefully they eventually nail something down
> >and we
> >> > can work together.  Perhaps you should contact them to try to help
> >solve
> >> > this issue for everyone?
> >> 
> >> I may be wrong, but I understand Lukasz's comment as the exact
> >opposite: we 
> >> forget about long-lived devices and drop their support while they're
> >still in 
> >> active use, forcing vendors to start using old and unsupported
> >kernels. If a 
> >> large number of ARMv4(T) devices are still being actively deployed
> >and 
> >> maintain, we should treat them as first-class citizens.
> >
> >No, I never want to drop support for anything that anyone is actually
> >using.  When I drop support for hardware/protocols, it goes through the
> >staging tree for a few months to see if anyone says anything.  If not,
> >then it gets removed.  And even then, if someone comes back and says
> >"hey I use that!" it's a simple revert to get it back.
> Can/should everything that we think is broken/unused be moved to staging first?

It has been used this way, but no, it's not necessary.  Some maintainers
do it to give people a chance to notice easier than the code just
disappearing one release.

> Isn't this unecessary churn of code?

'git mv' is very simple to use :)

> The mandarory todo file would then consist of which action items?

Look at the previous examples of this happening for how this is usually
worded.  Something like "this code is obsolete or broken and will be
deleted on XXX unless someone notifies us that they use it and can help
out with fixing these issues: ..."

> >The problem is if no one _tells_ us they are using something.  And
> >that's not something we can fix without help from the developers/users
> >of those hardware platforms talking to us.
> 
> Would it make sense to introduce something like the staging warning ('this driver is from stagin directory' message in dmesg) for support deprecation?

We have that today, with a taint flag, have you not noticed it? :)

> So if a maintainer, who probably has the best *available* picture about hw usage, thinks it's about time to remove the support, he adds a depecration flag to kconfig, which then adds code to emit a warning to dmesg.
> Users then get at least informed that deprecation would affect them, once they boot a newer kernel.
> "Foobar support is about to be removed from kernel - please object to xyz if you see this message"

No one reads kernel log messages :)

> If after e.g. 10 kernel cycles no one objected, it can be assumed that no one cared too much about it.

10 kernel cycles is how many _years_?  We normally wait 6-8 months
instead (3 releases or so.)

> Even newbie users tend to have a look in dmesg from time to time - atleast I teach that to my students - and a warning usually gets noticed.
> 
> We (used to) have similar warnings in the kernel log if a driver uses old apis ("this driver still uses old v4l..." ), why not introduce something similar for support deprecation?

No one used to care or do anything about those old api messages, as was
evident when no one ever fixed up the code, so that way really does not
work well.

thanks,

greg k-h
