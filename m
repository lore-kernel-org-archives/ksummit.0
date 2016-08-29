Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8E949D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:21:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0183.hostedemail.com
	[216.40.44.183])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 958F5243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:21:40 +0000 (UTC)
Message-ID: <1472498497.3425.87.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Josh Triplett <josh@joshtriplett.org>, Dan Carpenter
	<dan.carpenter@oracle.com>
Date: Mon, 29 Aug 2016 12:21:37 -0700
In-Reply-To: <20160829191020.GB27600@cloud>
References: <1472330452.26978.23.camel@perches.com>
	<20160829190618.GF4180@mwanda> <20160829191020.GB27600@cloud>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2016-08-29 at 12:10 -0700, Josh Triplett wrote:
> On Mon, Aug 29, 2016 at 10:06:18PM +0300, Dan Carpenter wrote:
> > 
> > I would like a couple changes which you know already:
> > 
> > 1) Get rid of PREFER_ETHER_ADDR_COPY and similar because the people who
> > send checkpatch.pl fixes aren't qualified to say when it's legal or not
> > so they sometimes introduce bugs.
> I do think we should have *something* that catches such things.
> Perhaps not checkpatch.pl, though.  Perhaps a compiler plugin that
> generates additional warnings, and can perhaps use more global
> information to determine legality?

nit: validity rather than legality.

There are still rather a lot of these.

$ git grep -E "\bmem.*,\s*(ETH_ALEN|6)\s*\);" | wc -l
1776

Dunno if any of them are in performance sensitive
areas where it actually matters.

Someone, I forget who, had a concern about the
object being set possibly being in a struct where
it's possible for the alignment of the set object
to be altered by another change like adding a new
member.
