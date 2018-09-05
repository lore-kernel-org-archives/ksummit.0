Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CCF0BCA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 22:45:56 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FAF07CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 22:45:55 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id k5-v6so9263602wre.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 15:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<20180905093406.GO2977@mtr-leonro.mtl.com>
In-Reply-To: <20180905093406.GO2977@mtr-leonro.mtl.com>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Wed, 5 Sep 2018 15:45:41 -0700
Message-ID: <CABVU7+uHEdYHn=-46naYkOA-PPyTbFas7HOP=5fc8r64Bbr6=A@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Content-Type: multipart/alternative; boundary="000000000000732b800575278962"
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

--000000000000732b800575278962
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 5, 2018 at 2:35 AM Leon Romanovsky <leon@kernel.org> wrote:

> On Wed, Sep 05, 2018 at 11:00:12AM +0200, Daniel Vetter wrote:
> > On Wed, Sep 5, 2018 at 10:31 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> > > On Wed, Sep 05, 2018 at 10:17:44AM +0200, Daniel Vetter wrote:
> > >> On Wed, Sep 5, 2018 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> > >> > On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi wrote:
> > >> >> On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org>
> wrote:
> > >> >> >
> > >> >> > On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
> > >> >> > > Hi there,
> > >> >> > >
> > >> >> > > I've submitted a proposal for plumber's referred track. There,
> I want to
> > >> >> > > talk
> > >> >> > > about tools and challenges we have on embargo development vs
> upstream one
> > >> >> > > and
> > >> >> > > how to get focus on upstream first and upstream always
> mentality.
> > >> >> > >
> > >> >> > > The name of plumbers proposal talk is:
> > >> >> > > "Unveiling Intel Graphics Internal Development"
> > >> >> > >
> > >> >> > > I'm not sure if the talk will get accepted, but anyway I'd
> like to have the
> > >> >> > > chance to talk to other maintainers to exchange views on
> different ways of
> > >> >> > > maintaining this kind of embargo development including
> challenges, tools,
> > >> >> > > processes, and rules.
> > >> >> > >
> > >> >> > > So I'm interested in hallway tracks of Maintainer / Kernel
> Summit, or maybe
> > >> >> > > a
> > >> >> > > bof session if there's interest.
> > >> >> > >
> > >> >> > > Please let me know if there's interested or if further
> information and/or
> > >> >> > > clarification is needed.
> > >> >> >
> > >> >> > What is "embargo development"? Are you referring to US government
> > >> >> > restrictions or to anything else?
> > >> >>
> > >> >> No. nothing to do with government.
> > >> >> Embargoed by company's temporary restrictions.
> > >> >>
> > >> >> Sorry for not being clear here.
> > >> >
> > >> > Why do we care about something like this?  It sounds like it is an
> Intel
> > >> > issue in that they want to delay pushing stuff upstream.  Why does
> > >> > upstream care about this?
> > >> >
> > >> >> > Also can you please explain why should we know about internal
> Intel
> > >> >> > development flow?
> > >> >>
> > >> >> First of all I don't believe that we are the only one that need to
> > >> >> keep this kind of flow and i915 has a very active development and
> we
> > >> >> are strongly committed with upstream development. Our golden rules
> for
> > >> >> internal development is upstream first, upstream always.
> > >> >
> > >> > Great!  So if this rule runs into opposition to people within your
> > >> > company, doesn't that sound like a meeting with those company
> members is
> > >> > the best solution?
> > >> >
> > >> >> So, maybe sharing some knowledge and lessons we learned on the past
> > >> >> years might be useful to someone else that might still struggle
> with
> > >> >> closed source style of development.
> > >> >
> > >> > Ah, so you want to talk about how to change your process to work
> better
> > >> > with companies that don't like doing upstream-first work?  That
> sounds
> > >> > like a nice talk, but you need to make that a bit more clear here :)
> > >> >
> > >> >> Also we have some challenges on keeping everything updated and
> ready
> > >> >> for upstreaming at any moment.
> > >> >
> > >> > "any moment"?  Don't you know this ahead of time?  If not, that
> sounds
> > >> > like a company problem...
> > >>
> > >> The only companies which do not have this problems (at least in the
> > >> graphics space) are those which don't care one bit about upstream at
> > >> all. So yes, all the problems we have (and everyone else I've talked
> > >> to in gfx) are dealing with are direct consequences of doing
> > >> upstream-first drivers for a proprietary piece of hardware developed
> > >> behind closed doors. And until we have exclusively open source IP
> > >> hardware this problem won't go away.
> > >
> > > Why are graphics companies "special" here somehow?  What about network
> > > driver companies (like Intel?)  CPU manufactures?  IB controller
> > > companies?  Any company really...
> >
> > I have no idea how this works outside of intel or graphics, I tend to
> > not chat with those people as much as I do with graphics people. Would
> > be interesting to know how it is outside of the graphics bubble
> > indeed.
> >
> > Looking just at what intel does, this is a problem everywhere.
> > Graphics is a bit worse, simply because our driver stack moves faster
> > and is bigger (our driver is bigger than most kernel subsystems in
> > their entirety). So we have slightly more fancy tooling and process to
> > handle things. But the problem is the exact same thing for all hw
> > teams here at Intel. Extrapolating from what I know I'd be surprised
> > if this isn't a problem everywhere.
> >
> > Note that the simplest solution here is to forget about upstream and
> > ship on LTS kernels only. Avoids all the pain we have. And that's what
> > pretty much everyone in the SoC/gfx space is actually doing, outside
> > of very few exceptions like AMD&Intel. Most of the SoC drivers you see
> > are reverse-engineered, so naturally they don't have to deal with
> > pre-production hw fun simply because they can't even get at the hw
> > this early in the cycle.
> >
> > >> This was an invitation to exchange experience in how to best deal with
> > >> the fallout - I do actually know that this is not an intel-only issue
> > >> because I chatted with non-Intel people about how they deal with this.
> > >> And I thought that figuring out how to do better upstream-first is
> > >> very much within the scope of ks/lpc, hence why I suggested Rodrigo
> > >> brings this up as a talk proposal.
> > >
> > > Ok, a "Here is how we work with pre-release hardware and upstream" type
> > > of talk, giving suggestions for how to deal with this at a company
> level
> > > would be a nice proposal.  But that was a bit hard to tease out of the
> > > original submission here :)
> >
> > Yeah Rodrigo's text maybe had a bit much intel-lingo in it, without
> > more context to explain. Still, I found it a bit suprising that you
> > assume a submission from the maintainers of one of the most aggressive
> > upstream-first driver teams would have no idea how to do upstream
> > development and therefore it must be their self-inflicted pain for not
> > doing the right thing ...
>
> Daniel,
>
> Sorry but it is how it is sound from the original proposal. Can you or
> Rodrigo share your pain points?
>

My fear of spoiling details here is that it would create a big endless
email discussion
like many we had internally already. But anyway I will share a bit here so
you can have more info to decide if the discussion is appropriated or not
for this summit:

1. Rebasing on top of LTS as Mark and Daniel mentioned creates a future
problem for us. Since drm moves so fast the code on top of LTS will be
likely need to be re-written sooner or later.

2. We are upstreaming everything, so we need to keep patches always ready
for upstream and track the history of each patch itself. So we need patch
of patches.

3. Quality on code review gets impacted because of the upstream focus. It
has the risk of getting forgotten or lower quality reviews like -staging
drivers Takashi mentioned.

4 . If we raise the bar demanding good reviews, once our patches from
internal started appearing on public mailing lists already contained
"Reviewed-by:" we had other issues....

For 1, 2 and 3 we believe we found the solution space and would like to
share experiences and collect feedback. However for the 4th I'd like to be
able to talk to more devs and maintainers face to face because internal
email threads were huge already but we never found a rough internal
consensus on this one.

Thanks,
Rodrigo.


> In case this topic will be accepted, I would like to participate too and
> share our experience with dealing with upstream-first methodology.
>
> Thanks
>
> >
> > Thanks, Daniel
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > +41 (0) 79 365 57 48 <+41%2079%20365%2057%2048> - http://blog.ffwll.ch
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--000000000000732b800575278962
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed=
, Sep 5, 2018 at 2:35 AM Leon Romanovsky &lt;<a href=3D"mailto:leon@kernel.=
org">leon@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On Wed, Sep 05, 2018 at 11:00:12AM +0200, Daniel Vetter wrote:<br>
&gt; On Wed, Sep 5, 2018 at 10:31 AM, Greg KH &lt;<a href=3D"mailto:gregkh@=
linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; w=
rote:<br>
&gt; &gt; On Wed, Sep 05, 2018 at 10:17:44AM +0200, Daniel Vetter wrote:<br=
>
&gt; &gt;&gt; On Wed, Sep 5, 2018 at 9:48 AM, Greg KH &lt;<a href=3D"mailto=
:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</=
a>&gt; wrote:<br>
&gt; &gt;&gt; &gt; On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi w=
rote:<br>
&gt; &gt;&gt; &gt;&gt; On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky &lt;<=
a href=3D"mailto:leon@kernel.org" target=3D"_blank">leon@kernel.org</a>&gt;=
 wrote:<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodri=
go Vivi wrote:<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; Hi there,<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; I&#39;ve submitted a proposal for plumber&=
#39;s referred track. There, I want to<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; talk<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; about tools and challenges we have on emba=
rgo development vs upstream one<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; and<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; how to get focus on upstream first and ups=
tream always mentality.<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; The name of plumbers proposal talk is:<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; &quot;Unveiling Intel Graphics Internal De=
velopment&quot;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; I&#39;m not sure if the talk will get acce=
pted, but anyway I&#39;d like to have the<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; chance to talk to other maintainers to exc=
hange views on different ways of<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; maintaining this kind of embargo developme=
nt including challenges, tools,<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; processes, and rules.<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; So I&#39;m interested in hallway tracks of=
 Maintainer / Kernel Summit, or maybe<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; a<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; bof session if there&#39;s interest.<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; Please let me know if there&#39;s interest=
ed or if further information and/or<br>
&gt; &gt;&gt; &gt;&gt; &gt; &gt; clarification is needed.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; What is &quot;embargo development&quot;? Are yo=
u referring to US government<br>
&gt; &gt;&gt; &gt;&gt; &gt; restrictions or to anything else?<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; No. nothing to do with government.<br>
&gt; &gt;&gt; &gt;&gt; Embargoed by company&#39;s temporary restrictions.<b=
r>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Sorry for not being clear here.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Why do we care about something like this?=C2=A0 It sound=
s like it is an Intel<br>
&gt; &gt;&gt; &gt; issue in that they want to delay pushing stuff upstream.=
=C2=A0 Why does<br>
&gt; &gt;&gt; &gt; upstream care about this?<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Also can you please explain why should we know =
about internal Intel<br>
&gt; &gt;&gt; &gt;&gt; &gt; development flow?<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; First of all I don&#39;t believe that we are the onl=
y one that need to<br>
&gt; &gt;&gt; &gt;&gt; keep this kind of flow and i915 has a very active de=
velopment and we<br>
&gt; &gt;&gt; &gt;&gt; are strongly committed with upstream development. Ou=
r golden rules for<br>
&gt; &gt;&gt; &gt;&gt; internal development is upstream first, upstream alw=
ays.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Great!=C2=A0 So if this rule runs into opposition to peo=
ple within your<br>
&gt; &gt;&gt; &gt; company, doesn&#39;t that sound like a meeting with thos=
e company members is<br>
&gt; &gt;&gt; &gt; the best solution?<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; So, maybe sharing some knowledge and lessons we lear=
ned on the past<br>
&gt; &gt;&gt; &gt;&gt; years might be useful to someone else that might sti=
ll struggle with<br>
&gt; &gt;&gt; &gt;&gt; closed source style of development.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Ah, so you want to talk about how to change your process=
 to work better<br>
&gt; &gt;&gt; &gt; with companies that don&#39;t like doing upstream-first =
work?=C2=A0 That sounds<br>
&gt; &gt;&gt; &gt; like a nice talk, but you need to make that a bit more c=
lear here :)<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; Also we have some challenges on keeping everything u=
pdated and ready<br>
&gt; &gt;&gt; &gt;&gt; for upstreaming at any moment.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; &quot;any moment&quot;?=C2=A0 Don&#39;t you know this ah=
ead of time?=C2=A0 If not, that sounds<br>
&gt; &gt;&gt; &gt; like a company problem...<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The only companies which do not have this problems (at least =
in the<br>
&gt; &gt;&gt; graphics space) are those which don&#39;t care one bit about =
upstream at<br>
&gt; &gt;&gt; all. So yes, all the problems we have (and everyone else I&#3=
9;ve talked<br>
&gt; &gt;&gt; to in gfx) are dealing with are direct consequences of doing<=
br>
&gt; &gt;&gt; upstream-first drivers for a proprietary piece of hardware de=
veloped<br>
&gt; &gt;&gt; behind closed doors. And until we have exclusively open sourc=
e IP<br>
&gt; &gt;&gt; hardware this problem won&#39;t go away.<br>
&gt; &gt;<br>
&gt; &gt; Why are graphics companies &quot;special&quot; here somehow?=C2=
=A0 What about network<br>
&gt; &gt; driver companies (like Intel?)=C2=A0 CPU manufactures?=C2=A0 IB c=
ontroller<br>
&gt; &gt; companies?=C2=A0 Any company really...<br>
&gt;<br>
&gt; I have no idea how this works outside of intel or graphics, I tend to<=
br>
&gt; not chat with those people as much as I do with graphics people. Would=
<br>
&gt; be interesting to know how it is outside of the graphics bubble<br>
&gt; indeed.<br>
&gt;<br>
&gt; Looking just at what intel does, this is a problem everywhere.<br>
&gt; Graphics is a bit worse, simply because our driver stack moves faster<=
br>
&gt; and is bigger (our driver is bigger than most kernel subsystems in<br>
&gt; their entirety). So we have slightly more fancy tooling and process to=
<br>
&gt; handle things. But the problem is the exact same thing for all hw<br>
&gt; teams here at Intel. Extrapolating from what I know I&#39;d be surpris=
ed<br>
&gt; if this isn&#39;t a problem everywhere.<br>
&gt;<br>
&gt; Note that the simplest solution here is to forget about upstream and<b=
r>
&gt; ship on LTS kernels only. Avoids all the pain we have. And that&#39;s =
what<br>
&gt; pretty much everyone in the SoC/gfx space is actually doing, outside<b=
r>
&gt; of very few exceptions like AMD&amp;Intel. Most of the SoC drivers you=
 see<br>
&gt; are reverse-engineered, so naturally they don&#39;t have to deal with<=
br>
&gt; pre-production hw fun simply because they can&#39;t even get at the hw=
<br>
&gt; this early in the cycle.<br>
&gt;<br>
&gt; &gt;&gt; This was an invitation to exchange experience in how to best =
deal with<br>
&gt; &gt;&gt; the fallout - I do actually know that this is not an intel-on=
ly issue<br>
&gt; &gt;&gt; because I chatted with non-Intel people about how they deal w=
ith this.<br>
&gt; &gt;&gt; And I thought that figuring out how to do better upstream-fir=
st is<br>
&gt; &gt;&gt; very much within the scope of ks/lpc, hence why I suggested R=
odrigo<br>
&gt; &gt;&gt; brings this up as a talk proposal.<br>
&gt; &gt;<br>
&gt; &gt; Ok, a &quot;Here is how we work with pre-release hardware and ups=
tream&quot; type<br>
&gt; &gt; of talk, giving suggestions for how to deal with this at a compan=
y level<br>
&gt; &gt; would be a nice proposal.=C2=A0 But that was a bit hard to tease =
out of the<br>
&gt; &gt; original submission here :)<br>
&gt;<br>
&gt; Yeah Rodrigo&#39;s text maybe had a bit much intel-lingo in it, withou=
t<br>
&gt; more context to explain. Still, I found it a bit suprising that you<br=
>
&gt; assume a submission from the maintainers of one of the most aggressive=
<br>
&gt; upstream-first driver teams would have no idea how to do upstream<br>
&gt; development and therefore it must be their self-inflicted pain for not=
<br>
&gt; doing the right thing ...<br>
<br>
Daniel,<br>
<br>
Sorry but it is how it is sound from the original proposal. Can you or<br>
Rodrigo share your pain points?<br></blockquote><div><br></div><div>My fear=
 of spoiling details here is that it would create a big endless email discu=
ssion</div><div>like many we had internally already. But anyway I will shar=
e a bit here so you can have more info to decide if the discussion is appro=
priated or not for this summit:</div><div><br></div><div>1. Rebasing on top=
 of LTS as Mark and Daniel mentioned creates a future problem for us. Since=
 drm moves so fast the code on top of LTS will be likely need to be re-writ=
ten sooner or later.</div><div><br></div><div>2. We are upstreaming everyth=
ing, so we need to keep patches always ready for upstream and track the his=
tory of each patch itself. So we need patch of patches.</div><div><br></div=
><div>3. Quality on code review gets impacted because of the upstream focus=
. It has the risk of getting forgotten or lower quality reviews like -stagi=
ng drivers Takashi mentioned.=C2=A0</div><div><br></div><div>4 . If we rais=
e the bar demanding good reviews, once our patches from internal started ap=
pearing on public mailing lists already contained &quot;Reviewed-by:&quot; =
we had other issues....</div><div><br></div><div>For 1, 2 and 3 we believe =
we found the solution space and would like to share experiences and collect=
 feedback. However for the 4th I&#39;d like to be able to talk to more devs=
 and maintainers face to face because internal email threads were huge alre=
ady but we never found a rough internal consensus on this one.</div><div><b=
r></div><div>Thanks,</div><div>Rodrigo.</div><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<br>
In case this topic will be accepted, I would like to participate too and<br=
>
share our experience with dealing with upstream-first methodology.<br>
<br>
Thanks<br>
<br>
&gt;<br>
&gt; Thanks, Daniel<br>
&gt; --<br>
&gt; Daniel Vetter<br>
&gt; Software Engineer, Intel Corporation<br>
&gt; <a href=3D"tel:+41%2079%20365%2057%2048" value=3D"+41793655748" target=
=3D"_blank">+41 (0) 79 365 57 48</a> - <a href=3D"http://blog.ffwll.ch" rel=
=3D"noreferrer" target=3D"_blank">http://blog.ffwll.ch</a><br>
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

--000000000000732b800575278962--
