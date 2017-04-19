Return-Path: <jforbes@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C03D727
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 18:11:43 +0000 (UTC)
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0197175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 18:11:42 +0000 (UTC)
Received: by mail-qk0-f181.google.com with SMTP id p68so27203078qke.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 11:11:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<d0173f9f-d68a-995a-af42-a388af93dcca@redhat.com>
	<CA+55aFyZ-EuGo67DXQegC2K+BqsHxdaFeVSnJgRGnjLOf1FZaw@mail.gmail.com>
From: Justin Forbes <jforbes@redhat.com>
Date: Wed, 19 Apr 2017 13:11:41 -0500
Message-ID: <CAFbkSA0RhZrrBx3Scq_QHKjFNFwMVxzgBWhOWKJGMXN38QKTOA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: multipart/alternative; boundary=94eb2c057ec4d44e7c054d88f4b4
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c057ec4d44e7c054d88f4b4
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 11:18 AM, Linus Torvalds <
torvalds@linux-foundation.org> wrote:

> On Wed, Apr 19, 2017 at 8:37 AM, Doug Ledford <dledford@redhat.com> wrote:
> > On 4/18/2017 4:13 PM, Linus Torvalds wrote:
> >>
> >> I'm not sure who those people actually are, but I suspect this list
> >> contains people who can point to each tech lead.. I think it's Laura
> >> Abbott for Fedora, for example?
> >
> > There really is no pain point for Fedora.  They take a very simple
> > approach: in rawhide, they pull latest git once you hit the -rc cycles
> > and build it, otherwise it's the latest released kernel; in actual
> > releases, they pull stable tree point releases as they are released (not
> > long term stable, they upgrade to a new stable tree fairly regularly).
> > They really don't do much in the way of having to integrate changes into
> > their kernel (intentionally), it's just a constant rolling update game
> > using newer and newer tarballs.  So, the pain is not in Fedora, it's in
> > RHEL.  What we do there is so totally different from Fedora and hurts so
> > bad as a developer...but I don't know if you really care to even talk
> > about that at the summit since, to be fair, it's largely a consequence
> > of our business model.
>
>
There are certainly pain points in Fedora, very much related to this
model.  The approach is simple, the implementation could be better.  Our
pain points are just very different from the RHEL pain points.
For instance, while stable has been a great success over the years, the
policy is no fixes in stable until they are in head.  Unfortunately a lot
of simple fixes end up in queued in maintainer trees for -next and never
end up in head until the next merge window.   I don't know what the answer
here is, changing the stable policy in this regard doesn't seem like the
best solution.


> Yeah, I don't think we can do much about distros that intentionally
> want to stay behind and backport. Admittedly Android seems to be very
> much in that camp too, but I'd at least want to talk to them more.
> RHEL I feel knows what it's doing and isn't causing the kinds of
> issues Android is anyway.
>
> That said, even with Fedora I think Laura was at the KS last year, and
> did talk about what she sees as the stable kernel process. So Fedora
> may not be a "painpoint", but may well be relevant for the "meet with
> people and talk about process issues once a year".
>
> Of course, if it really is a question of "we have no problems and no
> reason to even be there" for Fedora, then that's one (or two) less
> people to worry about ;)


Laura is a good candidate to discuss the Fedora pain points.

Justin

--94eb2c057ec4d44e7c054d88f4b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Apr 19, 2017 at 11:18 AM, Linus Torvalds <span dir=3D"ltr">&lt;<a href=
=3D"mailto:torvalds@linux-foundation.org" target=3D"_blank">torvalds@linux-=
foundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On W=
ed, Apr 19, 2017 at 8:37 AM, Doug Ledford &lt;<a href=3D"mailto:dledford@re=
dhat.com">dledford@redhat.com</a>&gt; wrote:<br>
<span class=3D"">&gt; On 4/18/2017 4:13 PM, Linus Torvalds wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m not sure who those people actually are, but I suspect this=
 list<br>
&gt;&gt; contains people who can point to each tech lead.. I think it&#39;s=
 Laura<br>
&gt;&gt; Abbott for Fedora, for example?<br>
&gt;<br>
</span>&gt; There really is no pain point for Fedora.=C2=A0 They take a ver=
y simple<br>
&gt; approach: in rawhide, they pull latest git once you hit the -rc cycles=
<br>
&gt; and build it, otherwise it&#39;s the latest released kernel; in actual=
<br>
&gt; releases, they pull stable tree point releases as they are released (n=
ot<br>
&gt; long term stable, they upgrade to a new stable tree fairly regularly).=
<br>
&gt; They really don&#39;t do much in the way of having to integrate change=
s into<br>
&gt; their kernel (intentionally), it&#39;s just a constant rolling update =
game<br>
&gt; using newer and newer tarballs.=C2=A0 So, the pain is not in Fedora, i=
t&#39;s in<br>
&gt; RHEL.=C2=A0 What we do there is so totally different from Fedora and h=
urts so<br>
&gt; bad as a developer...but I don&#39;t know if you really care to even t=
alk<br>
&gt; about that at the summit since, to be fair, it&#39;s largely a consequ=
ence<br>
&gt; of our business model.<br>
<br></blockquote><div>=C2=A0</div><div>There are certainly pain points in F=
edora, very much related to this model.=C2=A0 The approach is simple, the i=
mplementation could be better.=C2=A0 Our pain points are just very differen=
t from the RHEL pain points.=C2=A0</div><div>For instance, while stable has=
 been a great success over the years, the policy is no fixes in stable unti=
l they are in head.=C2=A0 Unfortunately a lot of simple fixes end up in que=
ued in maintainer trees for -next and never end up in head until the next m=
erge window. =C2=A0 I don&#39;t know what the answer here is, changing the =
stable policy in this regard doesn&#39;t seem like the best solution.=C2=A0=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Yeah, I don&#39;t think we can do much about distros that intentionally<br>
want to stay behind and backport. Admittedly Android seems to be very<br>
much in that camp too, but I&#39;d at least want to talk to them more.<br>
RHEL I feel knows what it&#39;s doing and isn&#39;t causing the kinds of<br=
>
issues Android is anyway.<br>
<br>
That said, even with Fedora I think Laura was at the KS last year, and<br>
did talk about what she sees as the stable kernel process. So Fedora<br>
may not be a &quot;painpoint&quot;, but may well be relevant for the &quot;=
meet with<br>
people and talk about process issues once a year&quot;.<br>
<br>
Of course, if it really is a question of &quot;we have no problems and no<b=
r>
reason to even be there&quot; for Fedora, then that&#39;s one (or two) less=
<br>
people to worry about ;)</blockquote><div><br></div><div>Laura is a good ca=
ndidate to discuss the Fedora pain points.</div><div><br></div><div>Justin<=
/div></div></div></div>

--94eb2c057ec4d44e7c054d88f4b4--
