Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1B119AE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:10:10 +0000 (UTC)
Message-ID: <53710053.4040100@zytor.com>
Date: Mon, 12 May 2014 10:09:39 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Levente Kurusa <levex@linux.com>, Jason Cooper <jason@lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>	<20140511162918.GA2527@linux.com>
	<1995824.rdvEX5SOIt@avalon>	<20140511171824.GB2527@linux.com>	<20140512155320.GW12708@titan.lakedaemon.net>
	<20140512164921.GB3509@linux.com>
In-Reply-To: <20140512164921.GB3509@linux.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/12/2014 09:49 AM, Levente Kurusa wrote:
> 
> What I wonder is how could we get the server back-end to not allow 
> the same oopses from bad users.
> 
> Having a link like:
> 
> oops.kernel.org/submit_oops.php?qr=$ENTROPY$BASE64DATA
> 
> would mean that malicious users could edit the $ENTROPY part and 
> hence effectively report the same oops twice. Maybe some checksum?
>  Or will it be too much for an already damaged kernel?
> 

What did the old kerneloops system do for these kinds of things?

Again, I'm concerned that a KS session for this will turn into an
implementation discussion, which is better done by email.

	-hpa
