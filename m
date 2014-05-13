Return-Path: <saharabeara@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DF07B96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:41:17 +0000 (UTC)
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8EA8E1FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 14:41:16 +0000 (UTC)
Received: by mail-ig0-f172.google.com with SMTP id uy17so5264913igb.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:41:15 -0700 (PDT)
MIME-Version: 1.0
Sender: saharabeara@gmail.com
In-Reply-To: <20140513112525.GB10733@kroah.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<20140512155320.GW12708@titan.lakedaemon.net>
	<20140512164921.GB3509@linux.com> <53710053.4040100@zytor.com>
	<CACV2jQDDu91ug=xeJ235W4jMunvfAY1rSXLjFGqw0hoTS4gmxg@mail.gmail.com>
	<20140513112525.GB10733@kroah.com>
Date: Tue, 13 May 2014 07:41:15 -0700
Message-ID: <CABe+QzALCqDLEJn9LawN2+SxEwzoNN5mYxY-Ko0z37oJowzYMA@mail.gmail.com>
From: Sarah A Sharp <sarah@thesharps.us>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 13, 2014 at 4:25 AM, Greg KH <greg@kroah.com> wrote:
> On Mon, May 12, 2014 at 08:50:27PM +0300, Teodora B=C4=83lu=C5=A3=C4=83 w=
rote:
>> On Mon, May 12, 2014 at 8:09 PM, H. Peter Anvin <hpa@zytor.com> wrote:
>> > On 05/12/2014 09:49 AM, Levente Kurusa wrote:
>> >>
>> >> What I wonder is how could we get the server back-end to not allow
>> >> the same oopses from bad users.
>> >>
>> >> Having a link like:
>> >>
>> >> oops.kernel.org/submit_oops.php?qr=3D$ENTROPY$BASE64DATA
>> >>
>> >> would mean that malicious users could edit the $ENTROPY part and
>> >> hence effectively report the same oops twice. Maybe some checksum?
>> >>  Or will it be too much for an already damaged kernel?
>> >>
>> >
>> > What did the old kerneloops system do for these kinds of things?
>> >
>> > Again, I'm concerned that a KS session for this will turn into an
>> > implementation discussion, which is better done by email.
>>
>> Well, the discussion got a bit technical, but as Josh said, I see no
>> point in doing that sort of talk (for technical discussion there's
>> always the RFC thread [0]). I think what would be of interest is the
>> way the workflow changes and the infrastructure you need to maintain.
>> For example, at the moment, can you actually send an Oops directly to
>> kernel.org by posting it in a query?
>
> That is what the kerneloops.org site is for, please use that for stuff
> like "automated oops reports", not bugzilla.kernel.org, as that is not
> going to work at all.

It's clear that by default, any oops reported through the QR code
generator should be reported to kerneloops.org.  Do you think there's
additional value in *optionally* allowing someone to file a bugzilla
report against that oops, or do you think there's no value in using
bugzilla.kernel.org at all for this project?

Sarah Sharp
