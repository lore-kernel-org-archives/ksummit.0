Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C632C483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:08:28 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1E5C2BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 21:08:27 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 29 Aug 2016 23:07:59 +0200
References: <1472330452.26978.23.camel@perches.com>
	<3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
	<1472493700.3425.67.camel@perches.com>
In-Reply-To: <1472493700.3425.67.camel@perches.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201608292307.59835.arnd@arndb.de>
Cc: Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>, Joe Perches <joe@perches.com>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 29 August 2016, Joe Perches wrote:
> On Mon, 2016-08-29 at 17:46 +0000, Luck, Tony wrote:
> > > 
> > > 80 columns is simply silly when dealing with either
> > > long identifiers or many levels of indentation.
> > > 
> > > One thing that 80 column limit does do is encourage
> > > shorter identifiers and fewer levels of indentation.
> > > 
> > > Generally, both of those are good things.
> > I think the main complaint with the limit is that people fix it by simply
> > breaking the long line, which often makes for less readable code.
> > 
> > Perhaps there would be less pushback on this if checkpatch also
> > complained about clumsily broken long lines and offered the advice
> > to restructure the code with helper functions etc. to avoid deep
> > indentation?
> 
> It suggests that already for 6+ leading tabs, but some more
> intelligence for nominally ugly added line breaks would
> definitely help.
> 
> Using longish simple identifiers or multiple dereferences
> can make the line breaks at 80 columns silly.

My preferred personal guideline for the maximum indentation is
the area that a function takes up in the editor. It's sometimes
ok to have really long functions (hundreds of lines), but only
with one or two levels of indentation. It's also sometimes ok
to have five or six levels of intendation, but only if the
function is really short and you can see immediately how
it works.

Having a long function with multiple nested loops and conditions
is almost always a problem for readability, and we should be
able to detect this programatically if we want to.

There are more accurate ways to tell if you are getting
too complex (e.g. CONFIG_GCC_PLUGIN_CYC_COMPLEXITY), but that
becomes harder to warn about.

	Arnd
