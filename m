Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7AD2C955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 14:04:12 +0000 (UTC)
Received: from pmta2.delivery5.ore.mailhop.org
	(pmta2.delivery5.ore.mailhop.org [54.186.218.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CBA9186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 14:04:11 +0000 (UTC)
Date: Wed, 27 Jul 2016 14:04:06 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160727140406.GP4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469544138.120686.327.camel@infradead.org>
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [TECH TOPIC] Signature management - keys, modules,
 firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi David,

On Tue, Jul 26, 2016 at 03:42:18PM +0100, David Woodhouse wrote:
> On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:
> > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
> > 
> > > Oops, "Signature management - keys, modules, firmware" was a
> > > suggestion from last year, but in my opinion still very apropos.
> > 
> > Yup, definitely - especially with secure boot starting to firm up on
> > the ARM side there's a bunch more interest in it from more embedded
> > applications.
> 
> Are we going to propose this again "formally" (i.e. sufficiently
> clearly that the committee take note and consider it)?

$subject modified.

> If so, I would also be keen to participate.

Myself as well.  I've often wondered about devicetree signing.  Since it
needs to be modified by the bootloader in a lot of cases (RAM size,
cmdline, etc), but a malicious modification would be to remove the TPM
node. :-)

thx,

Jason.
