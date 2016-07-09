Return-Path: <dmitry.torokhov@gmail.com>
Date: Fri, 8 Jul 2016 17:10:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160709001046.GH28589@dtor-ws>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5780334E.8020801@roeck-us.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 08, 2016 at 04:12:14PM -0700, Guenter Roeck wrote:
> On 07/08/2016 03:35 PM, Jiri Kosina wrote:
> >Yeah, this topic again. It'd be a sad year on ksummit-discuss@ without it,
> >wouldn't it? :)
> >
> >As a SUSE Enterprise Linux kernel maintainer, stable kernel is one of the
> >crucial elements I rely on (and I also try to make sure that SUSE
> >contributes back as much as possible).
> >
> >Hence any planned changes in the workflow / releases are rather essential
> >for me, and I'd like to participate, should any such discussion take
> >place.
> >
> 
> Same here. New employer, lots of unhappiness with stable releases, to the point
> where stable trees are not used as basis for shipping releases.
> That kind of defeats the purpose. So, instead of "let's ignore stable",
> maybe we can get to a point where people feel comfortable with the quality
> of stable releases, and where stable can actually be used as basis for production
> releases.

I wonder if it would not be a good idea to split stable into several
flavors: security, fixes to core (really fixes), and fixes to device
drivers + new hardware support. I feel that with current single stable
tree (per stable release) we are too liberal with what we direct towards
stable, with many changes not being strictly necessary, but rather "nice
to have".

Thanks.

-- 
Dmitry
