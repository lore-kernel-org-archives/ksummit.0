Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Guenter Roeck <linux@roeck-us.net>
Date: Mon, 11 Jul 2016 00:38:05 +0200
Message-ID: <2340101.mYDzTnT1Lv@vostro.rjw.lan>
In-Reply-To: <578293C5.1090503@roeck-us.net>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160710170117.GI26097@thunk.org> <578293C5.1090503@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday, July 10, 2016 11:28:21 AM Guenter Roeck wrote:
> On 07/10/2016 10:01 AM, Theodore Ts'o wrote:
> > On Sun, Jul 10, 2016 at 09:52:04PM +0530, Vinod Koul wrote:
> >>
> >> For patch merge, the expectation is that it is tested against upstream.
> >> For stable, should we also mandate that it be verified against the stable
> >> tree(s) as well, or if Maintainer feels it is stable material then we
> >> can ask Submitters to test before CCing stable...
> >
> > This is simply not realistic.
> >
> Agreed. Testing has to happen on the back-end side.
> 
> > There are **eleven** stable or longterm trees listed on kernel.org.
> 
> I think this is one of the problems we are having: There are way too many
> stable / longterm trees.

So going back to the origins of -stable, the problem it was invented to address
at that time, IIRC, was that people started to perceive switching over to the
kernels released by Linus as risky, because it was hard to get fixes for bugs
found in them.  The idea at that time was to collect the fixes (and fixes only)
in a "stable" tree, so that whoever decided to use the latest kernel released
by Linus could get them readily, but without burdening maintainers with having
their own "stable" branches and similar.  And that was going to last until the
next kernel release from Linus, at which point a new "stable" tree was to be
started.

That's what the 4.6.y "stable" series is today.

To me, that particular part has been very successful and it actually works
well enough, so I wouldn't change anything in it.

However, "long-term stable" trees started to appear at one point and those are
quite different and serve a different purpose.  I'm not quite sure if handling
them in the same way as 4.6.y is really the best approach.  At least it seems
to lead to some mismatch between the expectations and what is really delivered.

Thanks,
Rafael
