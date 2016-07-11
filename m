Return-Path: <jwboyer@gmail.com>
MIME-Version: 1.0
Sender: jwboyer@gmail.com
In-Reply-To: <20160711170333.GE3890@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
From: Josh Boyer <jwboyer@fedoraproject.org>
Date: Mon, 11 Jul 2016 13:17:53 -0400
Message-ID: <CA+5PVA6PYXeJjyyqN0N8KrSaVZ_cfJ2i3KghePLZb9YzOMZwhg@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 1:03 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Mon, Jul 11, 2016 at 04:13:00PM +0100, Mark Brown wrote:
>> On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts'o wrote:
>>
>> > the latest stable kernel.  (But even if they do, apparently many
>> > device vendors aren't bothering to merge in changes from the SOC's BSP
>> > kernel, even if the BSP kernel is getting -stable updates.)
>>
>> It would be pretty irresponsible for device vendors to be merging BSP
>> trees, they're generally development things with ongoing feature updates
>> that might interact badly with things the system integrator has done
>> rather than something stable enough to just merge constantly.
>
> So the question is who actually uses -stable kernels, and does it make
> sense for it even to be managed in a git tree?

A number of distributions use stable kernels.  Fedora being one of
them.  Having the releases helps from both "what upstream are we
using" and "convenient patch (patch-4.6.4.xz) to apply" standpoints.

> Very few people will actually be merging them, and in fact maybe
> having a patch queue which is checked into git might actually work
> better, since it sounds like most people are just cherry-picking
> specific patches.

I think you need to be careful with generalities this early in the
discussion.  Thus far it's mostly people doing heavy development work
on the kernel or for a specific platform that have chimed in.  I would
suggest that they aren't really the target of stable kernels.  It is
likely much more useful for distributions and end users.

josh
