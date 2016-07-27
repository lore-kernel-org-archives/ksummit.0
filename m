Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D76E3950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:36:09 +0000 (UTC)
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2ABD5E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:36:09 +0000 (UTC)
Received: by mail-vk0-f54.google.com with SMTP id s189so15590670vkh.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 11:36:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160727111706.788fefeb@xeon-e3>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
	<20160727111706.788fefeb@xeon-e3>
Date: Wed, 27 Jul 2016 11:36:08 -0700
Message-ID: <CALCETrV2AJUnuNKi_qStcR-rOwH42-Jt06rS2TZ8m9UgZ8U__A@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
To: Stephen Hemminger <stephen@networkplumber.org>
Content-Type: multipart/alternative; boundary=001a114df3b070457c0538a24ac0
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Signature management - keys,
 modules, firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a114df3b070457c0538a24ac0
Content-Type: text/plain; charset=UTF-8

On Jul 27, 2016 11:16 AM, "Stephen Hemminger" <stephen@networkplumber.org>
wrote:
>
> On Wed, 27 Jul 2016 14:04:06 +0000
> Jason Cooper <jason@lakedaemon.net> wrote:
>
> > Hi David,
> >
> > On Tue, Jul 26, 2016 at 03:42:18PM +0100, David Woodhouse wrote:
> > > On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:
> > > > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
> > > >
> > > > > Oops, "Signature management - keys, modules, firmware" was a
> > > > > suggestion from last year, but in my opinion still very apropos.
> > > >
> > > > Yup, definitely - especially with secure boot starting to firm up on
> > > > the ARM side there's a bunch more interest in it from more embedded
> > > > applications.
> > >
> > > Are we going to propose this again "formally" (i.e. sufficiently
> > > clearly that the committee take note and consider it)?
> >
> > $subject modified.
> >
> > > If so, I would also be keen to participate.
> >
> > Myself as well.  I've often wondered about devicetree signing.  Since it
> > needs to be modified by the bootloader in a lot of cases (RAM size,
> > cmdline, etc), but a malicious modification would be to remove the TPM
> > node. :-)
>
> I am interested in this as well because of issues in creating secure
guests.
>

I'm interested in this, too.

--001a114df3b070457c0538a24ac0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jul 27, 2016 11:16 AM, &quot;Stephen Hemminger&quot; &lt;=
<a href=3D"mailto:stephen@networkplumber.org">stephen@networkplumber.org</a=
>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, 27 Jul 2016 14:04:06 +0000<br>
&gt; Jason Cooper &lt;<a href=3D"mailto:jason@lakedaemon.net">jason@lakedae=
mon.net</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Hi David,<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Jul 26, 2016 at 03:42:18PM +0100, David Woodhouse wrote:<=
br>
&gt; &gt; &gt; On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:<br>
&gt; &gt; &gt; &gt; On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wr=
ote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Oops, &quot;Signature management - keys, modules, =
firmware&quot; was a<br>
&gt; &gt; &gt; &gt; &gt; suggestion from last year, but in my opinion still=
 very apropos.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Yup, definitely - especially with secure boot starting =
to firm up on<br>
&gt; &gt; &gt; &gt; the ARM side there&#39;s a bunch more interest in it fr=
om more embedded<br>
&gt; &gt; &gt; &gt; applications.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Are we going to propose this again &quot;formally&quot; (i.e=
. sufficiently<br>
&gt; &gt; &gt; clearly that the committee take note and consider it)?<br>
&gt; &gt;<br>
&gt; &gt; $subject modified.<br>
&gt; &gt;<br>
&gt; &gt; &gt; If so, I would also be keen to participate.<br>
&gt; &gt;<br>
&gt; &gt; Myself as well.=C2=A0 I&#39;ve often wondered about devicetree si=
gning.=C2=A0 Since it<br>
&gt; &gt; needs to be modified by the bootloader in a lot of cases (RAM siz=
e,<br>
&gt; &gt; cmdline, etc), but a malicious modification would be to remove th=
e TPM<br>
&gt; &gt; node. :-)<br>
&gt;<br>
&gt; I am interested in this as well because of issues in creating secure g=
uests.<br>
&gt; </p>
<p dir=3D"ltr">I&#39;m interested in this, too.</p>

--001a114df3b070457c0538a24ac0--
