Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15D8993E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:44:18 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33BA17C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:44:17 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 13 Jul 2015 00:44:34 +0300
Message-ID: <2035022.mDYmWm7DKc@avalon>
In-Reply-To: <alpine.DEB.2.10.1507091933550.2532@hadrien>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150709231131.GA4516@cloud>
	<alpine.DEB.2.10.1507091933550.2532@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thursday 09 July 2015 19:35:39 Julia Lawall wrote:
> On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
> > On Thu, Jul 09, 2015 at 05:24:06PM -0400, Julia Lawall wrote:
> >> On Thu, 9 Jul 2015, josh@joshtriplett.org wrote:
> >>> On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> >>>> On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> >>>>> Bonus if this is also wired into the 0day bot, so that you also
> >>>>> find out if you introduce a new warning or error.
> >>>> 
> >>>> No reason to make bots do stupid work, if we really wanted to
> >>>> consider this a bit more seriously the pipeline could be:
> >>>>   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
> >>> 
> >>> That would effectively make the bot duplicate part of 0-day.  Seems
> >>> easier to have some way to tell 0-day "if you see obvious procedural
> >>> issues, don't bother with full-scale testing, just reject".
> >> 
> >> Not sure to understand.  Isn't it better to have the most feedback
> >> possible?
> > 
> > If 0-day has enough bandwidth, sure.  However, if this is going to
> > encourage a large number of new contributors to quickly iterate a pile
> > of patches, many of which are likely to have basic procedural issues in
> > the first few iterations, then that may waste quite a lot of build time
> > in 0-day.
> 
> My understanding was that there were plenty of computational resources
> available.  I would think that a new contributor would like the most
> assurance possible that his next attempt would be successful, and thus
> would prefer to have all the information at once.

I can't help feeling we're mixing two issues here.

The first topic we're trying to address is recruitment. From that point of 
view, giving as much feedback as possible to newcomers is good as long as we 
can make the automatic feedback constructive. An automated reply along the 
lines of

"You have tried to send a patch through e-mail to the foo@v.k.o mailing list. 
We have detected that your e-mail includes HTML content. This is not allowed 
for the reasons explained at [...]. Please configure your e-mail client to 
send plain text only and resend the patch. Instructions on how to do so far 
popular e-mail clients can be found at [...]"

would be useful. On the other hand, an automated reply from a build bot that 
just splits errors back without taking the newcomer by the hand will scare 
people off (at this point I can't help but quote the following C++ compiler 
error message from [1]:

Syntax error: unmatched thing in thing from std::nonstd::_ _
map<_Cyrillic, _$$$dollars>const basic_string< epic_
mystery,mongoose_traits &lt; char>, _ _default_alloc_<casual_
Fridays = maybe>>)

This could be considered as some form of a selection process, but we don't 
want to make it unnecessarily painful.

The second issue we're trying to address here is how to prevent maintainers 
overloading caused by newcomers mistakes. This is certainly a valuable effort, 
and even more so if our recruitment effort becomes successful, but I see it 
more as a necessary consequence of improved recruitment. It would be a shame 
if it raised the barrier to entry for kernel contributions.

-- 
Regards,

Laurent Pinchart
