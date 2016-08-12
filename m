Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E025279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 05:50:31 +0000 (UTC)
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95B0511D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 05:50:30 +0000 (UTC)
Received: by mail-ua0-f193.google.com with SMTP id u13so1329960uau.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 22:50:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160812052919.GB2289@p183.telecom.by>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
	<20160812040155.kvw5322jqshtmljb@x>
	<CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
	<20160812052919.GB2289@p183.telecom.by>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Fri, 12 Aug 2016 01:50:28 -0400
Message-ID: <CAFhKne9UhsfE8988RiCWr07Hfk-XH56akFcM8EwpUiFG_y2kVQ@mail.gmail.com>
To: Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: multipart/alternative; boundary=001a11439cbcbf45df0539d975db
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a11439cbcbf45df0539d975db
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 12, 2016 at 1:29 AM, Alexey Dobriyan <adobriyan@gmail.com>
wrote:

> On Fri, Aug 12, 2016 at 12:07:11AM -0400, Matthew Wilcox wrote:
> > > On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:
> > > > Can we introduce types for this? We have a number of different return
> > type
> > > > conventions in the kernel:
> > > >
> > > > bool
> > > > errno_t (-4095 to 0 are valid)
> > > > count_t (-4095 to INT_MAX)
> > > > long_count_t (-4095 to LONG_MAX)
> > > > ulong_count_t (-4095 to -4096)
> > > > struct foo _err*
> >
> > I think the biggest problem is coming up with good names for the types.
> And
> > the churn of introducing them, particularly converting function pointers
> > and all occurrences.
>
> Names are easy part (errno_t is perfect actually).


I agree that errno_t is perfect, but it's not really part of a nice family
-- count_t, long_count_t and ulong_count_t are all pretty crappy.  They
don't scream out I MIGHT CONTAIN AN ERRNO, BETTER CHECK ME! the way I would
like.  count_might_be_errno_t is not exactly euphonious.  err_count_t,
perhaps?

Of course, it might not be a count ... at least at one point the NVMe
driver had variables which either contained [-4095 to -1] (Linux errno,
usually -ENOMEM), 0 (success) or 1-65535 (NVMe status code indicating some
device failure).  I think those variables are all gone now, but that's not
an unreasonable thing to want and calling that beast a ushort_count_t would
be untrue.  I suspect for that kind of thing, the driver should create its
own type (or if we did something similar in SCSI, the subsystem would
create a scsi_status_t that was pretty much private to the SCSI subsystem).

--001a11439cbcbf45df0539d975db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Aug 12, 2016 at 1:29 AM, Alexey Dobriyan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:adobriyan@gmail.com" target=3D"_blank">adobr=
iyan@gmail.com</a>&gt;</span> wrote:<div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div =
class=3D"h5">On Fri, Aug 12, 2016 at 12:07:11AM -0400, Matthew Wilcox wrote=
:<br>&gt; &gt; On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wro=
te:<br>
&gt; &gt; &gt; Can we introduce types for this? We have a number of differe=
nt return<br>
&gt; type<br>
&gt; &gt; &gt; conventions in the kernel:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; bool<br>
&gt; &gt; &gt; errno_t (-4095 to 0 are valid)<br>
&gt; &gt; &gt; count_t (-4095 to INT_MAX)<br>
&gt; &gt; &gt; long_count_t (-4095 to LONG_MAX)<br>
&gt; &gt; &gt; ulong_count_t (-4095 to -4096)<br>
&gt; &gt; &gt; struct foo _err*<br>&gt;<br>
&gt; I think the biggest problem is coming up with good names for the types=
. And<br>
&gt; the churn of introducing them, particularly converting function pointe=
rs<br>
&gt; and all occurrences.<br>
<br>
</div></div>Names are easy part (errno_t is perfect actually).</blockquote>=
<div><br></div><div>I agree that errno_t is perfect, but it&#39;s not reall=
y part of a nice family -- count_t, long_count_t and ulong_count_t are all =
pretty crappy.=C2=A0 They don&#39;t scream out I MIGHT CONTAIN AN ERRNO, BE=
TTER CHECK ME! the way I would like. =C2=A0count_might_be_errno_t is not ex=
actly euphonious. =C2=A0err_count_t, perhaps?</div><div><br></div><div>Of c=
ourse, it might not be a count ... at least at one point the NVMe driver ha=
d variables which either contained [-4095 to -1] (Linux errno, usually -ENO=
MEM), 0 (success) or 1-65535 (NVMe status code indicating some device failu=
re).=C2=A0 I think those variables are all gone now, but that&#39;s not an =
unreasonable thing to want and calling that beast a ushort_count_t would be=
 untrue.=C2=A0 I suspect for that kind of thing, the driver should create i=
ts own type (or if we did something similar in SCSI, the subsystem would cr=
eate a scsi_status_t that was pretty much private to the SCSI subsystem).</=
div></div></div></div>

--001a11439cbcbf45df0539d975db--
