Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49A399F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:23:10 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id EB70115A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:22:43 +0000 (UTC)
Date: Fri, 10 Jul 2015 16:22:36 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710162236.GV23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710123233.GQ23515@io.lakedaemon.net>
	<20150710155403.GJ111846@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710155403.GJ111846@vmdeb7>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 10, 2015 at 08:54:03AM -0700, Darren Hart wrote:
> On Fri, Jul 10, 2015 at 12:32:34PM +0000, Jason Cooper wrote:
> > What we're also looking at here is adjusting the wetware / software
> > boundary.  The goal of checkpatch is the same: offload maintainer brain
> > time onto automated software.  But it's a double-edged sword.  Now we
> > see checkpatch-only patches.  Was it a net-gain for maintainer relief?
> > Or simply a shift in the type of annoyances?
> > 
> > I don't know.  The lesson learned from checkpatch and other tools
> > shouldn't be lost on any effort we try today.  That's not to say we
> > shouldn't try.  Rather, we should try new processes and tooling, *and*
> > establish sane goals for the same.  "After 1 year of autotest@vger,
> > we'll poll the maintainers and ask if they noticed a difference."  This
> > implies some sort of tag system so maintainers can trivially tell when a
> > patch has cleared autotest@vger.  Maybe:
> > 
> > Autotest-passed: https://autotest.kernel.org/2015/07/10/<cookie>
> > 
> > Depending on the proposed system, the goal can be more quantifiable, if
> > needed.
> 
> I was going to suggest pretty much the same thing.
> 
> > 
> > > Josh suggests that we should provide a service that people could push
> > > code to and 'get automated feedback on what needs fixing'... but isn't
> > > that what checkpatch was for? OK, a local tool can't cross-compile it
> > > for you on every platform we support, but it can do a lot of stuff
> > > short of that.
> > > 
> > > I do like the idea of a 'test' mailing list which receives patches and
> > > checks them for corruption though.
> > 
> > Agree.  And in sensible cases, it can suggest a fix.  e.g. "Missing
> > S-o-b, please read the DCO [link]. If you agree, add your S-o-b to the
> > end of the commit message.  'git commit -s ...' will add this for you."
> > 
> 
> I presume this would go back to the list and the submitter. I can see arguments
> for and against including anyone else on Cc from the original patch. What did
> you have in mind?

List and submitter.  That way, receiving parties are all opted-in to the
noise.

thx,

Jason.
