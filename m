Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5077091A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:13:53 +0000 (UTC)
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D1B310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:13:52 +0000 (UTC)
Received: by mail-ua0-f171.google.com with SMTP id j59so117048586uaj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 16:13:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160801230435.GF4541@io.lakedaemon.net>
References: <1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
	<20160801230435.GF4541@io.lakedaemon.net>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 16:13:50 -0700
Message-ID: <CALCETrUwNdXdww5Bat908reeDiXmu3FsNTQg6NTJ5G71ZoRZ-A@mail.gmail.com>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: multipart/alternative; boundary=94eb2c122f02da597805390ac0bc
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

--94eb2c122f02da597805390ac0bc
Content-Type: text/plain; charset=UTF-8

On Aug 1, 2016 4:04 PM, "Jason Cooper" <jason@lakedaemon.net> wrote:
>
> On Mon, Aug 01, 2016 at 03:36:51PM -0700, Andy Lutomirski wrote:
> > On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar <zohar@linux.vnet.ibm.com>
wrote:
> > > On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski wrote:
> > >
> > >> Mimi, I'm curious: I don't fully understand what is covered by IMA
> > >> policy.  How does the IMA kernel_read_file stuff deal with symlinks?
> > >> For example, if I symlink /lib/firmware/iwlwifi-8265-21.ucode to
> > >> /home/badguy/iwlwifi-8265-21.ucode, what happens?  What if I symlink
> > >> /lib/firmware/iwlwifi-8265-21.ucode to /home/badguy/something_else?
> > >> Or even /lib/modules/kernel/foo/bar.ko to /home/badguy/evil.ko?  The
> > >> interesting case is where the "badguy" user is duly authorized to
> > >> write to /home/badguy and holds whatever keys may be needed.
> > >
> > > Lets step back a second.  In order for a key to be added to the IMA
> > > keyring, the key must be signed by a key on the builtin keyring.  The
> > > key on the builtin keyring can be compiled into the kernel image or
> > > added post build using Mehmet Kayaalp's patches.
> > >
> > > True, any key on the IMA keyring could be used to verify file
signatures
> > > (in IMA terminology appraise the file's integrity).  The enumeration
is
> > > a first step to making sure that only properly signed code is read by
> > > the kernel.  The next step requires finer grain key management.  In
> > > general, pathname based policies are not a good idea.  Whatever method
> > > is defined, it should not be limited to just firmware or files read by
> > > the kernel, but to all files.
> > >
> >
> > Unless I'm mistaken (which is quite possible), IMA is primarily
> > intended to appraise the content of POSIX filesystems.  So, if IMA is
> > in use, then doing:
> >
> > $ cat /foo/bar
> >
> > should only succeed if /foo/bar is signed according to loaded policy.
> > It's the system administrator's decision what filesystem is actually
> > mounted at /foo, and root can presumably mess around with application
> > expectations by, say, bind-mounting something over /foo.
> >
> > Modules and firmware are special: even root should not be able to
> > avoid the full signature policy.  This means that, for example:
> >
> > # mount --bind /evil /lib/firmware
> >
> > should not result in violating policy.  So the pathname should not be
> > used as such.  However, firmware is a bit special in that the driver
> > chooses the pathname to request, and it really does uniquely identify
> > the intended firmware.  So, when a driver asks for:
> >
> > "iwlwifi-whatever.ucode"
> >
> > and the driver core tries to read "/lib/firmware/iwlwifi-whatever.ucode"
> >
> > it's entirely possible that we'll follow a symlink and end up
> > elsewhere (Fedora, for example, does exactly this), but the file
> > that's loaded should be appraised (or verified using a non-IMA means,
> > etc.) to verify that whatever blob gets found is actually signed by
> > the holder of an authorized key for the purpose of being used as
> > "iwlwifi-whatever.ucode".
>
> Assuming Andy's lightweight signature scheme, it would probably be best
> to do a lookup based on the sha256 hash of the file.  Then pathnames
> don't matter, and bad files don't even get to the signature checking
> code.
>

I'm not sure I understand what you mean.  What table would we look the hash
up in?  What are we finding in that table?

--94eb2c122f02da597805390ac0bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 1, 2016 4:04 PM, &quot;Jason Cooper&quot; &lt;<a href=
=3D"mailto:jason@lakedaemon.net">jason@lakedaemon.net</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, Aug 01, 2016 at 03:36:51PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar &lt;<a href=3D"mailto:=
zohar@linux.vnet.ibm.com">zohar@linux.vnet.ibm.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; Mimi, I&#39;m curious: I don&#39;t fully understand what=
 is covered by IMA<br>
&gt; &gt; &gt;&gt; policy.=C2=A0 How does the IMA kernel_read_file stuff de=
al with symlinks?<br>
&gt; &gt; &gt;&gt; For example, if I symlink /lib/firmware/iwlwifi-8265-21.=
ucode to<br>
&gt; &gt; &gt;&gt; /home/badguy/iwlwifi-8265-21.ucode, what happens?=C2=A0 =
What if I symlink<br>
&gt; &gt; &gt;&gt; /lib/firmware/iwlwifi-8265-21.ucode to /home/badguy/some=
thing_else?<br>
&gt; &gt; &gt;&gt; Or even /lib/modules/kernel/foo/bar.ko to /home/badguy/e=
vil.ko?=C2=A0 The<br>
&gt; &gt; &gt;&gt; interesting case is where the &quot;badguy&quot; user is=
 duly authorized to<br>
&gt; &gt; &gt;&gt; write to /home/badguy and holds whatever keys may be nee=
ded.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Lets step back a second.=C2=A0 In order for a key to be adde=
d to the IMA<br>
&gt; &gt; &gt; keyring, the key must be signed by a key on the builtin keyr=
ing.=C2=A0 The<br>
&gt; &gt; &gt; key on the builtin keyring can be compiled into the kernel i=
mage or<br>
&gt; &gt; &gt; added post build using Mehmet Kayaalp&#39;s patches.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; True, any key on the IMA keyring could be used to verify fil=
e signatures<br>
&gt; &gt; &gt; (in IMA terminology appraise the file&#39;s integrity).=C2=
=A0 The enumeration is<br>
&gt; &gt; &gt; a first step to making sure that only properly signed code i=
s read by<br>
&gt; &gt; &gt; the kernel.=C2=A0 The next step requires finer grain key man=
agement.=C2=A0 In<br>
&gt; &gt; &gt; general, pathname based policies are not a good idea.=C2=A0 =
Whatever method<br>
&gt; &gt; &gt; is defined, it should not be limited to just firmware or fil=
es read by<br>
&gt; &gt; &gt; the kernel, but to all files.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Unless I&#39;m mistaken (which is quite possible), IMA is primari=
ly<br>
&gt; &gt; intended to appraise the content of POSIX filesystems.=C2=A0 So, =
if IMA is<br>
&gt; &gt; in use, then doing:<br>
&gt; &gt;<br>
&gt; &gt; $ cat /foo/bar<br>
&gt; &gt;<br>
&gt; &gt; should only succeed if /foo/bar is signed according to loaded pol=
icy.<br>
&gt; &gt; It&#39;s the system administrator&#39;s decision what filesystem =
is actually<br>
&gt; &gt; mounted at /foo, and root can presumably mess around with applica=
tion<br>
&gt; &gt; expectations by, say, bind-mounting something over /foo.<br>
&gt; &gt;<br>
&gt; &gt; Modules and firmware are special: even root should not be able to=
<br>
&gt; &gt; avoid the full signature policy.=C2=A0 This means that, for examp=
le:<br>
&gt; &gt;<br>
&gt; &gt; # mount --bind /evil /lib/firmware<br>
&gt; &gt;<br>
&gt; &gt; should not result in violating policy.=C2=A0 So the pathname shou=
ld not be<br>
&gt; &gt; used as such.=C2=A0 However, firmware is a bit special in that th=
e driver<br>
&gt; &gt; chooses the pathname to request, and it really does uniquely iden=
tify<br>
&gt; &gt; the intended firmware.=C2=A0 So, when a driver asks for:<br>
&gt; &gt;<br>
&gt; &gt; &quot;iwlwifi-whatever.ucode&quot;<br>
&gt; &gt;<br>
&gt; &gt; and the driver core tries to read &quot;/lib/firmware/iwlwifi-wha=
tever.ucode&quot;<br>
&gt; &gt;<br>
&gt; &gt; it&#39;s entirely possible that we&#39;ll follow a symlink and en=
d up<br>
&gt; &gt; elsewhere (Fedora, for example, does exactly this), but the file<=
br>
&gt; &gt; that&#39;s loaded should be appraised (or verified using a non-IM=
A means,<br>
&gt; &gt; etc.) to verify that whatever blob gets found is actually signed =
by<br>
&gt; &gt; the holder of an authorized key for the purpose of being used as<=
br>
&gt; &gt; &quot;iwlwifi-whatever.ucode&quot;.<br>
&gt;<br>
&gt; Assuming Andy&#39;s lightweight signature scheme, it would probably be=
 best<br>
&gt; to do a lookup based on the sha256 hash of the file.=C2=A0 Then pathna=
mes<br>
&gt; don&#39;t matter, and bad files don&#39;t even get to the signature ch=
ecking<br>
&gt; code.<br>
&gt;</p>
<p dir=3D"ltr">I&#39;m not sure I understand what you mean.=C2=A0 What tabl=
e would we look the hash up in?=C2=A0 What are we finding in that table?<br=
></p>

--94eb2c122f02da597805390ac0bc--
