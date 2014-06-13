Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AA129ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:55:48 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5AEA120276
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:55:48 +0000 (UTC)
Message-ID: <1402682146.2224.44.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>
Date: Fri, 13 Jun 2014 10:55:46 -0700
In-Reply-To: <20140613173041.GA19513@kroah.com>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-06-13 at 10:30 -0700, Greg KH wrote:
> On Fri, Jun 13, 2014 at 11:56:08AM -0500, Christoph Lameter wrote:
> > On Wed, 11 Jun 2014, Greg KH wrote:
> > 
> > > > Often the kernel subsystems are impeding performance. In high speed
> > > > computing we regularly bypass the kernel network subsystems, block I/O
> > > > etc. Direct hardware access means though that one is explosed to the ugly
> > > > particularities of how a certain device has to be handled. Can we have the
> > > > cake and eat it too by defining APIs that allow low level hardware access
> > > > but also provide hardware abstraction (maybe limited to certain types of
> > > > devices).
> > >
> > > What type of devices are you wanting here, block and networking or
> > > something else?  We have the uio interface if you want to (and know how
> > > to) talk to your hardware directly from userspace, what else do you want
> > > to do here that this doesn't provide?
> > 
> > Block and networking mainly. The userspace VFIO API exposes device
> > specific registers. We need something that is a decent abstraction.
> > IBverbs is something like that but it could be done much better.
> 
> Heh, we've been down this road before :)
> 
> In the end, userspace wants a socket-like interface to the networking
> "stack", right?  So either you provide that with a custom networking
> library that talks directly to a specific hardware card (like 3
> different companies provide), or you just deal with the in-kernel
> network stack.  What else is there that we can do here?
> 
> And as for block device, "raw access", really?  What is lacking with
> what we already provide in "raw mode", and a no-op block scheduler?  How
> much more "lean" can we possibly go without you having to write a custom
> userspace uio driver for every block controller out there?

Just remember there are lessons from Raw devices too.  Oracle originally
forced the raw mode on our block devices for this reason  ...  just get
your block layer and filesystems mostly out of our way was their cry.
Then they discovered that not having a FS wrapper led to the system not
being able to recognise the raw devices as being raw, which lead to an
awful lot of really expensive data loss cockups.

The compromise today is using filesystems with O_DIRECT to the file data
containers.

The point here is that lots of people say "just get your operating
system out of my way" most realise they actually didn't mean it when
presented with the reality.

The abstractions most people who say this want are a zero delay data
path with someone else taking care of all of the metadata and setup
problems ... effectively a MPI type interface.  Is that what you're
looking for, Christoph?

James
