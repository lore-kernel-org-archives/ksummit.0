Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 891CC941
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:45:24 +0000 (UTC)
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F3DC1F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:45:23 +0000 (UTC)
Received: by mail-vk0-f46.google.com with SMTP id w127so110852908vkh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 16:45:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
References: <1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
	<20160801230435.GF4541@io.lakedaemon.net>
	<CALCETrUwNdXdww5Bat908reeDiXmu3FsNTQg6NTJ5G71ZoRZ-A@mail.gmail.com>
	<20160801233036.GH4541@io.lakedaemon.net>
	<CALCETrWDsMdU2-AWQC4wYvotnNd2ydWT15Ckq0nZaNRJZOtZ-g@mail.gmail.com>
	<CALCETrW-P8+yGuEgM2BT+aCfZqJ=ekB2Xsz+4xhWtdRpprJHNw@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 16:45:20 -0700
Message-ID: <CALCETrVbUYQWCqrJ8E3TwhJqSs_he0qqW=TySy5yFo=pKsVAJA@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: multipart/alternative; boundary=001a1143ad7c8e806205390b31e1
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

--001a1143ad7c8e806205390b31e1
Content-Type: text/plain; charset=UTF-8

On Aug 1, 2016 4:30 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>
> On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wrote:
> > On Aug 1, 2016 4:04 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
> > >
> > > On Mon, Aug 01, 2016 at 03:36:51PM -0700, Andy Lutomirski wrote:
> > > > On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar <zohar@linux.vnet.ibm.com
>
> > wrote:
> > > > > On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski wrote:
> > > > >
> > > > >> Mimi, I'm curious: I don't fully understand what is covered by
IMA
> > > > >> policy.  How does the IMA kernel_read_file stuff deal with
symlinks?
> > > > >> For example, if I symlink /lib/firmware/iwlwifi-8265-21.ucode to
> > > > >> /home/badguy/iwlwifi-8265-21.ucode, what happens?  What if I
symlink
> > > > >> /lib/firmware/iwlwifi-8265-21.ucode to
/home/badguy/something_else?
> > > > >> Or even /lib/modules/kernel/foo/bar.ko to /home/badguy/evil.ko?
The
> > > > >> interesting case is where the "badguy" user is duly authorized to
> > > > >> write to /home/badguy and holds whatever keys may be needed.
> > > > >
> > > > > Lets step back a second.  In order for a key to be added to the
IMA
> > > > > keyring, the key must be signed by a key on the builtin keyring.
The
> > > > > key on the builtin keyring can be compiled into the kernel image
or
> > > > > added post build using Mehmet Kayaalp's patches.
> > > > >
> > > > > True, any key on the IMA keyring could be used to verify file
> > signatures
> > > > > (in IMA terminology appraise the file's integrity).  The
enumeration
> > is
> > > > > a first step to making sure that only properly signed code is
read by
> > > > > the kernel.  The next step requires finer grain key management.
In
> > > > > general, pathname based policies are not a good idea.  Whatever
method
> > > > > is defined, it should not be limited to just firmware or files
read by
> > > > > the kernel, but to all files.
> > > > >
> > > >
> > > > Unless I'm mistaken (which is quite possible), IMA is primarily
> > > > intended to appraise the content of POSIX filesystems.  So, if IMA
is
> > > > in use, then doing:
> > > >
> > > > $ cat /foo/bar
> > > >
> > > > should only succeed if /foo/bar is signed according to loaded
policy.
> > > > It's the system administrator's decision what filesystem is actually
> > > > mounted at /foo, and root can presumably mess around with
application
> > > > expectations by, say, bind-mounting something over /foo.
> > > >
> > > > Modules and firmware are special: even root should not be able to
> > > > avoid the full signature policy.  This means that, for example:
> > > >
> > > > # mount --bind /evil /lib/firmware
> > > >
> > > > should not result in violating policy.  So the pathname should not
be
> > > > used as such.  However, firmware is a bit special in that the driver
> > > > chooses the pathname to request, and it really does uniquely
identify
> > > > the intended firmware.  So, when a driver asks for:
> > > >
> > > > "iwlwifi-whatever.ucode"
> > > >
> > > > and the driver core tries to read
"/lib/firmware/iwlwifi-whatever.ucode"
> > > >
> > > > it's entirely possible that we'll follow a symlink and end up
> > > > elsewhere (Fedora, for example, does exactly this), but the file
> > > > that's loaded should be appraised (or verified using a non-IMA
means,
> > > > etc.) to verify that whatever blob gets found is actually signed by
> > > > the holder of an authorized key for the purpose of being used as
> > > > "iwlwifi-whatever.ucode".
> > >
> > > Assuming Andy's lightweight signature scheme, it would probably be
best
> > > to do a lookup based on the sha256 hash of the file.  Then pathnames
> > > don't matter, and bad files don't even get to the signature checking
> > > code.
> > >
> >
> > I'm not sure I understand what you mean.  What table would we look the
hash
> > up in?  What are we finding in that table?
>
> From the other subthread:
>
> > Then, to verify a signature, the kernel hashes the blob, generates its
> > own linux_blob_signed_data, memcmps it to the one that Kyle signed
> > (and rejects if they differ *at all*), and then verifies the
> > signature.  (Do not try to be clever and parse the supplied
> > linux_blob_signed_data -- there is a long and storied history of
> > equivalent ideas being implemented incorrectly, and I can dig out
> > literature references if you really want.  Just generate your own and
> > memcmp it, which leaves no room for ambiguity.)
> >
>
> So, I'm suggesting that when "the kernel hashes the blob", it use that
> hash to locate *which* "Kyle-signed" linux_blob_signed_data it needs to
> compare against.  That's all, just removing the filename from the
> equation. :-)

So Kyle would generate a list of signatures indexed by the blob's hash
instead of generating things like "iwlwifi-whatever.ucode.sig"?  Seems
okay.  It'll keep the existing hooks working, I think.  Of course, we still
need to check the "iwlwifi-whatever.ucode" bit to confirm that it matches
Kyle's signed data.

--001a1143ad7c8e806205390b31e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 1, 2016 4:30 PM, &quot;Jason Cooper&quot; &lt;<a href=
=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, Aug 01, 2016 at 04:13:50PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Aug 1, 2016 4:04 PM, &quot;Jason Cooper&quot; &lt;<a href=3D"m=
ailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, Aug 01, 2016 at 03:36:51PM -0700, Andy Lutomirski wr=
ote:<br>
&gt; &gt; &gt; &gt; On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar &lt;<a href=
=3D"mailto:zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski =
wrote:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;&gt; Mimi, I&#39;m curious: I don&#39;t fully under=
stand what is covered by IMA<br>
&gt; &gt; &gt; &gt; &gt;&gt; policy.=C2=A0 How does the IMA kernel_read_fil=
e stuff deal with symlinks?<br>
&gt; &gt; &gt; &gt; &gt;&gt; For example, if I symlink /lib/firmware/iwlwif=
i-8265-21.ucode to<br>
&gt; &gt; &gt; &gt; &gt;&gt; /home/badguy/iwlwifi-8265-21.ucode, what happe=
ns?=C2=A0 What if I symlink<br>
&gt; &gt; &gt; &gt; &gt;&gt; /lib/firmware/iwlwifi-8265-21.ucode to /home/b=
adguy/something_else?<br>
&gt; &gt; &gt; &gt; &gt;&gt; Or even /lib/modules/kernel/foo/bar.ko to /hom=
e/badguy/evil.ko?=C2=A0 The<br>
&gt; &gt; &gt; &gt; &gt;&gt; interesting case is where the &quot;badguy&quo=
t; user is duly authorized to<br>
&gt; &gt; &gt; &gt; &gt;&gt; write to /home/badguy and holds whatever keys =
may be needed.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Lets step back a second.=C2=A0 In order for a key =
to be added to the IMA<br>
&gt; &gt; &gt; &gt; &gt; keyring, the key must be signed by a key on the bu=
iltin keyring.=C2=A0 The<br>
&gt; &gt; &gt; &gt; &gt; key on the builtin keyring can be compiled into th=
e kernel image or<br>
&gt; &gt; &gt; &gt; &gt; added post build using Mehmet Kayaalp&#39;s patche=
s.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; True, any key on the IMA keyring could be used to =
verify file<br>
&gt; &gt; signatures<br>
&gt; &gt; &gt; &gt; &gt; (in IMA terminology appraise the file&#39;s integr=
ity).=C2=A0 The enumeration<br>
&gt; &gt; is<br>
&gt; &gt; &gt; &gt; &gt; a first step to making sure that only properly sig=
ned code is read by<br>
&gt; &gt; &gt; &gt; &gt; the kernel.=C2=A0 The next step requires finer gra=
in key management.=C2=A0 In<br>
&gt; &gt; &gt; &gt; &gt; general, pathname based policies are not a good id=
ea.=C2=A0 Whatever method<br>
&gt; &gt; &gt; &gt; &gt; is defined, it should not be limited to just firmw=
are or files read by<br>
&gt; &gt; &gt; &gt; &gt; the kernel, but to all files.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Unless I&#39;m mistaken (which is quite possible), IMA =
is primarily<br>
&gt; &gt; &gt; &gt; intended to appraise the content of POSIX filesystems.=
=C2=A0 So, if IMA is<br>
&gt; &gt; &gt; &gt; in use, then doing:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; $ cat /foo/bar<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; should only succeed if /foo/bar is signed according to =
loaded policy.<br>
&gt; &gt; &gt; &gt; It&#39;s the system administrator&#39;s decision what f=
ilesystem is actually<br>
&gt; &gt; &gt; &gt; mounted at /foo, and root can presumably mess around wi=
th application<br>
&gt; &gt; &gt; &gt; expectations by, say, bind-mounting something over /foo=
.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Modules and firmware are special: even root should not =
be able to<br>
&gt; &gt; &gt; &gt; avoid the full signature policy.=C2=A0 This means that,=
 for example:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; # mount --bind /evil /lib/firmware<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; should not result in violating policy.=C2=A0 So the pat=
hname should not be<br>
&gt; &gt; &gt; &gt; used as such.=C2=A0 However, firmware is a bit special =
in that the driver<br>
&gt; &gt; &gt; &gt; chooses the pathname to request, and it really does uni=
quely identify<br>
&gt; &gt; &gt; &gt; the intended firmware.=C2=A0 So, when a driver asks for=
:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &quot;iwlwifi-whatever.ucode&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; and the driver core tries to read &quot;/lib/firmware/i=
wlwifi-whatever.ucode&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; it&#39;s entirely possible that we&#39;ll follow a syml=
ink and end up<br>
&gt; &gt; &gt; &gt; elsewhere (Fedora, for example, does exactly this), but=
 the file<br>
&gt; &gt; &gt; &gt; that&#39;s loaded should be appraised (or verified usin=
g a non-IMA means,<br>
&gt; &gt; &gt; &gt; etc.) to verify that whatever blob gets found is actual=
ly signed by<br>
&gt; &gt; &gt; &gt; the holder of an authorized key for the purpose of bein=
g used as<br>
&gt; &gt; &gt; &gt; &quot;iwlwifi-whatever.ucode&quot;.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Assuming Andy&#39;s lightweight signature scheme, it would p=
robably be best<br>
&gt; &gt; &gt; to do a lookup based on the sha256 hash of the file.=C2=A0 T=
hen pathnames<br>
&gt; &gt; &gt; don&#39;t matter, and bad files don&#39;t even get to the si=
gnature checking<br>
&gt; &gt; &gt; code.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m not sure I understand what you mean.=C2=A0 What table wou=
ld we look the hash<br>
&gt; &gt; up in?=C2=A0 What are we finding in that table?<br>
&gt;<br>
&gt; From the other subthread:<br>
&gt;<br>
&gt; &gt; Then, to verify a signature, the kernel hashes the blob, generate=
s its<br>
&gt; &gt; own linux_blob_signed_data, memcmps it to the one that Kyle signe=
d<br>
&gt; &gt; (and rejects if they differ *at all*), and then verifies the<br>
&gt; &gt; signature.=C2=A0 (Do not try to be clever and parse the supplied<=
br>
&gt; &gt; linux_blob_signed_data -- there is a long and storied history of<=
br>
&gt; &gt; equivalent ideas being implemented incorrectly, and I can dig out=
<br>
&gt; &gt; literature references if you really want.=C2=A0 Just generate you=
r own and<br>
&gt; &gt; memcmp it, which leaves no room for ambiguity.)<br>
&gt; &gt;<br>
&gt;<br>
&gt; So, I&#39;m suggesting that when &quot;the kernel hashes the blob&quot=
;, it use that<br>
&gt; hash to locate *which* &quot;Kyle-signed&quot; linux_blob_signed_data =
it needs to<br>
&gt; compare against.=C2=A0 That&#39;s all, just removing the filename from=
 the<br>
&gt; equation. :-)</p>
<p dir=3D"ltr">So Kyle would generate a list of signatures indexed by the b=
lob&#39;s hash instead of generating things like &quot;iwlwifi-whatever.uco=
de.sig&quot;?=C2=A0 Seems okay.=C2=A0 It&#39;ll keep the existing hooks wor=
king, I think.=C2=A0 Of course, we still need to check the &quot;iwlwifi-wh=
atever.ucode&quot; bit to confirm that it matches Kyle&#39;s signed data.<b=
r>
</p>

--001a1143ad7c8e806205390b31e1--
