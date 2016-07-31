Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02547910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 03:09:53 +0000 (UTC)
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DADFA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 03:09:52 +0000 (UTC)
Received: by mail-ua0-f180.google.com with SMTP id j59so85984475uaj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 20:09:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469934481.23563.274.camel@linux.vnet.ibm.com>
References: <20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sat, 30 Jul 2016 20:09:49 -0700
Message-ID: <CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: multipart/alternative; boundary=94eb2c04486a231db00538e5d1be
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--94eb2c04486a231db00538e5d1be
Content-Type: text/plain; charset=UTF-8

On Jul 30, 2016 8:08 PM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:
>
> On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:
> > On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:
> > > On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <zohar@linux.vnet.ibm.com>
wrote:
> > > > On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
> > > >> Hi Andy,
> > > >>
> > > >> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
> > > >> ...
> > > >> > I would like someone to explain why using the keyring mechanism
for
> > > >> > this in the first place is a good idea.
> > > >> >
> > > >> > As far as I can tell, the design goals of "keys trusted by the
kernel
> > > >> > for modules, firmware, etc" are:
> > > >> >
> > > >> >  - Keys are added at build time or, according to potentially
> > > >> > system-specific rules, at boot time.
> > > >> >
> > > >> >  - Keys should specify what they're trusted *for*.
> > > >>
> > > >> Well, I'd argue that keys should specify what they are *intended*
for by
> > > >> the keyholder.  A useful security system could further restrict
the key
> > > >> as needed.
> > > >
> > > > We've already started.  Currently the kernel_read_file() and family
of
> > > > functions provide the LSM hooks needed for verifying file
signatures of
> > > > files read by the kernel.  The kernel_read_file_id enumeration is
used
> > > > to differentiate between callers.  Based on this enumeration, the
> > > > *intended* for could be defined.  It would make sense to extend the
IMA
> > > > policy language to support *intended* for.
> > > >
> > >
> > > Having kernel_read_file know the purpose is a big step in the right
> > > direction, although, as I think I and others have pointed out, just an
> > > enum is insufficient -- for firmware, at least, the *name* is
> > > relevant.
>
> > The name is passed for firmware, the wrapper
kernel_read_file_from_path()
> > is used. So if we wanted an LSM extension on name I think we can do that
> > on kernel_read_file_from_path() ?
>
> It shouldn't make a difference whether kernel_read_file() is called
> directly, or the kernel_read_file_by_path/fd() are called.  The pathname
> is accessible from the "file" argument.
>

What happens if a symlink is involved?

--94eb2c04486a231db00538e5d1be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jul 30, 2016 8:08 PM, &quot;Mimi Zohar&quot; &lt;<a href=
=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:<br>
&gt; &gt; On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:<=
br>
&gt; &gt; &gt; On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar &lt;<a href=3D"m=
ailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:<b=
r>
&gt; &gt; &gt; &gt;&gt; Hi Andy,<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Luto=
mirski wrote:<br>
&gt; &gt; &gt; &gt;&gt; ...<br>
&gt; &gt; &gt; &gt;&gt; &gt; I would like someone to explain why using the =
keyring mechanism for<br>
&gt; &gt; &gt; &gt;&gt; &gt; this in the first place is a good idea.<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; As far as I can tell, the design goals of &quo=
t;keys trusted by the kernel<br>
&gt; &gt; &gt; &gt;&gt; &gt; for modules, firmware, etc&quot; are:<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 - Keys are added at build time or, accor=
ding to potentially<br>
&gt; &gt; &gt; &gt;&gt; &gt; system-specific rules, at boot time.<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 - Keys should specify what they&#39;re t=
rusted *for*.<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; Well, I&#39;d argue that keys should specify what t=
hey are *intended* for by<br>
&gt; &gt; &gt; &gt;&gt; the keyholder.=C2=A0 A useful security system could=
 further restrict the key<br>
&gt; &gt; &gt; &gt;&gt; as needed.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; We&#39;ve already started.=C2=A0 Currently the kernel_r=
ead_file() and family of<br>
&gt; &gt; &gt; &gt; functions provide the LSM hooks needed for verifying fi=
le signatures of<br>
&gt; &gt; &gt; &gt; files read by the kernel.=C2=A0 The kernel_read_file_id=
 enumeration is used<br>
&gt; &gt; &gt; &gt; to differentiate between callers.=C2=A0 Based on this e=
numeration, the<br>
&gt; &gt; &gt; &gt; *intended* for could be defined.=C2=A0 It would make se=
nse to extend the IMA<br>
&gt; &gt; &gt; &gt; policy language to support *intended* for.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Having kernel_read_file know the purpose is a big step in th=
e right<br>
&gt; &gt; &gt; direction, although, as I think I and others have pointed ou=
t, just an<br>
&gt; &gt; &gt; enum is insufficient -- for firmware, at least, the *name* i=
s<br>
&gt; &gt; &gt; relevant.<br>
&gt;<br>
&gt; &gt; The name is passed for firmware, the wrapper kernel_read_file_fro=
m_path()<br>
&gt; &gt; is used. So if we wanted an LSM extension on name I think we can =
do that<br>
&gt; &gt; on kernel_read_file_from_path() ?<br>
&gt;<br>
&gt; It shouldn&#39;t make a difference whether kernel_read_file() is calle=
d<br>
&gt; directly, or the kernel_read_file_by_path/fd() are called.=C2=A0 The p=
athname<br>
&gt; is accessible from the &quot;file&quot; argument.<br>
&gt;</p>
<p dir=3D"ltr">What happens if a symlink is involved?</p>

--94eb2c04486a231db00538e5d1be--
