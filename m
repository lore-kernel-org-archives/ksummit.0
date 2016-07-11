Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93945305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 01:18:53 +0000 (UTC)
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C71C157
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 01:18:52 +0000 (UTC)
Received: by mail-io0-f178.google.com with SMTP id q83so24475661iod.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 10 Jul 2016 18:18:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160710144224.GF26097@thunk.org>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<CAOesGMgL8AD+_uW+cD83ZLbnc3OiahfzJx6hhg1XTCyzgwZecQ@mail.gmail.com>
	<20160710144224.GF26097@thunk.org>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 10 Jul 2016 18:18:50 -0700
Message-ID: <CAOesGMgjmVNneiU3Om617HwnLiXP7igEon3wVRVgHS1=0=GC5w@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: multipart/alternative; boundary=001a113f3ca0605c1b053751efb0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113f3ca0605c1b053751efb0
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 10, 2016 at 7:42 AM, Theodore Ts'o <tytso@mit.edu> wrote:

> On Sat, Jul 09, 2016 at 11:19:39PM -0700, Olof Johansson wrote:
> >
> > The in-house developers on a certain subsystem didn't trust the
> > upstream maintainers to not regress their drivers -- in particular
> > they had seen some painful regressions on older chipsets when newer
> > hardware support was picked up. Esoteric bugs that had been fixed with
> > the help of the support team weren't folded in properly in the
> > upstream sources, or when they did they looked sufficiently different
> > that when -stable came around they didn't want to revert back to that
> > version, or they weren't yet picked up for upstream and now other
> > fixes were touching the same code and that seemed risky. They had a
> > code base that worked for the use cases they cared about (with the fix
> > applied that the support team had provided), and very little interest
> > in risking a regression from switching to the upstream version.
>
> Hrm.  That's interesting color commentary, thanks.


As mentioned downthread already: This wasn't actually for a BSP-based
embedded chipset/driver. This was for common hardware found in many laptops
(at the time).


> This won't help
> for those devices that are't using BSP kernels from SOC vendors, but
> for those platforms where kernels from vendors are available, do you
> know off-hand if they are tracking -stable?  Because if they are,
> presumably at least the SOC vendors would have the capability of doing
> the necessary testing.
>
> OTOH, the problem with that is once the SOC vendors have stopped
> selling a particular chip version, they probably don't have any
> interest in continuing to do QA for stable kernels for that particular
> SOC set.  So I'm guessing the answer is "no", it won't help, but I'd
> love to be pleasantly surprised to the contrary.
>

Optimizing our workflow for what some random SoC manufacturer does with
their BSP is probably not a useful exercise. As you say, once they're done
with the product they usually move on to the next generation.

As arm-soc maintainer, it's very rare that we see fixes targeted to
-stable, often because I don't think there are many downstream users of the
upstream tree for embedded platforms, so including fixes there doesn't mean
it shows up in product trees. As platforms do get more and more support, it
will get better over time but it's not there yet.


> > Instead, what the team started doing was using -stable as a source for
> > fixes -- when looking at a bug, first think you looked for was to see
> > if someone had touched that code/subsystem in -stable. It's not ideal
> > in the sense that you have to hit the bug and someone has to look at
> > it, but it was the state we ended up in on that project. It means
> > -stable still has substanial value even though it's not merged
> > directly.
>
> The concern with this approach is that it won't necessary get security
> fixes, since that implies that the product team is only looking at
> -stable once a bug has been reported.
>

That's true. For fixes that get CVE labels there's sometimes tracking that
happens and things get picked up, but for "silent" security fixes there's
not.


> I could tell interested product teams that there are patches that will
> prevent an maliciously crafted SD card from hanging a system or
> causing a memory bounds overrun possibly leading to a privilege
> escalation attack (for example), but that really doesn't scale, and
> unless the maintainer uses out-of-band notification methods, how would
> the product team know to look in -stable?
>

By tracking CVEs or having representation on the security lists. Only large
projects tend to have resources to do so, unfortunately.


-Olof

--001a113f3ca0605c1b053751efb0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Jul 10, 2016 at 7:42 AM, Theodore Ts&#39;o <span dir=3D"ltr">&l=
t;<a href=3D"mailto:tytso@mit.edu" target=3D"_blank">tytso@mit.edu</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sat, Ju=
l 09, 2016 at 11:19:39PM -0700, Olof Johansson wrote:<br>
&gt;<br>
&gt; The in-house developers on a certain subsystem didn&#39;t trust the<br=
>
&gt; upstream maintainers to not regress their drivers -- in particular<br>
&gt; they had seen some painful regressions on older chipsets when newer<br=
>
&gt; hardware support was picked up. Esoteric bugs that had been fixed with=
<br>
&gt; the help of the support team weren&#39;t folded in properly in the<br>
&gt; upstream sources, or when they did they looked sufficiently different<=
br>
&gt; that when -stable came around they didn&#39;t want to revert back to t=
hat<br>
&gt; version, or they weren&#39;t yet picked up for upstream and now other<=
br>
&gt; fixes were touching the same code and that seemed risky. They had a<br=
>
&gt; code base that worked for the use cases they cared about (with the fix=
<br>
&gt; applied that the support team had provided), and very little interest<=
br>
&gt; in risking a regression from switching to the upstream version.<br>
<br>
</span>Hrm.=C2=A0 That&#39;s interesting color commentary, thanks.=C2=A0</b=
lockquote><div><br></div><div>As mentioned downthread already: This wasn&#3=
9;t actually for a BSP-based embedded chipset/driver. This was for common h=
ardware found in many laptops (at the time).</div><div>=C2=A0<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"> This won&#39;t help<br>
for those devices that are&#39;t using BSP kernels from SOC vendors, but<br=
>
for those platforms where kernels from vendors are available, do you<br>
know off-hand if they are tracking -stable?=C2=A0 Because if they are,<br>
presumably at least the SOC vendors would have the capability of doing<br>
the necessary testing.<br>
<br>
OTOH, the problem with that is once the SOC vendors have stopped<br>
selling a particular chip version, they probably don&#39;t have any<br>
interest in continuing to do QA for stable kernels for that particular<br>
SOC set.=C2=A0 So I&#39;m guessing the answer is &quot;no&quot;, it won&#39=
;t help, but I&#39;d<br>
love to be pleasantly surprised to the contrary.<br></blockquote><div><br><=
/div><div>Optimizing our workflow for what some random SoC manufacturer doe=
s with their BSP is probably not a useful exercise. As you say, once they&#=
39;re done with the product they usually move on to the next generation.</d=
iv><div><br></div><div>As arm-soc maintainer, it&#39;s very rare that we se=
e fixes targeted to -stable, often because I don&#39;t think there are many=
 downstream users of the upstream tree for embedded platforms, so including=
 fixes there doesn&#39;t mean it shows up in product trees. As platforms do=
 get more and more support, it will get better over time but it&#39;s not t=
here yet.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">
&gt; Instead, what the team started doing was using -stable as a source for=
<br>
&gt; fixes -- when looking at a bug, first think you looked for was to see<=
br>
&gt; if someone had touched that code/subsystem in -stable. It&#39;s not id=
eal<br>
&gt; in the sense that you have to hit the bug and someone has to look at<b=
r>
&gt; it, but it was the state we ended up in on that project. It means<br>
&gt; -stable still has substanial value even though it&#39;s not merged<br>
&gt; directly.<br>
<br>
</span>The concern with this approach is that it won&#39;t necessary get se=
curity<br>
fixes, since that implies that the product team is only looking at<br>
-stable once a bug has been reported.<br></blockquote><div><br></div><div>T=
hat&#39;s true. For fixes that get CVE labels there&#39;s sometimes trackin=
g that happens and things get picked up, but for &quot;silent&quot; securit=
y fixes there&#39;s not.</div><div>=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">
I could tell interested product teams that there are patches that will<br>
prevent an maliciously crafted SD card from hanging a system or<br>
causing a memory bounds overrun possibly leading to a privilege<br>
escalation attack (for example), but that really doesn&#39;t scale, and<br>
unless the maintainer uses out-of-band notification methods, how would<br>
the product team know to look in -stable?<br></blockquote><div><br></div><d=
iv>By tracking CVEs or having representation on the security lists. Only la=
rge projects tend to have resources to do so, unfortunately.</div><div><br>=
</div><div><br></div><div>-Olof=C2=A0</div></div></div></div>

--001a113f3ca0605c1b053751efb0--
