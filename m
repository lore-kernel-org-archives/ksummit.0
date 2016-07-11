Return-Path: <jforbes@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20160711170333.GE3890@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
From: Justin Forbes <jforbes@redhat.com>
Date: Mon, 11 Jul 2016 12:07:19 -0500
Message-ID: <CAFbkSA188kCMPJ=cw6VsUJHbQTQTbbChUFK3hyGJVPggPtibuQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary=94eb2c035a186b6cbd05375f2fa5
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

--94eb2c035a186b6cbd05375f2fa5
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 11, 2016 at 12:03 PM, Theodore Ts'o <tytso@mit.edu> wrote:

> On Mon, Jul 11, 2016 at 04:13:00PM +0100, Mark Brown wrote:
> > On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts'o wrote:
> >
> > > the latest stable kernel.  (But even if they do, apparently many
> > > device vendors aren't bothering to merge in changes from the SOC's BSP
> > > kernel, even if the BSP kernel is getting -stable updates.)
> >
> > It would be pretty irresponsible for device vendors to be merging BSP
> > trees, they're generally development things with ongoing feature updates
> > that might interact badly with things the system integrator has done
> > rather than something stable enough to just merge constantly.
>
> So the question is who actually uses -stable kernels, and does it make
> sense for it even to be managed in a git tree?
>
> Very few people will actually be merging them, and in fact maybe
> having a patch queue which is checked into git might actually work
> better, since it sounds like most people are just cherry-picking
> specific patches.
>
>
This is exactly what stable-queue.git is. It has been around for a long
time, and fairly helpful for cherry-picking specific patches or testing
queued patches before an rc is called out.

Justin

--94eb2c035a186b6cbd05375f2fa5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Jul 11, 2016 at 12:03 PM, Theodore Ts&#39;o <span dir=3D"ltr">&lt;<=
a href=3D"mailto:tytso@mit.edu" target=3D"_blank">tytso@mit.edu</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">On Mon, Jul 11, 2016 at 04:13:00PM +0100, Mark Brown wrote:<br>
&gt; On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts&#39;o wrote:<br>
&gt;<br>
&gt; &gt; the latest stable kernel.=C2=A0 (But even if they do, apparently =
many<br>
&gt; &gt; device vendors aren&#39;t bothering to merge in changes from the =
SOC&#39;s BSP<br>
&gt; &gt; kernel, even if the BSP kernel is getting -stable updates.)<br>
&gt;<br>
&gt; It would be pretty irresponsible for device vendors to be merging BSP<=
br>
&gt; trees, they&#39;re generally development things with ongoing feature u=
pdates<br>
&gt; that might interact badly with things the system integrator has done<b=
r>
&gt; rather than something stable enough to just merge constantly.<br>
<br>
</div></div>So the question is who actually uses -stable kernels, and does =
it make<br>
sense for it even to be managed in a git tree?<br>
<br>
Very few people will actually be merging them, and in fact maybe<br>
having a patch queue which is checked into git might actually work<br>
better, since it sounds like most people are just cherry-picking<br>
specific patches.<br>
<br></blockquote><div><br></div><div>This is exactly what stable-queue.git =
is. It has been around for a long time, and fairly helpful for cherry-picki=
ng specific patches or testing queued patches before an rc is called out.</=
div><div><br></div><div>Justin=C2=A0</div></div></div></div>

--94eb2c035a186b6cbd05375f2fa5--
