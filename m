Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BBAC092B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 04:03:56 +0000 (UTC)
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6030A1F887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 04:03:55 +0000 (UTC)
Received: by mail-lb0-f179.google.com with SMTP id v6so3595308lbi.24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 17 Aug 2014 21:03:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140818040014.GA10623@mail.hallyn.com>
References: <87lhqmxyxn.fsf@x220.int.ebiederm.org>
	<20140818040014.GA10623@mail.hallyn.com>
Date: Sun, 17 Aug 2014 21:03:52 -0700
Message-ID: <CALCETrW53hiZpFH4J+UsE_tX6i_cTmfth5xHtOzw8uPGGEbf4Q@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
To: "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: multipart/alternative; boundary=089e0141a1ce89c1eb0500df750b
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Mount API?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--089e0141a1ce89c1eb0500df750b
Content-Type: text/plain; charset=UTF-8

On Aug 17, 2014 11:00 PM, "Serge E. Hallyn" <serge@hallyn.com> wrote:
>
> Quoting Eric W. Biederman (ebiederm@xmission.com):
> >
> > Serge E. Hallyn <serge@hallyn.com> writes:
> > > Quoting Andy Lutomirski (luto at amacapital.net):
> > > > ISTR Eric Biederman mentioned this, but I don't know whether he's
> > > > volunteering or whether he'll be there.
> > > >
> > > > I could try to write it, but my VFS track record is pretty bad.
> > > > On Aug 16, 2014 9:00 PM, "Jan Kara" <jack at suse.cz> wrote:
> > > >
> > > > > On Sat 16-08-14 13:43:40, Andy Lutomirski wrote:
> > > > > > Is anyone interested in discussing a new mount API in the
unconference
> > > > > > track?
> > > > > >
> > > > > > Think bindmountat, etc.
> > > > >   We can discuss however will there be anyone who's going to
write the
> > > > > code? I know Miklos Szeredi was looking into that but it didn't
go anywhere
> > > > > AFAIK and he won't be at KS/LinuxCon. And I'm not sure if Al will
be at the
> > > > > conference..
> > >
> > > I'm quite certain Eric will at least be at the venue.  Eric?
> >
> > I am here and I will be here all week.
> >
> > With respect to bind mounts I was mentioning a patch that someone
> > was actively working on a week or two ago to allow at least the
read-only
> > flag to be specified when a bind mount is created.
> >
> > For a whole new clean mount API I don't know.  I do think it would be
> > productive for us to get together and talk.  Weather that is at the
> > container session on Friday or elswhere I don't know.
>
> If Al isn't there on M-T, then Friday works great for me.

I'll be gone then.  Oh, well.

>
> thanks,
> -serge

--089e0141a1ce89c1eb0500df750b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Aug 17, 2014 11:00 PM, &quot;Serge E. Hallyn&quot; &lt;<a href=3D"mailto=
:serge@hallyn.com">serge@hallyn.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Quoting Eric W. Biederman (<a href=3D"mailto:ebiederm@xmission.com">eb=
iederm@xmission.com</a>):<br>
&gt; &gt;<br>
&gt; &gt; Serge E. Hallyn &lt;<a href=3D"mailto:serge@hallyn.com">serge@hal=
lyn.com</a>&gt; writes:<br>
&gt; &gt; &gt; Quoting Andy Lutomirski (luto at <a href=3D"http://amacapita=
l.net">amacapital.net</a>):<br>
&gt; &gt; &gt; &gt; ISTR Eric Biederman mentioned this, but I don&#39;t kno=
w whether he&#39;s<br>
&gt; &gt; &gt; &gt; volunteering or whether he&#39;ll be there.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I could try to write it, but my VFS track record is pre=
tty bad.<br>
&gt; &gt; &gt; &gt; On Aug 16, 2014 9:00 PM, &quot;Jan Kara&quot; &lt;jack =
at <a href=3D"http://suse.cz">suse.cz</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; On Sat 16-08-14 13:43:40, Andy Lutomirski wrote:<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; Is anyone interested in discussing a new moun=
t API in the unconference<br>
&gt; &gt; &gt; &gt; &gt; &gt; track?<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Think bindmountat, etc.<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0We can discuss however will there be a=
nyone who&#39;s going to write the<br>
&gt; &gt; &gt; &gt; &gt; code? I know Miklos Szeredi was looking into that =
but it didn&#39;t go anywhere<br>
&gt; &gt; &gt; &gt; &gt; AFAIK and he won&#39;t be at KS/LinuxCon. And I&#3=
9;m not sure if Al will be at the<br>
&gt; &gt; &gt; &gt; &gt; conference..<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m quite certain Eric will at least be at the venue.=C2=
=A0 Eric?<br>
&gt; &gt;<br>
&gt; &gt; I am here and I will be here all week.<br>
&gt; &gt;<br>
&gt; &gt; With respect to bind mounts I was mentioning a patch that someone=
<br>
&gt; &gt; was actively working on a week or two ago to allow at least the r=
ead-only<br>
&gt; &gt; flag to be specified when a bind mount is created.<br>
&gt; &gt;<br>
&gt; &gt; For a whole new clean mount API I don&#39;t know.=C2=A0 I do thin=
k it would be<br>
&gt; &gt; productive for us to get together and talk.=C2=A0 Weather that is=
 at the<br>
&gt; &gt; container session on Friday or elswhere I don&#39;t know.<br>
&gt;<br>
&gt; If Al isn&#39;t there on M-T, then Friday works great for me.</p>
<p dir=3D"ltr">I&#39;ll be gone then.=C2=A0 Oh, well.</p>
<p dir=3D"ltr">&gt;<br>
&gt; thanks,<br>
&gt; -serge<br>
</p>

--089e0141a1ce89c1eb0500df750b--
