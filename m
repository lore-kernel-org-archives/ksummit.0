Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A010CAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 23:03:18 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EAB747FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 23:03:16 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id a108-v6so8416328wrc.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 16:03:16 -0700 (PDT)
MIME-Version: 1.0
References: <8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
	<20180913120811.oilaweiun3z4l5wo@flea>
	<20180913125723.GC14988@piout.net> <87a7olzd7s.fsf@intel.com>
	<alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Thu, 13 Sep 2018 16:02:57 -0700
Message-ID: <CABVU7+tTp-RuUbTGG3JukF6aW9NXSRvNazTOO=9skFOB_BPPsg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: multipart/alternative; boundary="00000000000041b47b0575c8b688"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--00000000000041b47b0575c8b688
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 13, 2018 at 1:07 PM Thomas Gleixner <tglx@linutronix.de> wrote:

> On Thu, 13 Sep 2018, Jani Nikula wrote:
> > On Thu, 13 Sep 2018, Alexandre Belloni <alexandre.belloni@bootlin.com>
> wrote:
> > > On 13/09/2018 14:08:11+0200, Maxime Ripard wrote:
> > >> All the knowledge they built, experience they got (including at
> > >> reviewing) is gone, possibly forever, and there's no one to pick up
> > >> the subsystem, and the code is left to rot.
> > >
> > > And this is almost the same for the DRM core where Daniel is by far the
> > > top contributor.
> >
> > Except he's no longer a maintainer in either DRM or i915. Checking the
> > stats against current MAINTAINERS will paint you a different picture.
> >
> > And that brings us to another important point: Group maintainership
> > allows for easier onboarding of new maintainers, and easier retirement
> > of old ones. We've changed several maintainers for both the drm-misc
> > tree and i915 since we've switched to group maintainership, and there
> > hasn't been noticeable bumps in the road. Mostly just business as
> > usual. Being a maintainer doesn't have to be for life, and you don't
> > have to burn out and rage quit one fine day and leave everything in
> > ruins behind you as you go.
> >
> > I'm not saying one size fits all, and I'm not saying it's easy to find
> > more maintainers. But it's certainly much *much* easier to find a new
> > co-maintainer to a team of two or three than a new solo maintainer.
>
> You are sounding like DRM invented group maintainership and needs to go
> advertising it now as the best invention since sliced bread.
>

I had to read the thread twice to see if I could understand how you arrived
to this conclusion.

I really didn't see anyone claiming to be the inventor of group
maintainership.

And this is really not the point of what Daniel is proposing here.


> It's been in practice since 2007 when the tip tree started with 3
> maintainers. It was then adopted by ARM-SoC and Linus recommended it as a
> good model way before DRM went that road.
>

Good for you!

Well, it actually might be good for everyone if you have lessons learned
for sharing as Daniel proposed:

"- New experiments in group maintainership, and sharing lessons learned
in general."


>
> We all know that group maintainership is a good thing, but we also know
> that it's not working for all subsystems and that it's not always easy to
> find matching co-maintainers. Most maintainers, if not all, would be happy
> to have a competent, trusted and interested co-maintainer. So it's not that
> they need to be educated on that.
>

What I see on Daniel's email is not an education proposal, but to just talk
and share
experience. He is "open to anything else really on the larger topic of
community mangement."


>
> Group maintainership is not the Panacea. So please stop the prayer wheel
> and come up with solutions which address identifed indivudual problems. Not
> having group maintainership is for some subsystems the least of their
> worries. And as a member of the first official maintainer group in the
> kernel I can assure you that group maintainership is not making all other
> and potentially more dangerous problems magically go away.
>

But if there's time to discuss I don't know why they should be exclusive
things...

Thanks,
Rodrigo.


> Thanks,
>
>         tglx
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--00000000000041b47b0575c8b688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Sep 13, 2018 at 1:07 PM Thomas Gleixner &lt;<a href=3D"mailto:tglx@linutr=
onix.de">tglx@linutronix.de</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">On Thu, 13 Sep 2018, Jani Nikula wrote:<br>
&gt; On Thu, 13 Sep 2018, Alexandre Belloni &lt;<a href=3D"mailto:alexandre=
.belloni@bootlin.com" target=3D"_blank">alexandre.belloni@bootlin.com</a>&g=
t; wrote:<br>
&gt; &gt; On 13/09/2018 14:08:11+0200, Maxime Ripard wrote:<br>
&gt; &gt;&gt; All the knowledge they built, experience they got (including =
at<br>
&gt; &gt;&gt; reviewing) is gone, possibly forever, and there&#39;s no one =
to pick up<br>
&gt; &gt;&gt; the subsystem, and the code is left to rot.<br>
&gt; &gt;<br>
&gt; &gt; And this is almost the same for the DRM core where Daniel is by f=
ar the<br>
&gt; &gt; top contributor.<br>
&gt; <br>
&gt; Except he&#39;s no longer a maintainer in either DRM or i915. Checking=
 the<br>
&gt; stats against current MAINTAINERS will paint you a different picture.<=
br>
&gt; <br>
&gt; And that brings us to another important point: Group maintainership<br=
>
&gt; allows for easier onboarding of new maintainers, and easier retirement=
<br>
&gt; of old ones. We&#39;ve changed several maintainers for both the drm-mi=
sc<br>
&gt; tree and i915 since we&#39;ve switched to group maintainership, and th=
ere<br>
&gt; hasn&#39;t been noticeable bumps in the road. Mostly just business as<=
br>
&gt; usual. Being a maintainer doesn&#39;t have to be for life, and you don=
&#39;t<br>
&gt; have to burn out and rage quit one fine day and leave everything in<br=
>
&gt; ruins behind you as you go.<br>
&gt; <br>
&gt; I&#39;m not saying one size fits all, and I&#39;m not saying it&#39;s =
easy to find<br>
&gt; more maintainers. But it&#39;s certainly much *much* easier to find a =
new<br>
&gt; co-maintainer to a team of two or three than a new solo maintainer.<br=
>
<br>
You are sounding like DRM invented group maintainership and needs to go<br>
advertising it now as the best invention since sliced bread.<br></blockquot=
e><div><br></div><div>I had to read the thread twice to see if I could unde=
rstand how you arrived to this conclusion.</div><div><br></div><div>I reall=
y didn&#39;t see anyone claiming to be the inventor of group maintainership=
.</div><div><br></div><div>And this is really not the point of what Daniel =
is proposing here.</div><div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
It&#39;s been in practice since 2007 when the tip tree started with 3<br>
maintainers. It was then adopted by ARM-SoC and Linus recommended it as a<b=
r>
good model way before DRM went that road.<br></blockquote><div><br></div><d=
iv>Good for you!</div><div><br></div><div>Well, it actually might be good f=
or everyone if you have lessons learned for sharing as Daniel proposed:</di=
v><div><br></div><div>&quot;- New experiments in group maintainership, and =
sharing lessons learned</div><div>in general.&quot;</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
<br>
We all know that group maintainership is a good thing, but we also know<br>
that it&#39;s not working for all subsystems and that it&#39;s not always e=
asy to<br>
find matching co-maintainers. Most maintainers, if not all, would be happy<=
br>
to have a competent, trusted and interested co-maintainer. So it&#39;s not =
that<br>
they need to be educated on that.<br></blockquote><div><br></div><div>What =
I see on Daniel&#39;s email is not an education proposal, but to just talk =
and share</div><div>experience. He is &quot;<span style=3D"color:rgb(33,33,=
33);font-size:13px">open to anything else really on the larger topic of com=
munity mangement.&quot;</span></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">
<br>
Group maintainership is not the Panacea. So please stop the prayer wheel<br=
>
and come up with solutions which address identifed indivudual problems. Not=
<br>
having group maintainership is for some subsystems the least of their<br>
worries. And as a member of the first official maintainer group in the<br>
kernel I can assure you that group maintainership is not making all other<b=
r>
and potentially more dangerous problems magically go away.<br></blockquote>=
<div><br></div><div>But if there&#39;s time to discuss I don&#39;t know why=
 they should be exclusive things...</div><div><br></div><div>Thanks,</div><=
div>Rodrigo.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Thanks,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tglx<br>
<br>
_______________________________________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org" target=3D"_bla=
nk">Ksummit-discuss@lists.linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.org/=
mailman/listinfo/ksummit-discuss</a><br>
</blockquote></div></div>

--00000000000041b47b0575c8b688--
