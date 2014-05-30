Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9FBF6B24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 18:55:11 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7000020359
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 18:55:10 +0000 (UTC)
Date: Fri, 30 May 2014 14:55:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140530145508.0b3816d7@gandalf.local.home>
In-Reply-To: <5370FC94.5040806@zytor.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<20140512163643.GA3509@linux.com> <5370FC94.5040806@zytor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Mon, 12 May 2014 09:53:40 -0700
"H. Peter Anvin" <hpa@zytor.com> wrote:

> On 05/12/2014 09:36 AM, Levente Kurusa wrote:
> > 
> > If only, I had counted how many bad quality photos of people's
> > screens did I get so far. :-)
> > 
> 
> This is not at all surprising.
> 
> Keep in mind that the QR code stuff is only going to be helpful if it
> contains more information and/or decodes better than text screen photos.

What would be nice is if it recorded the first part of a bug oops, and
ignored the later part of the dmesg. You know, the important stuff that
scrolls off the console. I hate it when people send me the last oops
message that was caused by three oops messages that happened before it.

Pretty much every screen shot that I received was of an oops that was
caused by a prior oops and was deemed useless.

-- Steve
