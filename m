Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55677D90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 20:19:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0193.hostedemail.com
	[216.40.44.193])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id AE6411DE98
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 20:19:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 1381118065957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 20:12:30 +0000 (UTC)
Message-ID: <4a97926d76be9382051f438c4254cb534105c48b.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Dan Williams
	<dan.j.williams@intel.com>, Ben Dooks <ben-linux@fluff.org>
Date: Thu, 15 Nov 2018 12:12:24 -0800
In-Reply-To: <20181114213901.75768212@silica.lan>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225759959.2499188.5163439674278041458.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20181114213901.75768212@silica.lan>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: vishal.l.verma@intel.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org
Subject: Re: [Ksummit-discuss] [RFC PATCH 1/3] MAINTAINERS: Reclaim the P:
 tag for Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-11-14 at 21:39 -0800, Mauro Carvalho Chehab wrote:
> Em Wed, 14 Nov 2018 20:53:19 -0800
> Dan Williams <dan.j.williams@intel.com> escreveu:
> 
> > Fixup some P: entries to be M: and rename the remaining ones to 'E:' for
> > "entity". The P: tag will be used to indicate the location of a
> > Subsystem Profile for a given MAINTAINERS entry.
> > 
> > Cc: Joe Perches <joe@perches.com>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  MAINTAINERS |   18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 0abecc528dac..83b7b3943a12 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -76,7 +76,7 @@ trivial patch so apply some common sense.
> >  
> >  Descriptions of section entries:
> >  
> > -	P: Person (obsolete)
> > +	E: Entity (obsolete)
> 
> I don't like very much the idea of renaming it, but that's just my 2 cents.

I'd prefer just removing all the "P:" entries.

[]
> > @@ -13577,15 +13577,15 @@ F:	drivers/video/fbdev/simplefb.c
> >  F:	include/linux/platform_data/simplefb.h
> >  SIMTEC EB110ATX (Chalice CATS)
> > -P:	Ben Dooks
> > -P:	Vincent Sanders <vince@simtec.co.uk>
> > +E:	Ben Dooks
> > +M:	Vincent Sanders <vince@simtec.co.uk>
> >  M:	Simtec Linux Team <linux@simtec.co.uk>
> >  W:	http://www.simtec.co.uk/products/EB110ATX/
> >  S:	Supported

This is an ancient StrongARM based board that is shown as
discontinued on Simtec's website.
This is very obsolete and it's probably better to remove it.

> >  SIMTEC EB2410ITX (BAST)
> > -P:	Ben Dooks
> > -P:	Vincent Sanders <vince@simtec.co.uk>
> > +E:	Ben Dooks
> > +M:	Vincent Sanders <vince@simtec.co.uk>
> >  M:	Simtec Linux Team <linux@simtec.co.uk>
> >  W:	http://www.simtec.co.uk/products/EB2410ITX/
> >  S:	Supported
[]
> So, I guess this information is duplicated/obsoleted and could just 
> be removed.

This one is still listed as a production board on Simtec's website.
http://www.simtec.co.uk/products/EB2410ITX/

But I expect these 2410 boards aren't sold in any volume.
