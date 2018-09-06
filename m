Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C113F0D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:41:46 +0000 (UTC)
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B01908B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 20:41:45 +0000 (UTC)
Received: by mail-wm0-f65.google.com with SMTP id o18-v6so12618253wmc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 13:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
	<CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
	<CACRpkdZW03DuMVQ8Rn5GOiiN2z16cqq0WMmQFZquaGBp4BpsCA@mail.gmail.com>
	<CAOw6vb+Uanx_wqhMa4Kv=49rPKD96HBv1PqzL-gPUTgtT153tA@mail.gmail.com>
In-Reply-To: <CAOw6vb+Uanx_wqhMa4Kv=49rPKD96HBv1PqzL-gPUTgtT153tA@mail.gmail.com>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Thu, 6 Sep 2018 13:41:33 -0700
Message-ID: <CABVU7+u9F-uGRY0BW4N2901NUiE1fyd+cf0eV+AqoPnbZHYfnQ@mail.gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Content-Type: multipart/alternative; boundary="00000000000044508e057539eb08"
Cc: jcm@redhat.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

--00000000000044508e057539eb08
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 6, 2018 at 5:50 AM Sean Paul <seanpaul@chromium.org> wrote:

> On Thu, Sep 6, 2018 at 6:43 AM Linus Walleij <linus.walleij@linaro.org>
> wrote:
> >
> > On Thu, Sep 6, 2018 at 12:25 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > > I think in the generalized case, you also want the reverse, but
> > > that may be harder: When targetting specific software products
> > > that you want to integrate your code, there should be a deadline
> > > for the latest point by which code needs to be posted in
> > > public.
> >
> > This brings in the process of procurement, as in how companies
> > making products source their misc hardware like sensors,
> > touchscreens, displays, FPGAs or whatnot.
> >
> > Maybe this is obvious.
> >
> > It happened at one point that we were sourcing hardware from
> > a third party, and it was pretty complex and I asked procurement
> > to put a demand on the company to provide upstream support
> > so we could just grab the latest kernel and use that driver.
> >
> > I heard other very FOSS-oriented companies ask the same
> > and is pretty much what I've heard people like Jon Masters
> > and the Chromebook people say in relation to upstream first
> > (they can slam me if they disagree) - others also want an
> > upstream first approach from their component suppliers and
> > it is going to be part of the procurement process so having
> > upstream first is going to be a competitive advantage or
> > even strict requirement for the component vendor.
>
> Speaking really only for display, but most of this applies to other areas:
>
> Pretty much this. Chromebook display stack must use drm/kms, and the
> patches must* go upstream before landing in our kernel. Looking at our
> 4.14 branch [1], most of the commits there are
> UPSTREAM/BACKPORT/FROMGIT/FROMLIST prefixed which means they've landed
> upstream or have been reviewed upstream.
>

This firm position coming from the product directly is extremely beneficial
for us
and for open source in general.

Thanks a lot for that! :)


>
> We carry downstream patches in a separate working branch shared
> between developers and rebase on our 4.14 kernel regularly. Everything
> in the working branch should be already sent upstream or being
> polished for upstream. Reviews are done on the list. Once a patch
> lands upstream, it's backported to our kernel and removed from the
> working branch.
>
> Sean
>
> [1]-
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+log/chromeos-4.14/drivers/gpu/drm
>
> * There are always exceptions
>
> >
> > As it happened in my case the vendor was very unhappy
> > with this and unused to this kind of requirements. (They have
> > since changed their attitude so no-one needs to be outed.)
> >
> > What I realized was that instead of being "hard" on vendors
> > with this, I could gain more by being let's say "firm".
> >
> > I required that in order to procure their component, they
> > should present an upstreaming strategy, and post an initial
> > patch set for the specific product before we would agree
> > to procurement. This was more of a gentlemen agreement
> > than a hard contract clause, but it worked very well to
> > transform that company, and I think it is a good way, because
> > being too hard can be counter-productive, I guess it comes
> > from simple diplomacy, people do not like threats.
> >
> > Yours,
> > Linus Walleij
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--00000000000044508e057539eb08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Sep 6, 2018 at 5:50 AM Sean Paul &lt;<a href=3D"mailto:seanpaul@chromium.=
org">seanpaul@chromium.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">On Thu, Sep 6, 2018 at 6:43 AM Linus Walleij &lt;<a href=3D"mailto:l=
inus.walleij@linaro.org" target=3D"_blank">linus.walleij@linaro.org</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; On Thu, Sep 6, 2018 at 12:25 PM Arnd Bergmann &lt;<a href=3D"mailto:ar=
nd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; I think in the generalized case, you also want the reverse, but<b=
r>
&gt; &gt; that may be harder: When targetting specific software products<br=
>
&gt; &gt; that you want to integrate your code, there should be a deadline<=
br>
&gt; &gt; for the latest point by which code needs to be posted in<br>
&gt; &gt; public.<br>
&gt;<br>
&gt; This brings in the process of procurement, as in how companies<br>
&gt; making products source their misc hardware like sensors,<br>
&gt; touchscreens, displays, FPGAs or whatnot.<br>
&gt;<br>
&gt; Maybe this is obvious.<br>
&gt;<br>
&gt; It happened at one point that we were sourcing hardware from<br>
&gt; a third party, and it was pretty complex and I asked procurement<br>
&gt; to put a demand on the company to provide upstream support<br>
&gt; so we could just grab the latest kernel and use that driver.<br>
&gt;<br>
&gt; I heard other very FOSS-oriented companies ask the same<br>
&gt; and is pretty much what I&#39;ve heard people like Jon Masters<br>
&gt; and the Chromebook people say in relation to upstream first<br>
&gt; (they can slam me if they disagree) - others also want an<br>
&gt; upstream first approach from their component suppliers and<br>
&gt; it is going to be part of the procurement process so having<br>
&gt; upstream first is going to be a competitive advantage or<br>
&gt; even strict requirement for the component vendor.<br>
<br>
Speaking really only for display, but most of this applies to other areas:<=
br>
<br>
Pretty much this. Chromebook display stack must use drm/kms, and the<br>
patches must* go upstream before landing in our kernel. Looking at our<br>
4.14 branch [1], most of the commits there are<br>
UPSTREAM/BACKPORT/FROMGIT/FROMLIST prefixed which means they&#39;ve landed<=
br>
upstream or have been reviewed upstream.<br></blockquote><div><br></div><di=
v>This firm position coming from the product directly is extremely benefici=
al for us</div><div>and for open source in general.</div><div><br></div><di=
v>Thanks a lot for that! :)</div><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
<br>
We carry downstream patches in a separate working branch shared<br>
between developers and rebase on our 4.14 kernel regularly. Everything<br>
in the working branch should be already sent upstream or being<br>
polished for upstream. Reviews are done on the list. Once a patch<br>
lands upstream, it&#39;s backported to our kernel and removed from the<br>
working branch.<br>
<br>
Sean<br>
<br>
[1]- <a href=3D"https://chromium.googlesource.com/chromiumos/third_party/ke=
rnel/+log/chromeos-4.14/drivers/gpu/drm" rel=3D"noreferrer" target=3D"_blan=
k">https://chromium.googlesource.com/chromiumos/third_party/kernel/+log/chr=
omeos-4.14/drivers/gpu/drm</a><br>
<br>
* There are always exceptions<br>
<br>
&gt;<br>
&gt; As it happened in my case the vendor was very unhappy<br>
&gt; with this and unused to this kind of requirements. (They have<br>
&gt; since changed their attitude so no-one needs to be outed.)<br>
&gt;<br>
&gt; What I realized was that instead of being &quot;hard&quot; on vendors<=
br>
&gt; with this, I could gain more by being let&#39;s say &quot;firm&quot;.<=
br>
&gt;<br>
&gt; I required that in order to procure their component, they<br>
&gt; should present an upstreaming strategy, and post an initial<br>
&gt; patch set for the specific product before we would agree<br>
&gt; to procurement. This was more of a gentlemen agreement<br>
&gt; than a hard contract clause, but it worked very well to<br>
&gt; transform that company, and I think it is a good way, because<br>
&gt; being too hard can be counter-productive, I guess it comes<br>
&gt; from simple diplomacy, people do not like threats.<br>
&gt;<br>
&gt; Yours,<br>
&gt; Linus Walleij<br>
&gt; _______________________________________________<br>
&gt; Ksummit-discuss mailing list<br>
&gt; <a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D=
"_blank">Ksummit-discuss@lists.linuxfoundation.org</a><br>
&gt; <a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-=
discuss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation=
.org/mailman/listinfo/ksummit-discuss</a><br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div></div>

--00000000000044508e057539eb08--
