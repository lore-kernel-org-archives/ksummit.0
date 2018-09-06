Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55157DCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:35:19 +0000 (UTC)
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F147786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:35:18 +0000 (UTC)
Received: by mail-wm0-f51.google.com with SMTP id 207-v6so12469795wme.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 13:35:18 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
In-Reply-To: <CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Thu, 6 Sep 2018 13:35:05 -0700
Message-ID: <CABVU7+tU8YKn+oNroFOb7Czam3LZUbzgnex4U6YQGpDXRAfjPg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: multipart/alternative; boundary="0000000000002bde65057539d45f"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--0000000000002bde65057539d45f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 6, 2018 at 2:54 AM Linus Walleij <linus.walleij@linaro.org>
wrote:

> On Wed, Sep 5, 2018 at 11:00 AM Daniel Vetter <daniel.vetter@ffwll.ch>
> wrote:
>
> > I have no idea how this works outside of intel or graphics, I tend to
> > not chat with those people as much as I do with graphics people. Would
> > be interesting to know how it is outside of the graphics bubble
> > indeed.
>
> More or less any SoC company for routers, handsets, tablets etc
> have the same problem.
>
> At one point I was made responsible for such a scenario. The
> approach I developed was a bit ad hoc but contained some of this:
>

Thanks a lot for sharing and thanks to the others who commented after
that.


>
> - Classify the components into embargoed and non-embargoed
>   so anything not affected by embargo can be pushed upstream.
>   (OK it's maybe obvious).
>

It is obvious but it is important to highlight, otherwise things might
get stuck in the pipe just because it is unclear and people get afraid
to sign-off something that might be seen as a "leak".


>
> - Get management to provide a cut-off date for embargo. Like
>   "after this point in time we certainly do not care what code you
>   publish pertaining to X" and make that formal so that when that
>   day comes developers can simply start sending the code without
>   having to ask permission again, because having to do that is
>   pointless and bureaucratic. This is a property of the company
>   "FOSS-OUT legal process" that is simple but still often
>   forgotten. It relieves the developers for the need to hammer
>   management for approvals.
>

Yes, on the internal front of the battle we are already doing this
and trying to get even earlier embargo-lifted decisions.


>
> - Use internal developers with high upstream experience and
>   NDA to make internal reviews and try to anticipate any problems
>   that will be seen when posting the code to the community and
>   fix it before it happens. Get the code in upstream shape.
>   (This is a good reason to hire kernel maintainers and have them
>   spend time upstream BTW.)
>

Yeap, we are trying to do the same here.


>
> - Minimize hamming distance to mainline, which means rebase
>   internal development as often as possible, track mainline,
>   bring in entire branches of development if need be just to not
>   deviate, because deviating too much from mainline is inviting
>   disaster. This goes counter to the conventional wisdom that
>   says you should use stable releases and baselines and LTS
>   and what not. I am not a big fan of the latter. Rebase on
>   Torvald's -rcN or even linux-next if you are aiming for upstream,
>   else you are not really aiming for upstream, but secondary
>   goals such as feature completion, "not disturbing development",
>   or getting tests to pass cleanly all the time. Get your priorities
>   straight: is upstream first really what you want? Then that
>   should be priority number one, not feature completion, not
>   "not disturbing developers", not passing internal tests.
>   If you find upstream first isn't really your number one priority
>   then call your strategy upstream second or upstream
>   third so that it reflects reality instead of trying to sound good.
>
> The last point was always the most controversial.
>

It is interesting. In the past I also thought the frequent rebases were
controversial
and maybe kind of insane to keep rebasing. But one of the key lessons we
had is that rebase often is not fast enough still. But keeping it in
constant rebase is easier and cheaper than rebase often. And definitely
cheper than loosing code with the famous "technical debt"
For every week that I kept the BOT disabled and blocked I regretted so
badly. When that happened I had to expend another full week only fixing
conflicts.
If code didn't change much yet, git and patch don't get lost easily. But if
they get lost, wiggle or manual inspection can get it faster.
But when code changed a lot like on -rc1 then the conflict is more a
forward-port as painful the backport and risky.

But of course, a key part of the constant rebase is CI. We constantly
rebase on top of drm-tip that has CI for every patch pre and post merge.
And we also have CI on internal branch for every rebasing point.


>
> Just my =E2=82=AC0.01
> Linus Walleij
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--0000000000002bde65057539d45f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Sep 6, 2018 at 2:54 AM Linus Walleij &lt;<a href=3D"mailto:linus.walleij@=
linaro.org">linus.walleij@linaro.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On Wed, Sep 5, 2018 at 11:00 AM Daniel Vetter &lt;<a href=
=3D"mailto:daniel.vetter@ffwll.ch" target=3D"_blank">daniel.vetter@ffwll.ch=
</a>&gt; wrote:<br>
<br>
&gt; I have no idea how this works outside of intel or graphics, I tend to<=
br>
&gt; not chat with those people as much as I do with graphics people. Would=
<br>
&gt; be interesting to know how it is outside of the graphics bubble<br>
&gt; indeed.<br>
<br>
More or less any SoC company for routers, handsets, tablets etc<br>
have the same problem.<br>
<br>
At one point I was made responsible for such a scenario. The<br>
approach I developed was a bit ad hoc but contained some of this:<br></bloc=
kquote><div><br></div><div>Thanks a lot for sharing and thanks to the other=
s who commented after</div><div>that.</div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<br>
- Classify the components into embargoed and non-embargoed<br>
=C2=A0 so anything not affected by embargo can be pushed upstream.<br>
=C2=A0 (OK it&#39;s maybe obvious).<br></blockquote><div><br></div><div>It =
is obvious but it is important to highlight, otherwise things might</div><d=
iv>get stuck in the pipe just because it is unclear and people get afraid</=
div><div>to sign-off something that might be seen as a &quot;leak&quot;.</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
- Get management to provide a cut-off date for embargo. Like<br>
=C2=A0 &quot;after this point in time we certainly do not care what code yo=
u<br>
=C2=A0 publish pertaining to X&quot; and make that formal so that when that=
<br>
=C2=A0 day comes developers can simply start sending the code without<br>
=C2=A0 having to ask permission again, because having to do that is<br>
=C2=A0 pointless and bureaucratic. This is a property of the company<br>
=C2=A0 &quot;FOSS-OUT legal process&quot; that is simple but still often<br=
>
=C2=A0 forgotten. It relieves the developers for the need to hammer<br>
=C2=A0 management for approvals.<br></blockquote><div><br></div><div>Yes, o=
n the internal front of the battle we are already doing this</div><div>and =
trying to get even earlier embargo-lifted decisions.</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
- Use internal developers with high upstream experience and<br>
=C2=A0 NDA to make internal reviews and try to anticipate any problems<br>
=C2=A0 that will be seen when posting the code to the community and<br>
=C2=A0 fix it before it happens. Get the code in upstream shape.<br>
=C2=A0 (This is a good reason to hire kernel maintainers and have them<br>
=C2=A0 spend time upstream BTW.)<br></blockquote><div><br></div><div>Yeap, =
we are trying to do the same here.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
- Minimize hamming distance to mainline, which means rebase<br>
=C2=A0 internal development as often as possible, track mainline,<br>
=C2=A0 bring in entire branches of development if need be just to not<br>
=C2=A0 deviate, because deviating too much from mainline is inviting<br>
=C2=A0 disaster. This goes counter to the conventional wisdom that<br>
=C2=A0 says you should use stable releases and baselines and LTS<br>
=C2=A0 and what not. I am not a big fan of the latter. Rebase on<br>
=C2=A0 Torvald&#39;s -rcN or even linux-next if you are aiming for upstream=
,<br>
=C2=A0 else you are not really aiming for upstream, but secondary<br>
=C2=A0 goals such as feature completion, &quot;not disturbing development&q=
uot;,<br>
=C2=A0 or getting tests to pass cleanly all the time. Get your priorities<b=
r>
=C2=A0 straight: is upstream first really what you want? Then that<br>
=C2=A0 should be priority number one, not feature completion, not<br>
=C2=A0 &quot;not disturbing developers&quot;, not passing internal tests.<b=
r>
=C2=A0 If you find upstream first isn&#39;t really your number one priority=
<br>
=C2=A0 then call your strategy upstream second or upstream<br>
=C2=A0 third so that it reflects reality instead of trying to sound good.<b=
r>
<br>
The last point was always the most controversial.<br></blockquote><div><br>=
</div><div>It is interesting. In the past I also thought the frequent rebas=
es were controversial</div><div>and maybe kind of insane to keep rebasing. =
But one of the key lessons we</div><div>had is that rebase often is not fas=
t enough still. But keeping it in constant rebase is easier and cheaper tha=
n rebase often. And definitely cheper than loosing code with the famous &qu=
ot;technical debt&quot;</div><div>For every week that I kept the BOT disabl=
ed and blocked I regretted so badly. When that happened I had to expend ano=
ther full week only fixing conflicts.</div><div>If code didn&#39;t change m=
uch yet, git and patch don&#39;t get lost easily. But if they get lost, wig=
gle or manual inspection can get it faster.</div><div>But when code changed=
 a lot like on -rc1 then the conflict is more a forward-port as painful the=
 backport and risky.</div><div><br></div><div>But of course, a key part of =
the constant rebase is CI. We constantly rebase on top of drm-tip that has =
CI for every patch pre and post merge. And we also have CI on internal bran=
ch for every rebasing point.</div><div>=C2=A0<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
<br>
Just my =E2=82=AC0.01<br>
Linus Walleij<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div></div>

--0000000000002bde65057539d45f--
