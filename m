Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0535671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 17:16:02 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0028.hostedemail.com
	[216.40.44.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B79315B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 17:16:00 +0000 (UTC)
Message-ID: <1472404557.26978.84.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Date: Sun, 28 Aug 2016 10:15:57 -0700
In-Reply-To: <20160828023807.GC19088@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:

> Would you agree that by default we shouldn't show anything that's
> not an error/defect?

Not particularly, no.

> That doesn't deal with newlines people add to hide the 80 character stuff, nor it
> deals with the "harder to read" part.

Harder to read is almost all habituation.

80 columns is simply silly when dealing with either
long identifiers or many levels of indentation.

One thing that 80 column limit does do is encourage
shorter identifiers and fewer levels of indentation.

Generally, both of those are good things.

> > > By default you should only get the most critical warnings we have in the
> > > kernel like missing S-O-B or corrupt patch.
> > I don't think so, but if you do, add a filter for ERROR only.
> I could, but the problem is the people who see the default output as "holy".

Personally, I think the "my first kernel patch" beginners were
overly encouraged to produce these checkpatch whitespace type
changes by a couple things:

o Greg KH's TuxRadar article back in 2010
  http://www.tuxradar.com/content/newbies-guide-hacking-linux-kernel
o The Eudyptula Challenge
  http://eudyptula-challenge.org/

I don't know if the Eudyptula scripts are specific to
drivers/staging and most of those beginners haven't read his
email from 2015 that essentially says "don't do that" on
anything other than drivers/staging.

https://lists.kernelnewbies.org/pipermail/kernelnewbies/2015-July/014699.html

Outreach is hard.  Those efforts were perhaps worthwhile, but
has even a single productive kernel developer been produced
from one of those two outreach efforts?

> > > 2. A "who wrote these rules?": there seems to be a disconnect between the rules
> > > checkpatch is trying to enforce and the accepted coding style enforced by
> > > maintainers. 
> > Name some please.
> Well look at the git commit id SHA1 length thingie for example (GIT_COMMIT_ID).
> checkpatch says 12 chars minimum, but as far as I can tell Linus and Greg didn't get the memo.

That bit is in Documentation/SubmttingPatches

12 was Linus' length after the original 7 was too short.
12 will still be long enough for a few years yet.
https://lkml.org/lkml/2010/10/28/287

> > I think almost all of it is regexes and most people
> > aren't very good at those.
> > 
> > So it wouldn't matter if it was perl or python.
> > 
> > spatch isn't the right tool.
> > 
> > What would you suggest instead?
> This is a good topic to talk about, making checkpatch accessible to us
> commoners could be useful, we just need to figure out how.

I'm not sure that matters much at all.

I'm sure if you tried, you could produce that
"ERRORS" only patch for checkpatch.

There would still be some issues categorizing the
various tests at the appropriate level to taste.
