Return-Path: <olof@lixom.net>
MIME-Version: 1.0
In-Reply-To: <20160711171146.GD3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk> <20160711170333.GE3890@thunk.org>
	<20160711171146.GD3701@sirena.org.uk>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 11 Jul 2016 10:13:56 -0700
Message-ID: <CAOesGMiBo=tVJcyBmCtanvEWNzX+6oNUn_5ou4O_EzCv6QkOVA@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: multipart/alternative; boundary=001a113fbb5a217f0c05375f477d
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

--001a113fbb5a217f0c05375f477d
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 11, 2016 at 10:11 AM, Mark Brown <broonie@kernel.org> wrote:

> On Mon, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts'o wrote:
>
> > Very few people will actually be merging them, and in fact maybe
> > having a patch queue which is checked into git might actually work
> > better, since it sounds like most people are just cherry-picking
> > specific patches.
>
> I think at this point even if people are cherry picking patches it's
> probably still going to be easier for people to work with a git tree
> than anything else - the workflow for git cherry-pick, looking for
> dependent patches and so on is pretty clear, the upstream commit IDs are
> there if you prefer to go direct to them and if you really do want a raw
> patch stack then it's easy to translate into one.
>

Yeah, git-backed is much preferred -- you can easily do git log on a
subdirectory, git annotate file contents, etc.


-Olof

--001a113fbb5a217f0c05375f477d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Jul 11, 2016 at 10:11 AM, Mark Brown <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:broonie@kernel.org" target=3D"_blank">broonie@kernel.org</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Mon=
, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts&#39;o wrote:<br>
<br>
&gt; Very few people will actually be merging them, and in fact maybe<br>
&gt; having a patch queue which is checked into git might actually work<br>
&gt; better, since it sounds like most people are just cherry-picking<br>
&gt; specific patches.<br>
<br>
</span>I think at this point even if people are cherry picking patches it&#=
39;s<br>
probably still going to be easier for people to work with a git tree<br>
than anything else - the workflow for git cherry-pick, looking for<br>
dependent patches and so on is pretty clear, the upstream commit IDs are<br=
>
there if you prefer to go direct to them and if you really do want a raw<br=
>
patch stack then it&#39;s easy to translate into one.<br></blockquote><div>=
<br></div><div>Yeah, git-backed is much preferred -- you can easily do git =
log on a subdirectory, git annotate file contents, etc.<br></div><div><br><=
/div><div><br></div><div>-Olof</div><div><br></div></div></div></div>

--001a113fbb5a217f0c05375f477d--
