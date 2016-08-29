Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A87E360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:08:22 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDC30235
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:08:21 +0000 (UTC)
Date: Mon, 29 Aug 2016 12:08:16 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20160829190816.GA27600@cloud>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<3908561D78D1C84285E8C5FCA982C28F3A1B3222@ORSMSX114.amr.corp.intel.com>
	<1472493700.3425.67.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472493700.3425.67.camel@perches.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 29, 2016 at 11:01:40AM -0700, Joe Perches wrote:
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
> 
> Simple things like:
> 
> 			if (longish_identifier != AN_EVEN_LONGER_DEFINED_CONSTANT_VALUE)
> and
> 			if (some_pointer->member[index].another_member >> shift_constant)
> 
> shouldn't really ever be broken into multiple lines,

Agreed.

Honestly, I almost never see a line that should break solely based on
length.  Almost any line that makes sense to break at a given point
would make sense to break at that point even with a target line length
of 200.

For instance:

			if (an_interesting_function(x) == TARGET_VALUE_FOR_X
			    || an_interesting_function(y) == TARGET_VALUE_FOR_Y) {

That line break makes sense whether you want to break lines at 80
characters, 100, or 800.  (You could argue about
before-or-after-operator, or about line alignment.)  In almost no
circumstances would you want to also break around the '==', even though
that second line takes up 82 characters.
