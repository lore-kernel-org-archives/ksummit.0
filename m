Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A92749F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 21:38:29 +0000 (UTC)
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9F24171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 21:38:28 +0000 (UTC)
Received: by mail-ot0-f176.google.com with SMTP id u13so57678919otd.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 14:38:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Sun, 25 Jun 2017 17:38:27 -0400
Message-ID: <CAFhKne8QN1jcATr_xTCWb7Jn-=UoZmsbf4GTDLzM0V=kgWvB3A@mail.gmail.com>
To: Hannes Reinecke <hare@suse.com>
Content-Type: multipart/alternative; boundary="001a113ec948ac37360552cfa754"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--001a113ec948ac37360552cfa754
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is udev the solution here?

Have ->probe do common initialisation and return success. Then udev says
something to the driver to make it choose one or the other modes.

On 25 Jun 2017 11:40 am, "Hannes Reinecke" <hare@suse.com> wrote:

> Hi all,
>
> here's a thing which came up recently on the SCSI ml:
>
> How should we handle devices with _several_ possible drivers?
>
> Case in point are some HBAs, for which the plan is to have distinct
> drivers for either target or initiator mode.
>
> There are several options how this could be handled:
> - Have a default driver, and manually rebind the 'real' driver once the
> configuration could be read and acted upon.
> That would have the drawback that we do an initialisation in the 'wrong'
> mode, and later have to switch configuration. Which at best will 'just'
> induce some pointless initialisation, at worst confuse attached devices
> to no end. Not to mention introducing lots of interesting races with
> udev and systemd
> - Inhibit default binding, and load the correct drivers after the
> configuration has been read.
> Would be a deviation from the original scenario (where the driver are
> bound/loaded as soon as the device becomes available). Has the drawback
> that one would need to inhibit automatic bindings on the _bus_ level (ie
> PCI), which will be even more interesting.
> - Add some bus-specific (or even general?) device configuration syntax,
> which would allow to pass in the required configuration from the
> command-line (or reasonably early, anyway). For which we need a syntax
> first, anyway. And need to figure out if we can have an abstract syntax
> or would need to have a bus- (or even driver-) specific configuration.
>
> So no easy way out here, and it might be worth having input from other
> parties. And some might have similar problems (just thinking of
> usb-modeswitch ...), so there might be some synergies to be had.
>
> Cheers,
>
> Hannes
> --
> Dr. Hannes Reinecke                Teamlead Storage & Networking
> hare@suse.com                                  +49 911 74053 688
> SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
> GF: F. Imend=C3=B6rffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
> HRB 21284 (AG N=C3=BCrnberg)
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>

--001a113ec948ac37360552cfa754
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Is udev the solution here?<div dir=3D"auto"><br></div><di=
v dir=3D"auto">Have -&gt;probe do common initialisation and return success.=
 Then udev says something to the driver to make it choose one or the other =
modes.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On 25 Jun 2017 11:40 am, &quot;Hannes Reinecke&quot; &lt;<a href=3D"mailto=
:hare@suse.com">hare@suse.com</a>&gt; wrote:<br type=3D"attribution"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">Hi all,<br>
<br>
here&#39;s a thing which came up recently on the SCSI ml:<br>
<br>
How should we handle devices with _several_ possible drivers?<br>
<br>
Case in point are some HBAs, for which the plan is to have distinct<br>
drivers for either target or initiator mode.<br>
<br>
There are several options how this could be handled:<br>
- Have a default driver, and manually rebind the &#39;real&#39; driver once=
 the<br>
configuration could be read and acted upon.<br>
That would have the drawback that we do an initialisation in the &#39;wrong=
&#39;<br>
mode, and later have to switch configuration. Which at best will &#39;just&=
#39;<br>
induce some pointless initialisation, at worst confuse attached devices<br>
to no end. Not to mention introducing lots of interesting races with<br>
udev and systemd<br>
- Inhibit default binding, and load the correct drivers after the<br>
configuration has been read.<br>
Would be a deviation from the original scenario (where the driver are<br>
bound/loaded as soon as the device becomes available). Has the drawback<br>
that one would need to inhibit automatic bindings on the _bus_ level (ie<br=
>
PCI), which will be even more interesting.<br>
- Add some bus-specific (or even general?) device configuration syntax,<br>
which would allow to pass in the required configuration from the<br>
command-line (or reasonably early, anyway). For which we need a syntax<br>
first, anyway. And need to figure out if we can have an abstract syntax<br>
or would need to have a bus- (or even driver-) specific configuration.<br>
<br>
So no easy way out here, and it might be worth having input from other<br>
parties. And some might have similar problems (just thinking of<br>
usb-modeswitch ...), so there might be some synergies to be had.<br>
<br>
Cheers,<br>
<br>
Hannes<br>
--<br>
Dr. Hannes Reinecke=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Teamlead Storage &amp; Networking<br>
<a href=3D"mailto:hare@suse.com">hare@suse.com</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <a href=3D"tel:%2B49%20911%2074053%20688" value=3D"+49=
91174053688">+49 911 74053 688</a><br>
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg<br>
GF: F. Imend=C3=B6rffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton<br>
HRB 21284 (AG N=C3=BCrnberg)<br>
______________________________<wbr>_________________<br>
Ksummit-discuss mailing list<br>
<a href=3D"mailto:Ksummit-discuss@lists.linuxfoundation.org">Ksummit-discus=
s@lists.<wbr>linuxfoundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discu=
ss" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundation.<wbr=
>org/mailman/listinfo/ksummit-<wbr>discuss</a><br>
</blockquote></div></div>

--001a113ec948ac37360552cfa754--
