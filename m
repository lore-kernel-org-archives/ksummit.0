Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6B52D979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:46:18 +0000 (UTC)
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EFDCE20297
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:46:17 +0000 (UTC)
Received: by mail-qc0-f180.google.com with SMTP id i17so8076746qcy.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:46:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399914053.4337.21.camel@jlt4.sipsolutions.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<20140512163643.GA3509@linux.com>
	<1399914053.4337.21.camel@jlt4.sipsolutions.net>
Date: Mon, 12 May 2014 20:46:17 +0300
Message-ID: <CACV2jQBJS_rm+1OFyp=BusbmM=KGu+JbCBOuJ=B_pZt0U6iF3Q@mail.gmail.com>
From: =?UTF-8?B?VGVvZG9yYSBCxINsdcWjxIM=?= <teobaluta@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset=UTF-8
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 8:00 PM, Johannes Berg
<johannes@sipsolutions.net> wrote:
> On Mon, 2014-05-12 at 18:36 +0200, Levente Kurusa wrote:
>
>> > I'd like the URL to be valid (meaning base64 the compressed data) so
>> > that we can get the data to the kernel.org server as easily as possible.
>> > Making the app a requirement for reporting is too onerous for
>> > non-developers.  I see no reason we can't link to (Open in/Install) it
>> > on the webform though.
>>
>> +1, the app is a good idea but shouldn't at all be mandatory. If we
>> add that as a requirement people might just get lazy and don't
>> download the app at which point we lose the report. Of course,
>> adding the app as a plus is a great idea, since then the geeky people
>> can take a look at what really happenned if the QR code has messed up
>> their stack traces or whatever they see on their screen.
>
> If you have a well-known URL prefix then as far as I know you can (at
> least on Android) still have a URL and invoke an app if it's installed,
> via the intents system. You could thus still have a URL that displays
> the information, or a local app that does it and can do more.

That's right.You can select to see the text of the Oops or just send
it to a predefined server. :)

>
> johannes
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
