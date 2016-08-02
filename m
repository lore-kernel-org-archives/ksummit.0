Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 680FF9F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 15:07:22 +0000 (UTC)
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 074C91E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 15:07:20 +0000 (UTC)
Received: by mail-ua0-f182.google.com with SMTP id j59so131150564uaj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 08:07:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrVZtn_SmeN1YX9_+2g+bEAHsfJJ7KQH7-eC_mU3O+0x2w@mail.gmail.com>
References: <20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
	<20160801230435.GF4541@io.lakedaemon.net>
	<CALCETrUwNdXdww5Bat908reeDiXmu3FsNTQg6NTJ5G71ZoRZ-A@mail.gmail.com>
	<20160801233036.GH4541@io.lakedaemon.net>
	<CALCETrWDsMdU2-AWQC4wYvotnNd2ydWT15Ckq0nZaNRJZOtZ-g@mail.gmail.com>
	<CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
	<CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
	<20160802122005.GI4541@io.lakedaemon.net>
	<CALCETrVEY=opRPGKy=P9h8s+TC_K19WnBJ2svXT+=_FnqRF1Mw@mail.gmail.com>
	<CALCETrVZtn_SmeN1YX9_+2g+bEAHsfJJ7KQH7-eC_mU3O+0x2w@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 2 Aug 2016 08:07:17 -0700
Message-ID: <CALCETrX+-iD6=yECjZqG3Zfc2QnGxhom4tyUCUu5Kz3G4Y2Uxw@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: multipart/alternative; boundary=001a11467764b2150805391812a7
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a11467764b2150805391812a7
Content-Type: text/plain; charset=UTF-8

On Aug 2, 2016 5:20 AM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>
> Morning Andy,
>
> On Mon, Aug 01, 2016 at 04:45:20PM -0700, Andy Lutomirski wrote:
> > On Aug 1, 2016 4:30 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
> > > On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wrote:
> > > > On Aug 1, 2016 4:04 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
> ...
> > > > > Assuming Andy's lightweight signature scheme, it would probably
be best
> > > > > to do a lookup based on the sha256 hash of the file.  Then
pathnames
> > > > > don't matter, and bad files don't even get to the signature
checking
> > > > > code.
> > > > >
> > > >
> > > > I'm not sure I understand what you mean.  What table would we look
the hash
> > > > up in?  What are we finding in that table?
> > >
> > > From the other subthread:
> > >
> > > > Then, to verify a signature, the kernel hashes the blob, generates
its
> > > > own linux_blob_signed_data, memcmps it to the one that Kyle signed
> > > > (and rejects if they differ *at all*), and then verifies the
> > > > signature.  (Do not try to be clever and parse the supplied
> > > > linux_blob_signed_data -- there is a long and storied history of
> > > > equivalent ideas being implemented incorrectly, and I can dig out
> > > > literature references if you really want.  Just generate your own
and
> > > > memcmp it, which leaves no room for ambiguity.)
> > > >
> > >
> > > So, I'm suggesting that when "the kernel hashes the blob", it use that
> > > hash to locate *which* "Kyle-signed" linux_blob_signed_data it needs
to
> > > compare against.  That's all, just removing the filename from the
> > > equation. :-)
> >
> > So Kyle would generate a list of signatures indexed by the blob's hash
> > instead of generating things like "iwlwifi-whatever.ucode.sig"?  Seems
> > okay.  It'll keep the existing hooks working, I think.  Of course, we
still
> > need to check the "iwlwifi-whatever.ucode" bit to confirm that it
matches
> > Kyle's signed data.
>
> Right.  That's where it may be better to use a version string, say the
> sha1 from linux-firmware.git, or the upstream version number.  However,
> that route means we can't easily 'build our own linux_blob_signed_data
> and do a memcmp.' since userspace may not have that info handy.

I don't think I agree, although iwlwifi may not be the best example.

The driver will say request_firmware("iwlwifi-whatever.ucode", ...,
"Intel") or similar.  The distro compiles the driver.  Afterwards, Intel
releases an updated, backwards-compatible blob.

If root trusts Intel, root can install that blob along with Kyle or Intel's
signature, and the kernel should accept it.  We can achieve this by Kyle
signing the whole struct *and providing the signed struct* or by Intel
doing the equivalent operation.

But we do need the kernel to verify the "iwlwifi-whatever.ucode" string to
prevent an attack in which someone does:

cp other-signed-thing.ucode iwlwifi-whatever.ucode

and thus causes the driver to upload something harmful to the card.  The
reason the textual firmware name works here (for using Kyle's signature and
for distro signatures) is that the string does uniquely define the firmware
purpose for Linux.

If needed for vendor relations, we could accept an alternate format for
vendor keys.  In that case, we avoid the wrong-blob attack by checking that
the key we verify with matches the expected vendor and hope that the vendor
doesn't release two pieces of hardware with firmwares that damage or attack
each other.

--001a11467764b2150805391812a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 2, 2016 5:20 AM, &quot;Jason Cooper&quot; &lt;<a href=
=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Morning Andy,<br>
&gt;<br>
&gt; On Mon, Aug 01, 2016 at 04:45:20PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Aug 1, 2016 4:30 PM, &quot;Jason Cooper&quot; &lt;<a href=3D"m=
ailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt; &gt; &gt; On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wr=
ote:<br>
&gt; &gt; &gt; &gt; On Aug 1, 2016 4:04 PM, &quot;Jason Cooper&quot; &lt;<a=
 href=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<b=
r>
&gt; ...<br>
&gt; &gt; &gt; &gt; &gt; Assuming Andy&#39;s lightweight signature scheme, =
it would probably be best<br>
&gt; &gt; &gt; &gt; &gt; to do a lookup based on the sha256 hash of the fil=
e.=C2=A0 Then pathnames<br>
&gt; &gt; &gt; &gt; &gt; don&#39;t matter, and bad files don&#39;t even get=
 to the signature checking<br>
&gt; &gt; &gt; &gt; &gt; code.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;m not sure I understand what you mean.=C2=A0 What=
 table would we look the hash<br>
&gt; &gt; &gt; &gt; up in?=C2=A0 What are we finding in that table?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; From the other subthread:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Then, to verify a signature, the kernel hashes the blob=
, generates its<br>
&gt; &gt; &gt; &gt; own linux_blob_signed_data, memcmps it to the one that =
Kyle signed<br>
&gt; &gt; &gt; &gt; (and rejects if they differ *at all*), and then verifie=
s the<br>
&gt; &gt; &gt; &gt; signature.=C2=A0 (Do not try to be clever and parse the=
 supplied<br>
&gt; &gt; &gt; &gt; linux_blob_signed_data -- there is a long and storied h=
istory of<br>
&gt; &gt; &gt; &gt; equivalent ideas being implemented incorrectly, and I c=
an dig out<br>
&gt; &gt; &gt; &gt; literature references if you really want.=C2=A0 Just ge=
nerate your own and<br>
&gt; &gt; &gt; &gt; memcmp it, which leaves no room for ambiguity.)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; So, I&#39;m suggesting that when &quot;the kernel hashes the=
 blob&quot;, it use that<br>
&gt; &gt; &gt; hash to locate *which* &quot;Kyle-signed&quot; linux_blob_si=
gned_data it needs to<br>
&gt; &gt; &gt; compare against.=C2=A0 That&#39;s all, just removing the fil=
ename from the<br>
&gt; &gt; &gt; equation. :-)<br>
&gt; &gt;<br>
&gt; &gt; So Kyle would generate a list of signatures indexed by the blob&#=
39;s hash<br>
&gt; &gt; instead of generating things like &quot;iwlwifi-whatever.ucode.si=
g&quot;?=C2=A0 Seems<br>
&gt; &gt; okay.=C2=A0 It&#39;ll keep the existing hooks working, I think.=
=C2=A0 Of course, we still<br>
&gt; &gt; need to check the &quot;iwlwifi-whatever.ucode&quot; bit to confi=
rm that it matches<br>
&gt; &gt; Kyle&#39;s signed data.<br>
&gt;<br>
&gt; Right.=C2=A0 That&#39;s where it may be better to use a version string=
, say the<br>
&gt; sha1 from linux-firmware.git, or the upstream version number.=C2=A0 Ho=
wever,<br>
&gt; that route means we can&#39;t easily &#39;build our own linux_blob_sig=
ned_data<br>
&gt; and do a memcmp.&#39; since userspace may not have that info handy.</p=
>
<p dir=3D"ltr">I don&#39;t think I agree, although iwlwifi may not be the b=
est example.</p>
<p dir=3D"ltr">The driver will say request_firmware(&quot;iwlwifi-whatever.=
ucode&quot;, ..., &quot;Intel&quot;) or similar.=C2=A0 The distro compiles =
the driver.=C2=A0 Afterwards, Intel releases an updated, backwards-compatib=
le blob.</p>
<p dir=3D"ltr">If root trusts Intel, root can install that blob along with =
Kyle or Intel&#39;s signature, and the kernel should accept it.=C2=A0 We ca=
n achieve this by Kyle signing the whole struct *and providing the signed s=
truct* or by Intel doing the equivalent operation.</p>
<p dir=3D"ltr">But we do need the kernel to verify the &quot;iwlwifi-whatev=
er.ucode&quot; string to prevent an attack in which someone does:</p>
<p dir=3D"ltr">cp other-signed-thing.ucode iwlwifi-whatever.ucode</p>
<p dir=3D"ltr">and thus causes the driver to upload something harmful to th=
e card.=C2=A0 The reason the textual firmware name works here (for using Ky=
le&#39;s signature and for distro signatures) is that the string does uniqu=
ely define the firmware purpose for Linux.</p>
<p dir=3D"ltr">If needed for vendor relations, we could accept an alternate=
 format for vendor keys.=C2=A0 In that case, we avoid the wrong-blob attack=
 by checking that the key we verify with matches the expected vendor and ho=
pe that the vendor doesn&#39;t release two pieces of hardware with firmware=
s that damage or attack each other.</p>

--001a11467764b2150805391812a7--
