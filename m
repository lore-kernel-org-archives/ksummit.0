Return-Path: <alexandre.belloni@free-electrons.com>
Date: Sun, 25 Jun 2017 23:32:45 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20170625213245.ep555qmzwbl4kjpq@piout.net>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170625190529.GV1248@mtr-leonro.local>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On 25/06/2017 at 22:05:29 +0300, Leon Romanovsky wrote:
> On Sun, Jun 25, 2017 at 11:37:12AM -0700, Linus Torvalds wrote:
> > On Sun, Jun 25, 2017 at 11:19 AM, Leon Romanovsky <leon@kernel.org> wrote:
> > >
> > > Great, so why are we continuing to allow patches with MODULE_VERSION and
> > > DRIVER_VERSION changes?
> >
> > I suspect they just haven't caused problems elsewhere.
> >
> > And honestly, they aren't that common. Grepping for MODULE_VERSION and
> > DRIVER_VERSION shows more than I would like, but we're talking
> > hundreds, not thousands (and lots of them are basically dead, stale
> > code - ATA etc, or just joke names - usb).
> 
> I see it differently, from my point of view, it is pretty active,
> especially in the subsystems where new drivers are added more often,
> but if you say that the policy exists, it is enough for me.
> 

A while ago, I went and removed all of them from the RTC subsystem.



-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
