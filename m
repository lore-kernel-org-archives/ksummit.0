Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2CFC8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 18:20:15 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F29A6212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 18:20:14 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id C2CA420306
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 18:20:13 +0000 (UTC)
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1BDD72026F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 18:20:11 +0000 (UTC)
Received: by mail-vk0-f47.google.com with SMTP id x130so85885780vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 11:20:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1469986138.23563.312.camel@linux.vnet.ibm.com>
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
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Sun, 31 Jul 2016 11:20:08 -0700
Message-ID: <CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: multipart/alternative; boundary=001a1144212ab16f810538f2888b
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

--001a1144212ab16f810538f2888b
Content-Type: text/plain; charset=UTF-8

On Jul 31, 2016 10:29 AM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:
>
> On So, 2016-07-31 at 09:19 -0700, Andy Lutomirski wrote:
> > On Sun, Jul 31, 2016 at 8:31 AM, Mimi Zohar <zohar@linux.vnet.ibm.com>
wrote:
> > > On Sa, 2016-07-30 at 20:09 -0700, Andy Lutomirski wrote:
> > >> On Jul 30, 2016 8:08 PM, "Mimi Zohar" <zohar@linux.vnet.ibm.com>
wrote:
> > >> >
> > >> > On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:
> > >> > > On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:
> > >> > > > On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <
zohar@linux.vnet.ibm.com>
> > >> wrote:
> > >> > > > > On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
> > >> > > > >> Hi Andy,
> > >> > > > >>
> > >> > > > >> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski
wrote:
> > >> > > > >> ...
> > >> > > > >> > I would like someone to explain why using the keyring
mechanism
> > >> for
> > >> > > > >> > this in the first place is a good idea.
> > >> > > > >> >
> > >> > > > >> > As far as I can tell, the design goals of "keys trusted
by the
> > >> kernel
> > >> > > > >> > for modules, firmware, etc" are:
> > >> > > > >> >
> > >> > > > >> >  - Keys are added at build time or, according to
potentially
> > >> > > > >> > system-specific rules, at boot time.
> > >> > > > >> >
> > >> > > > >> >  - Keys should specify what they're trusted *for*.
> > >> > > > >>
> > >> > > > >> Well, I'd argue that keys should specify what they are
*intended*
> > >> for by
> > >> > > > >> the keyholder.  A useful security system could further
restrict
> > >> the key
> > >> > > > >> as needed.
> > >> > > > >
> > >> > > > > We've already started.  Currently the kernel_read_file() and
family
> > >> of
> > >> > > > > functions provide the LSM hooks needed for verifying file
> > >> signatures of
> > >> > > > > files read by the kernel.  The kernel_read_file_id
enumeration is
> > >> used
> > >> > > > > to differentiate between callers.  Based on this
enumeration, the
> > >> > > > > *intended* for could be defined.  It would make sense to
extend the
> > >> IMA
> > >> > > > > policy language to support *intended* for.
> > >> > > > >
> > >> > > >
> > >> > > > Having kernel_read_file know the purpose is a big step in the
right
> > >> > > > direction, although, as I think I and others have pointed out,
just an
> > >> > > > enum is insufficient -- for firmware, at least, the *name* is
> > >> > > > relevant.
> > >> >
> > >> > > The name is passed for firmware, the wrapper
> > >> kernel_read_file_from_path()
> > >> > > is used. So if we wanted an LSM extension on name I think we can
do that
> > >> > > on kernel_read_file_from_path() ?
> > >> >
> > >> > It shouldn't make a difference whether kernel_read_file() is called
> > >> > directly, or the kernel_read_file_by_path/fd() are called.  The
pathname
> > >> > is accessible from the "file" argument.
> > >> >
> > >>l
> > >> What happens if a symlink is involved?
> > >
> > > For callers of kernel_read_file_by_path(), like firmware, we could
pass
> > > the pathname, but for the other callers of kernel_read_file/_by_fd()
we
> > > could use d_absolute_path().
> >
> > That seems pointlessly fragile to me, and this issue has been known
> > for longer than the code in question has even existed.  How about:
> >
> > struct kernel_trusted_file_description {
> >   enum kernel_read_file_id type;
> >   const char *specific_purpose;  /* may be NULL for KEXEC_IMAGE, etc. */
> > };
> >
> > int kernel_read_file(struct file *, void **, loff_t *, const struct
> > trusted_file_description *);
> >
> > rather than trying to guess.
> >
> > Also, are there any plans to move module signature verification into
> > .kernel_post_read_file?
>
> The whole point of defining the kernel_read_file() family of functions
> was to close a class of measurement/appraisal gaps.

And to enable firmware verification?

>   To answer your
> question, yes IMA measures and/or appraises files on the security post
> kernel read hook, based on policy.

I wasn't asking anything about IMA.

>
> Andy, other than IMA-appraisal being xattr based,  I'm not sure why
> you're so against it.   if you're going to be at LinuxCon/LSS, perhaps
> we could speak in person there.

I have nothing against IMA.  I have plenty of objection to the core hooks
being simultaneously messy and not supplying enough information to provide
the security properties they should provide.

If IMA doesn't want or need to verify the purpose of the loaded file, fine.

I'll be at KS but not LSS.

--Andy

--001a1144212ab16f810538f2888b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">On Jul 31, 2016 10:29 AM, &quot;Mimi Zohar&quot; &lt;<a href=
=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; On So, 2016-07-31 at 09:19 -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Sun, Jul 31, 2016 at 8:31 AM, Mimi Zohar &lt;<a href=3D"mailto=
:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Sa, 2016-07-30 at 20:09 -0700, Andy Lutomirski wrote:<br>
&gt; &gt; &gt;&gt; On Jul 30, 2016 8:08 PM, &quot;Mimi Zohar&quot; &lt;<a h=
ref=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wr=
ote:<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez=
 wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy=
 Lutomirski wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zoh=
ar &lt;<a href=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com=
</a>&gt;<br>
&gt; &gt; &gt;&gt; wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; On Do, 2016-07-28 at 16:57 +0000, Ja=
son Cooper wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; Hi Andy,<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; On Wed, Jul 27, 2016 at 01:09:37=
PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; ...<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt; I would like someone to exp=
lain why using the keyring mechanism<br>
&gt; &gt; &gt;&gt; for<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt; this in the first place is =
a good idea.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt; As far as I can tell, the d=
esign goals of &quot;keys trusted by the<br>
&gt; &gt; &gt;&gt; kernel<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt; for modules, firmware, etc&=
quot; are:<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 - Keys are added at b=
uild time or, according to potentially<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt; system-specific rules, at b=
oot time.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 - Keys should specify=
 what they&#39;re trusted *for*.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; Well, I&#39;d argue that keys sh=
ould specify what they are *intended*<br>
&gt; &gt; &gt;&gt; for by<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; the keyholder.=C2=A0 A useful se=
curity system could further restrict<br>
&gt; &gt; &gt;&gt; the key<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;&gt; as needed.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; We&#39;ve already started.=C2=A0 Cur=
rently the kernel_read_file() and family<br>
&gt; &gt; &gt;&gt; of<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; functions provide the LSM hooks need=
ed for verifying file<br>
&gt; &gt; &gt;&gt; signatures of<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; files read by the kernel.=C2=A0 The =
kernel_read_file_id enumeration is<br>
&gt; &gt; &gt;&gt; used<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; to differentiate between callers.=C2=
=A0 Based on this enumeration, the<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; *intended* for could be defined.=C2=
=A0 It would make sense to extend the<br>
&gt; &gt; &gt;&gt; IMA<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt; policy language to support *intended=
* for.<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; Having kernel_read_file know the purpose =
is a big step in the right<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; direction, although, as I think I and oth=
ers have pointed out, just an<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; enum is insufficient -- for firmware, at =
least, the *name* is<br>
&gt; &gt; &gt;&gt; &gt; &gt; &gt; relevant.<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; &gt; The name is passed for firmware, the wrapper<b=
r>
&gt; &gt; &gt;&gt; kernel_read_file_from_path()<br>
&gt; &gt; &gt;&gt; &gt; &gt; is used. So if we wanted an LSM extension on n=
ame I think we can do that<br>
&gt; &gt; &gt;&gt; &gt; &gt; on kernel_read_file_from_path() ?<br>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt; &gt; It shouldn&#39;t make a difference whether kernel_r=
ead_file() is called<br>
&gt; &gt; &gt;&gt; &gt; directly, or the kernel_read_file_by_path/fd() are =
called.=C2=A0 The pathname<br>
&gt; &gt; &gt;&gt; &gt; is accessible from the &quot;file&quot; argument.<b=
r>
&gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt;&gt;l<br>
&gt; &gt; &gt;&gt; What happens if a symlink is involved?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; For callers of kernel_read_file_by_path(), like firmware, we=
 could pass<br>
&gt; &gt; &gt; the pathname, but for the other callers of kernel_read_file/=
_by_fd() we<br>
&gt; &gt; &gt; could use d_absolute_path().<br>
&gt; &gt;<br>
&gt; &gt; That seems pointlessly fragile to me, and this issue has been kno=
wn<br>
&gt; &gt; for longer than the code in question has even existed.=C2=A0 How =
about:<br>
&gt; &gt;<br>
&gt; &gt; struct kernel_trusted_file_description {<br>
&gt; &gt;=C2=A0 =C2=A0enum kernel_read_file_id type;<br>
&gt; &gt;=C2=A0 =C2=A0const char *specific_purpose;=C2=A0 /* may be NULL fo=
r KEXEC_IMAGE, etc. */<br>
&gt; &gt; };<br>
&gt; &gt;<br>
&gt; &gt; int kernel_read_file(struct file *, void **, loff_t *, const stru=
ct<br>
&gt; &gt; trusted_file_description *);<br>
&gt; &gt;<br>
&gt; &gt; rather than trying to guess.<br>
&gt; &gt;<br>
&gt; &gt; Also, are there any plans to move module signature verification i=
nto<br>
&gt; &gt; .kernel_post_read_file?<br>
&gt;<br>
&gt; The whole point of defining the kernel_read_file() family of functions=
<br>
&gt; was to close a class of measurement/appraisal gaps.</p>
<p dir=3D"ltr">And to enable firmware verification?</p>
<p dir=3D"ltr">&gt;=C2=A0 =C2=A0To answer your<br>
&gt; question, yes IMA measures and/or appraises files on the security post=
<br>
&gt; kernel read hook, based on policy.</p>
<p dir=3D"ltr">I wasn&#39;t asking anything about IMA.</p>
<p dir=3D"ltr">&gt;<br>
&gt; Andy, other than IMA-appraisal being xattr based,=C2=A0 I&#39;m not su=
re why<br>
&gt; you&#39;re so against it.=C2=A0 =C2=A0if you&#39;re going to be at Lin=
uxCon/LSS, perhaps<br>
&gt; we could speak in person there.</p>
<p dir=3D"ltr">I have nothing against IMA.=C2=A0 I have plenty of objection=
 to the core hooks being simultaneously messy and not supplying enough info=
rmation to provide the security properties they should provide.</p>
<p dir=3D"ltr">If IMA doesn&#39;t want or need to verify the purpose of the=
 loaded file, fine.</p>
<p dir=3D"ltr">I&#39;ll be at KS but not LSS.</p>
<p dir=3D"ltr">--Andy<br>
</p>

--001a1144212ab16f810538f2888b--
