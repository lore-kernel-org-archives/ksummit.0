Return-Path: <atull@opensource.altera.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5EC3409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:53:51 +0000 (UTC)
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0088.outbound.protection.outlook.com [157.56.110.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 108E31BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:53:51 +0000 (UTC)
Date: Tue, 28 Jul 2015 12:34:23 -0500
From: atull <atull@opensource.altera.com>
To: Christoph Lameter <cl@linux.com>
In-Reply-To: <alpine.DEB.2.11.1507281055450.16348@east.gentwo.org>
Message-ID: <alpine.DEB.2.02.1507281233290.7196@linuxheads99>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
	<alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
	<20150728142315.GA17178@amd>
	<alpine.DEB.2.11.1507281055450.16348@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Cc: Pavel Machek <pavel@denx.de>, Alan Tull <atull@altera.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 28 Jul 2015, Christoph Lameter wrote:

> On Tue, 28 Jul 2015, Pavel Machek wrote:
> 
> > Which tools would be that?
> 
> FPGA firmware upload. Up/down. State determinations etc? Administrative
> tasks first. Lets do easy low hanging fruit first.

Exactly what my patchset is intended to do.

Alan Tull

> 
> That way one can write scripts / tools to administer FPGAs from different
> manufacturers with the same commands.
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
