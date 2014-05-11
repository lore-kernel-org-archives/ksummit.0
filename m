Return-Path: <saharabeara@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 948232FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:49:38 +0000 (UTC)
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD7711F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:49:37 +0000 (UTC)
Received: by mail-ie0-f170.google.com with SMTP id ar20so2649807iec.29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 10:49:37 -0700 (PDT)
MIME-Version: 1.0
Sender: saharabeara@gmail.com
In-Reply-To: <1995824.rdvEX5SOIt@avalon>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
Date: Sun, 11 May 2014 10:49:37 -0700
Message-ID: <CABe+QzCPNma6Hjcb-rDBDEQVH4qW7A3Z-ij5emn9tQhwbPY9Fg@mail.gmail.com>
From: Sarah A Sharp <sarah@thesharps.us>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: multipart/alternative; boundary=047d7bdc0dc64bc5ca04f9237482
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--047d7bdc0dc64bc5ca04f9237482
Content-Type: text/plain; charset=UTF-8

On May 11, 2014 9:37 AM, "Laurent Pinchart" <
laurent.pinchart@ideasonboard.com> wrote:
>
> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> > > > All,
> > > >
> > > > I recently came across a patch series attempting to implement
encoding
> > > > kernel oops into a QR code [1].  The QR code is then dumped to the
> > > >
> > > > framebuffer.  The QR code is a URL of the form:
> > > >   https://oops.kernel.org/?qr=<base64 compressed oops>
> > > >
> > > > This proposal is interesting because it fundamentally changes the
way
> > > > users report bugs to the kernel community.  First and foremost, it
makes
> > > > it much easier.
> > > >
> > > >   1) oops occurs
> > > >   2) user pulls out phone, scans QR code
> > > >       - at this point, the oops is recorded on the server.  Nothing
more
> > > >         is required of the user.
> >
> > To be precise, most scanners don't automatically open the links
> > found in QR codes and hence a tap/click from the user is required. :-)
> >
> > > >   optionally:
> > > >
> > > >   3) user fills out a minimal web form
> > > >       - Name
> > > >       - email address (do you want to receive emails re this oops?)
> > > >       - what were you doing when it occurred?
> > > >       - is it repeatable?
> > >
> > > By "web form", do you mean a new form or something that's part of
> > > kerneloops.org?
> > >
> > > It would be great if we could allow users to open a new
> > > bugzilla.kernel.org entry for the oops.  I believe Teodora is working
> > > on an Android app that could do this.  Hopefully it could store
> > > information about the person's system, and pre-propagate the bugzilla
> > > entry with this information.
> >
> > Yes, opening a bugzilla entry might be a good idea if the user fills
> > out the form. To be honest, I think for that to work we would need to
> > clean up bugzilla a bit. I try to do some work there every now and
> > then, but nobody is closing the bugs I have fixed...
> >
> > Not sure about how would we create the bugzilla entry? I mean, which
> > section, urgency, etc. how would we decide on those solely based on
> > the OOPS? Or should we ask the user to fill it out?
>
> Filling a complex form on a handheld device can be pretty tedious. A two
steps
> procedure that would allow entering long text on a real computer could be
an
> interesting option.

It would be interesting to see if the app could use Google voice
recognition to fill in the text fields. Even just partially filling out the
bugzilla form and allowing it to be edited later would be useful.

To be clear: I'm suggesting the bugzilla entry be an *optional* part of the
Android app. I suspect that if we automatically uploaded every oops,
maintainers would shortly make a mail filter to ignore the reports from
bugzilla.

Sarah Sharp

--047d7bdc0dc64bc5ca04f9237482
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On May 11, 2014 9:37 AM, &quot;Laurent Pinchart&quot; &lt;<a=
 href=3D"mailto:laurent.pinchart@ideasonboard.com">laurent.pinchart@ideason=
board.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:<br>
&gt; &gt; On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:<br=
>
&gt; &gt; &gt; On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:<br>
&gt; &gt; &gt; &gt; All,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I recently came across a patch series attempting to imp=
lement encoding<br>
&gt; &gt; &gt; &gt; kernel oops into a QR code [1]. =C2=A0The QR code is th=
en dumped to the<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; framebuffer. =C2=A0The QR code is a URL of the form:<br=
>
&gt; &gt; &gt; &gt; =C2=A0 <a href=3D"https://oops.kernel.org/?qr=3D">https=
://oops.kernel.org/?qr=3D</a>&lt;base64 compressed oops&gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; This proposal is interesting because it fundamentally c=
hanges the way<br>
&gt; &gt; &gt; &gt; users report bugs to the kernel community. =C2=A0First =
and foremost, it makes<br>
&gt; &gt; &gt; &gt; it much easier.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; =C2=A0 1) oops occurs<br>
&gt; &gt; &gt; &gt; =C2=A0 2) user pulls out phone, scans QR code<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 - at this point, the oops is recor=
ded on the server. =C2=A0Nothing more<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 is required of the user.<br=
>
&gt; &gt;<br>
&gt; &gt; To be precise, most scanners don&#39;t automatically open the lin=
ks<br>
&gt; &gt; found in QR codes and hence a tap/click from the user is required=
. :-)<br>
&gt; &gt;<br>
&gt; &gt; &gt; &gt; =C2=A0 optionally:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; =C2=A0 3) user fills out a minimal web form<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 - Name<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 - email address (do you want to re=
ceive emails re this oops?)<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 - what were you doing when it occu=
rred?<br>
&gt; &gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 - is it repeatable?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; By &quot;web form&quot;, do you mean a new form or something=
 that&#39;s part of<br>
&gt; &gt; &gt; <a href=3D"http://kerneloops.org">kerneloops.org</a>?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; It would be great if we could allow users to open a new<br>
&gt; &gt; &gt; <a href=3D"http://bugzilla.kernel.org">bugzilla.kernel.org</=
a> entry for the oops. =C2=A0I believe Teodora is working<br>
&gt; &gt; &gt; on an Android app that could do this. =C2=A0Hopefully it cou=
ld store<br>
&gt; &gt; &gt; information about the person&#39;s system, and pre-propagate=
 the bugzilla<br>
&gt; &gt; &gt; entry with this information.<br>
&gt; &gt;<br>
&gt; &gt; Yes, opening a bugzilla entry might be a good idea if the user fi=
lls<br>
&gt; &gt; out the form. To be honest, I think for that to work we would nee=
d to<br>
&gt; &gt; clean up bugzilla a bit. I try to do some work there every now an=
d<br>
&gt; &gt; then, but nobody is closing the bugs I have fixed...<br>
&gt; &gt;<br>
&gt; &gt; Not sure about how would we create the bugzilla entry? I mean, wh=
ich<br>
&gt; &gt; section, urgency, etc. how would we decide on those solely based =
on<br>
&gt; &gt; the OOPS? Or should we ask the user to fill it out?<br>
&gt;<br>
&gt; Filling a complex form on a handheld device can be pretty tedious. A t=
wo steps<br>
&gt; procedure that would allow entering long text on a real computer could=
 be an<br>
&gt; interesting option.</p>
<p dir=3D"ltr">It would be interesting to see if the app could use Google v=
oice recognition to fill in the text fields. Even just partially filling ou=
t the bugzilla form and allowing it to be edited later would be useful.</p>

<p dir=3D"ltr">To be clear: I&#39;m suggesting the bugzilla entry be an *op=
tional* part of the Android app. I suspect that if we automatically uploade=
d every oops, maintainers would shortly make a mail filter to ignore the re=
ports from bugzilla.</p>

<p dir=3D"ltr">Sarah Sharp</p>

--047d7bdc0dc64bc5ca04f9237482--
