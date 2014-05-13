Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 472BB711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:53:35 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A05FB2024D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 19:53:34 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 13 May 2014 21:53:27 +0200
Message-ID: <5271808.hXAVohG7ju@wuerfel>
In-Reply-To: <20140513193146.GR12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<4341089.iLfxP0nJG8@wuerfel> <20140513193146.GR12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 13 May 2014 20:31:46 Mark Brown wrote:
> 
> I'd heard mutterings like that from elsewhere (I don't know anything
> about AMD's thoughts), and of course there's nothing stopping ARM people
> just picking up the out of tree ACPI stuff and using that if they decide
> they want to work that way.

Sure, anyone can do that, but to me that falls into the same category
as using board files, unreviewed DT bindings or FEX: do what makes you
happy in a private embedded kernel fork, but don't expect that to get
merged upstream.

	Arnd
