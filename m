Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD8C3950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:16:53 +0000 (UTC)
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E58492B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:16:52 +0000 (UTC)
Received: by mail-pa0-f47.google.com with SMTP id fi15so12642282pac.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 11:16:52 -0700 (PDT)
Date: Wed, 27 Jul 2016 11:17:06 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20160727111706.788fefeb@xeon-e3>
In-Reply-To: <20160727140406.GP4541@io.lakedaemon.net>
References: <20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<20160727140406.GP4541@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Signature management - keys,
 modules, firmware, was: Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 27 Jul 2016 14:04:06 +0000
Jason Cooper <jason@lakedaemon.net> wrote:

> Hi David,
> 
> On Tue, Jul 26, 2016 at 03:42:18PM +0100, David Woodhouse wrote:
> > On Sat, 2016-07-16 at 01:52 +0100, Mark Brown wrote:  
> > > On Fri, Jul 15, 2016 at 03:57:51PM -0400, Mimi Zohar wrote:
> > >   
> > > > Oops, "Signature management - keys, modules, firmware" was a
> > > > suggestion from last year, but in my opinion still very apropos.  
> > > 
> > > Yup, definitely - especially with secure boot starting to firm up on
> > > the ARM side there's a bunch more interest in it from more embedded
> > > applications.  
> > 
> > Are we going to propose this again "formally" (i.e. sufficiently
> > clearly that the committee take note and consider it)?  
> 
> $subject modified.
> 
> > If so, I would also be keen to participate.  
> 
> Myself as well.  I've often wondered about devicetree signing.  Since it
> needs to be modified by the bootloader in a lot of cases (RAM size,
> cmdline, etc), but a malicious modification would be to remove the TPM
> node. :-)

I am interested in this as well because of issues in creating secure guests.
