Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE684282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 18:42:30 +0000 (UTC)
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 207A2178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 18:42:30 +0000 (UTC)
Received: by obre1 with SMTP id e1so74826907obr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 01 Aug 2015 11:42:29 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <1438453195.2182.16.camel@HansenPartnership.com>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<55A7D73F.4020105@sonymobile.com>
	<20150716121620.65ce6daa@gandalf.local.home>
	<55A7DAD8.2080902@sonymobile.com>
	<20150716125216.0d457104@gandalf.local.home>
	<55BB7397.3090407@atmel.com>
	<1438352566.2179.4.camel@HansenPartnership.com>
	<CAMuHMdUu4_PsiCcz0KX=jw7W7gHPD1WGouYiBg1Fw=L_aFoeCg@mail.gmail.com>
	<1438453195.2182.16.camel@HansenPartnership.com>
Date: Sat, 1 Aug 2015 20:42:29 +0200
Message-ID: <CAMuHMdX4siOnhTOD=NYa+V35TDZEuMT7q+jpWo8mz9XsgtNB5w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Aug 1, 2015 at 8:19 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Sat, 2015-08-01 at 20:16 +0200, Geert Uytterhoeven wrote:
>> On Fri, Jul 31, 2015 at 4:22 PM, James Bottomley
>> <James.Bottomley@hansenpartnership.com> wrote:
>> > On Fri, 2015-07-31 at 15:09 +0200, Nicolas Ferre wrote:
>> >> Le me just react on the "no attachment" statement:

>> Adding inline review comments is something different.
>
> Every mail tool I know can quote from attachments.  One of the side
> benefits is that reply-all doesn't, so you actually have to quote the
> section you're commenting on instead of, say, doing reply-all to a 1,000
> line patch with a single comment on line 745, which is a real pain for a
> maintainer ...

So I have to manually _add_ all sections I want to comment on (and add "> "
markers), instead of _deleting_ all sections I don't want to comment on?

Looks suitable for patches which require a single comment only...
(Which is usually not the case for patches sent as attachments ;-)

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
