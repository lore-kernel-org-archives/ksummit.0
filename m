Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C229AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:11:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB856112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 23:11:49 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:11:45 -0700
From: Darren Hart <dvhart@infradead.org>
To: josh@joshtriplett.org
Message-ID: <20150710231145.GS111846@vmdeb7>
References: <2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<20150710205606.GC10533@cloud>
	<1436562223.24408.55.camel@infradead.org>
	<20150710210750.GF10533@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710210750.GF10533@cloud>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Fri, Jul 10, 2015 at 02:07:50PM -0700, Josh Triplett wrote:
> On Fri, Jul 10, 2015 at 10:03:43PM +0100, David Woodhouse wrote:
> > On Fri, 2015-07-10 at 13:56 -0700, josh@joshtriplett.org wrote:
> > > On Fri, Jul 10, 2015 at 09:00:12PM +0100, David Woodhouse wrote:
> > > > And then I can *read* them before sending them, which is good practice
> > > > anyway. Am I the only person who often finds a final minor nit with
> > > > their own patch, in that final read-through just before hitting 'send'
> > > > on an email?
> > > 
> > > Nope, I do that too.  (Though then I have to resist the temptation to
> > > just fix it in the mailer rather than fixing the original and
> > > regenerating.)
> > 
> > Oh, I *always* just fix it in the mailer, even when the numbers in the
> > hunk headers need to be fixed up :)
> 
> I've occasionally fixed up actual typos in the patch content, though
> never changing the number of lines.  The danger there is what happens
> when you need to prepare v(N+1).  If you're going to need to change it
> in git anyway, you might as well go ahead and do so and regenerate the
> series.
> 
> I just wish I had a more satisfactory method of associating a cover
> letter with a series *in git*, such that format-patch could emit a
> non-placeholder cover letter.

I use my tags for a similar purpose, combined with a git-pdx-pull-request.sh
script which generates the cover letter. And now that I bisected the missing
header, vger will actually deliver it to the list! \o/

-- 
Darren Hart
Intel Open Source Technology Center
