Return-Path: <olof@lixom.net>
MIME-Version: 1.0
In-Reply-To: <20160711172040.GB21285@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
	<20160711171506.GC26822@dtor-ws> <20160711172040.GB21285@thunk.org>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 11 Jul 2016 10:27:47 -0700
Message-ID: <CAOesGMhqbdvXa23MT8qz91K5iHKpfskDfOjHZfpZjXZQvyf9wQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary=001a113fbb5a9c8cd905375f788e
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

--001a113fbb5a9c8cd905375f788e
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 11, 2016 at 10:20 AM, Theodore Ts'o <tytso@mit.edu> wrote:

> On Mon, Jul 11, 2016 at 10:15:06AM -0700, Dmitry Torokhov wrote:
> >
> > Cherry picking a commit from a branch/remote is much nicer than fetching
> > a part of [quilt based?] patch queue from git, unless I misunderstand
> > what you are proposing.
>
> The reason why I'm wondering whether or not quilt based might be
> better is because if it turns out that a patch introduces a
> regression, with a quilt based system the patch can be *dropped*, or
> revised in place.
>
> When you do a cherry-pick, you depend on the BSP kernel maintainer
> figuring out that a commit was later reverted, or fixed by a later
> commit that might have a different name, and which doesn't make it
> obvious that if you take commit 'A', you REALLY want to take commits
> 'B' and 'C' as well....
>

Ted, you keep using the term "BSP kernel maintainer". Mind clarifying what
you mean with it? I don't want to be picky, I just want to avoid
miscommunication.

BSP kernels are a small subset of downstream kernels. A BSP is often the
"evil vendor tree" that we keep seeing people complain about. They rarely
see updates on base versions (i.e. many are still on 3.10 and 3.18).

Some downstream _product_ kernels are based on BSP kernels, some are not.

Typical examples of those who _are_ based on BSPs tend to be $random
android device out there, where an OEM takes what the SoC manufacturer
gives them, does minimal changes and ships it.

Examples who are _not_ based on BSPs tend to be Android's own kernels
(Nexus devices), Chrome OS, and many inhouse kernel trees out there.

I think most people engaged in this discussion are working on non-BSP
downstream kernel trees.


-Olof

--001a113fbb5a9c8cd905375f788e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Jul 11, 2016 at 10:20 AM, Theodore Ts&#39;o <span dir=3D"ltr">&=
lt;<a href=3D"mailto:tytso@mit.edu" target=3D"_blank">tytso@mit.edu</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon, J=
ul 11, 2016 at 10:15:06AM -0700, Dmitry Torokhov wrote:<br>
&gt;<br>
&gt; Cherry picking a commit from a branch/remote is much nicer than fetchi=
ng<br>
&gt; a part of [quilt based?] patch queue from git, unless I misunderstand<=
br>
&gt; what you are proposing.<br>
<br>
</span>The reason why I&#39;m wondering whether or not quilt based might be=
<br>
better is because if it turns out that a patch introduces a<br>
regression, with a quilt based system the patch can be *dropped*, or<br>
revised in place.<br>
<br>
When you do a cherry-pick, you depend on the BSP kernel maintainer<br>
figuring out that a commit was later reverted, or fixed by a later<br>
commit that might have a different name, and which doesn&#39;t make it<br>
obvious that if you take commit &#39;A&#39;, you REALLY want to take commit=
s<br>
&#39;B&#39; and &#39;C&#39; as well....<br></blockquote><div><br></div><div=
>Ted, you keep using the term &quot;BSP kernel maintainer&quot;. Mind clari=
fying what you mean with it? I don&#39;t want to be picky, I just want to a=
void miscommunication.</div><div><br></div><div>BSP kernels are a small sub=
set of downstream kernels. A BSP is often the &quot;evil vendor tree&quot; =
that we keep seeing people complain about. They rarely see updates on base =
versions (i.e. many are still on 3.10 and 3.18).</div><div><br></div><div>S=
ome downstream _product_ kernels are based on BSP kernels, some are not.</d=
iv><div><br></div><div>Typical examples of those who _are_ based on BSPs te=
nd to be $random android device out there, where an OEM takes what the SoC =
manufacturer gives them, does minimal changes and ships it.<br><br>Examples=
 who are _not_ based on BSPs tend to be Android&#39;s own kernels (Nexus de=
vices), Chrome OS, and many inhouse kernel trees out there.</div><div><br><=
/div><div>I think most people engaged in this discussion are working on non=
-BSP downstream kernel trees.</div><div><br></div><div><br></div><div>-Olof=
</div><div><br></div></div></div></div>

--001a113fbb5a9c8cd905375f788e--
