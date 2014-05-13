Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB6F24D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 06:44:27 +0000 (UTC)
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F323A1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 06:44:26 +0000 (UTC)
Received: by mail-qc0-f176.google.com with SMTP id r5so9145235qcx.35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:44:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
Date: Tue, 13 May 2014 09:44:26 +0300
Message-ID: <CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
From: =?UTF-8?B?VGVvZG9yYSBCxINsdcWjxIM=?= <teobaluta@gmail.com>
To: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Anton Arapov <arapov@gmail.com>, Sarah A Sharp <sarah@minilop.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

+ everyone else

On Mon, May 12, 2014 at 7:15 PM, Jason Cooper <jason@lakedaemon.net> wrote:
> On Sun, May 11, 2014 at 08:52:12PM +0300, Teodora B=C4=83lu=C5=A3=C4=83 w=
rote:
>> On Sun, May 11, 2014 at 8:18 PM, Levente Kurusa <levex@linux.com> wrote:
>> > On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
>> >> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
>> >> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
>> >> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
>> >> > > > All,
>> >> > > >
>> >> > > > I recently came across a patch series attempting to implement e=
ncoding
>> >> > > > kernel oops into a QR code [1].  The QR code is then dumped to =
the
>> >> > > >
>> >> > > > framebuffer.  The QR code is a URL of the form:
>> >> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
>> >> > > >
>> >> > > > This proposal is interesting because it fundamentally changes t=
he way
>> >> > > > users report bugs to the kernel community.  First and foremost,=
 it makes
>> >> > > > it much easier.
>> >> > > >
>> >> > > >   1) oops occurs
>> >> > > >   2) user pulls out phone, scans QR code
>> >> > > >       - at this point, the oops is recorded on the server.  Not=
hing more
>> >> > > >         is required of the user.
>> >> >
>> >> > To be precise, most scanners don't automatically open the links
>> >> > found in QR codes and hence a tap/click from the user is required. =
:-)
>>
>> That's correct, you still need a click, so maybe a special Android app
>> could do the work so you don't need to turn the compressed oops into
>> base64.
>
> I'd like the URL to be valid (meaning base64 the compressed data) so
> that we can get the data to the kernel.org server as easily as possible.
> Making the app a requirement for reporting is too onerous for
> non-developers.  I see no reason we can't link to (Open in/Install) it
> on the webform though.

So from what I can understand, the QR code has an URL that has the
base64 of the compressed Oops message. Right? I see three problems
with this approach:

- base64 adds about 33% overhead (it's turning 3 octets into 4 encoded
characters + padding). One issue with QR codes is that they have a
limited amount of characters they can hold so that's why I do the
compression in the first place
- besides doing compression in a kernel that's had issues, you add the
base64 encoding inside the kernel
- you would still use a device with a camera (smartphone, tablet) to
scan the QR from the framebuffer, so basically that means an app,
right? What is the point of doing the URL validation inside the kernel
when an app can do that? It doesn't add to the difficulty of sending
the Oops to kernel.org (just one button away)

>
> I see your app as a great tool for people developing the kernel or
> curious about what happened, but there will be a significant number of
> users who don't develop (possibly anything) who won't go to the effort
> to install an app just to help us out.  Knowing how many of those folks
> are affected by the bug is, imho, a very important data point when
> triaging bugs.

Am I missing something here? You still have to scan the QR, right?...
A significant number of users won't have access to the framebuffer to
scan it - the Oops is dumped to the console or inside the
/var/log/dmesg, so the main target is geeky developer people.

>
> Even though these 'users' don't talk on lkml, they *do* exist.  And they
> say mean things like "Linux crashes on my $LAPTOP, it sucks."  I'd rather
> not have to get a facebook account to learn that. :)
>
> thx,
>
> Jason.
