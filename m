Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA8C6724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:46:13 +0000 (UTC)
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F0E822C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:46:13 +0000 (UTC)
Received: by mail-vk0-f54.google.com with SMTP id x130so138056624vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 21:46:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160803073731-mutt-send-email-mst@kernel.org>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
	<CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
	<20160803073731-mutt-send-email-mst@kernel.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 2 Aug 2016 21:46:11 -0700
Message-ID: <CALCETrWU+f3mMDK0dWKNj9WBDCmBwyQB3gMTRZ6OuhZLMkuaZA@mail.gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: multipart/alternative; boundary=001a1143092244f262053923830b
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a1143092244f262053923830b
Content-Type: text/plain; charset=UTF-8

On Aug 2, 2016 9:42 PM, "Michael S. Tsirkin" <mst@redhat.com> wrote:
>
> On Tue, Aug 02, 2016 at 09:34:14PM -0700, Andy Lutomirski wrote:
> > On Tue, Aug 2, 2016 at 8:32 PM, Matthew Garrett <mjg59@coreos.com>
wrote:
> > > On Tue, Aug 2, 2016 at 7:58 PM, Andy Lutomirski <luto@amacapital.net>
wrote:
> > >>  - Appeasing the Secure Boot deities.  AFAIK this specifically
> > >> requires that we verify the kernel and its modules using a
combination
> > >> of EFI-supplied and distro keys.
> > >
> > > Eh not quite. The rules are basically that if a Microsoft-signed
> > > object can be used to compromise other operating systems, Microsoft
> > > may unilaterally blacklist that object. Allowing arbitrary module
> > > loading or arbitrary kexec clearly makes it straightforward to simply
> > > use a signed Linux boot chain to then boot a compromised version of
> > > any other operating system, defeating the point of Secure Boot.
> >
> > > Distro
> > > keys are used for module signing because that's the easiest way to
> > > handle it (sign them during build and then discard the key),
> >
> > With my module hashing patches, that'll be even simpler.  The kernel
> > image will contain a list of SHA256 hashes of in-tree .ko files and
> > will accept those files.
>
> Hmm. I kind of like ability to build and add modules to a running
> kernel. And I think some distros might use it too, updating modules
> without updating the kernel (doesn't work if you discard the key,
> obviously).

I have no plans to prevent the existing module signature verification
scheme from working.  I just see no reason that in-tree modules should need
to be signed.

>
> > > UEFI keys
> > > are used to appease some manufacturers (they can ship their
> > > binary-only drivers signed with a key that's in firmware) and shim
> > > keys are used to allow users to sign their own modules.
> >
> > Hmm.  Would it be okay if a physically present user could subvert it?
> > For example, if a physically present user typed "insecure" into a
> > bootloader command line and thus turned off signature verification?
>
> Typically already possible with firmware menus.

Sure, but I'm trying to understand what types of attacks we need to resist.

--001a1143092244f262053923830b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 2, 2016 9:42 PM, &quot;Michael S. Tsirkin&quot; &lt;<=
a href=3D"mailto:mst@redhat.com">mst@redhat.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Tue, Aug 02, 2016 at 09:34:14PM -0700, Andy Lutomirski wrote:<br>
&gt; &gt; On Tue, Aug 2, 2016 at 8:32 PM, Matthew Garrett &lt;<a href=3D"ma=
ilto:mjg59@coreos.com">mjg59@coreos.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Tue, Aug 2, 2016 at 7:58 PM, Andy Lutomirski &lt;<a href=
=3D"mailto:luto@amacapital.net">luto@amacapital.net</a>&gt; wrote:<br>
&gt; &gt; &gt;&gt;=C2=A0 - Appeasing the Secure Boot deities.=C2=A0 AFAIK t=
his specifically<br>
&gt; &gt; &gt;&gt; requires that we verify the kernel and its modules using=
 a combination<br>
&gt; &gt; &gt;&gt; of EFI-supplied and distro keys.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Eh not quite. The rules are basically that if a Microsoft-si=
gned<br>
&gt; &gt; &gt; object can be used to compromise other operating systems, Mi=
crosoft<br>
&gt; &gt; &gt; may unilaterally blacklist that object. Allowing arbitrary m=
odule<br>
&gt; &gt; &gt; loading or arbitrary kexec clearly makes it straightforward =
to simply<br>
&gt; &gt; &gt; use a signed Linux boot chain to then boot a compromised ver=
sion of<br>
&gt; &gt; &gt; any other operating system, defeating the point of Secure Bo=
ot.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Distro<br>
&gt; &gt; &gt; keys are used for module signing because that&#39;s the easi=
est way to<br>
&gt; &gt; &gt; handle it (sign them during build and then discard the key),=
<br>
&gt; &gt;<br>
&gt; &gt; With my module hashing patches, that&#39;ll be even simpler.=C2=
=A0 The kernel<br>
&gt; &gt; image will contain a list of SHA256 hashes of in-tree .ko files a=
nd<br>
&gt; &gt; will accept those files.<br>
&gt;<br>
&gt; Hmm. I kind of like ability to build and add modules to a running<br>
&gt; kernel. And I think some distros might use it too, updating modules<br=
>
&gt; without updating the kernel (doesn&#39;t work if you discard the key,<=
br>
&gt; obviously).</p>
<p dir=3D"ltr">I have no plans to prevent the existing module signature ver=
ification scheme from working.=C2=A0 I just see no reason that in-tree modu=
les should need to be signed.</p>
<p dir=3D"ltr">&gt;<br>
&gt; &gt; &gt; UEFI keys<br>
&gt; &gt; &gt; are used to appease some manufacturers (they can ship their<=
br>
&gt; &gt; &gt; binary-only drivers signed with a key that&#39;s in firmware=
) and shim<br>
&gt; &gt; &gt; keys are used to allow users to sign their own modules.<br>
&gt; &gt;<br>
&gt; &gt; Hmm.=C2=A0 Would it be okay if a physically present user could su=
bvert it?<br>
&gt; &gt; For example, if a physically present user typed &quot;insecure&qu=
ot; into a<br>
&gt; &gt; bootloader command line and thus turned off signature verificatio=
n?<br>
&gt;<br>
&gt; Typically already possible with firmware menus.</p>
<p dir=3D"ltr">Sure, but I&#39;m trying to understand what types of attacks=
 we need to resist.</p>

--001a1143092244f262053923830b--
