Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 933E29FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 08:19:59 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 59BDE115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 08:19:58 +0000 (UTC)
Message-ID: <1436689193.2344.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Sun, 12 Jul 2015 09:19:53 +0100
In-Reply-To: <20150712051958.GA15346@x>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
	<1436518482.2393.19.camel@HansenPartnership.com>
	<20150712020235.GB24356@wfg-t540p.sh.intel.com>
	<20150712051958.GA15346@x>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Sat, 2015-07-11 at 22:19 -0700, Josh Triplett wrote:
> On Sun, Jul 12, 2015 at 10:02:35AM +0800, Fengguang Wu wrote:
> > On Fri, Jul 10, 2015 at 09:54:42AM +0100, James Bottomley wrote:
> > > On Thu, 2015-07-09 at 14:00 -0700, josh@joshtriplett.org wrote:
> > > > On Thu, Jul 09, 2015 at 10:38:30PM +0200, Luis R. Rodriguez wrote:
> > > > > On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > > > > > Bonus if this is also wired into the 0day bot, so that you also find out
> > > > > > if you introduce a new warning or error.
> > > > > 
> > > > > No reason to make bots do stupid work, if we really wanted to consider
> > > > > this a bit more seriously the pipeline could be:
> > > > > 
> > > > >   mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot
> > > > 
> > > > That would effectively make the bot duplicate part of 0-day.  Seems
> > > > easier to have some way to tell 0-day "if you see obvious procedural
> > > > issues, don't bother with full-scale testing, just reject".
> > > 
> > > We already have this with the 0 day project.  The only difference being
> > > the patch has to be in a tree for it to get tested.  It's not impossible
> > > to imagine a bot that would pick up a patch, apply it (giving automated
> > > rejects as email replies), and leave it in for the 0 day tests to
> > > assess ... sort of like patchwork but with an automated tree build.   We
> > > could periodically throw away the tree (say weekly) because the job of
> > > the bot would be to find initial rejects rather than build a workable
> > > tree.
> > 
> > That's a good point. Up to now 0-day only takes care of code in git trees.
> > We've collected 500+ developers' git trees so far, however their coverage
> > looks not enough -- there are 3000+ kernel developers in last year's git log.
> > 
> > To achieve 100% code coverage, we'll also need to watch emails in the
> > kernel mailing lists, auto convert patch series there to git branches
> > for 0-day and other testers, and auto reply results to the original
> > mailing list's email thread.
> > 
> > That would be a natural fit for the email based patch submission path
> > and review process.
> > 
> > The potential problem, however, is "git-am to which base branch?"
> > That's where it may go messy.
> 
> Patch submitters should be making it clear to what tree their patch
> applies, preferably using an unambiguous tag in the mail subject.  In
> the absence of such a tag, try it against torvalds/linux.git and
> linux-next.git, and then give up and tell the submitter to specify what
> their patch applies to.

To be honest, the mailing list it's sent to mostly identifies which tree
it should be going in.  There's difficulty over whether the for next or
for current branches ... but we have that today as well.

James
