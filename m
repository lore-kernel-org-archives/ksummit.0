Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03604AFE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 16:10:12 +0000 (UTC)
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6B125200A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 16:10:11 +0000 (UTC)
Received: by mail-ve0-f177.google.com with SMTP id db11so2652224veb.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 09:10:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53739333.30108@zytor.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 14 May 2014 09:09:50 -0700
Message-ID: <CALCETrURsyMzdamLDb7MwwWKCWBS+FRxxfkLXMxpy-M06GPwOQ@mail.gmail.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Anton Arapov <arapov@gmail.com>, Sarah A Sharp <sarah@minilop.net>
Subject: Re: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 14, 2014 at 9:00 AM, H. Peter Anvin <hpa@zytor.com> wrote:
> On 05/13/2014 12:08 AM, Josh Triplett wrote:
>>
>> Many users will already have a QR-code scanning app installed, and such
>> apps always support loading URLs in a browser.
>>
>
> Let me disavow you of the notion that stock scanning apps handle large
> QR symbols.

zxing can handle the bloody enormous QR code here:

http://en.wikipedia.org/wiki/File:Qr-code-ver-40.png

I'll admit that it took a while to find exactly the right camera
position to get it to focus well enough :)

Anyway, point taken: it probably pays to keep the total size of this
thing under control.

--Andy
