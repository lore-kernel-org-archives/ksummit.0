Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 174BB93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 13:47:25 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0010.hostedemail.com
	[216.40.44.10])
	by smtp2.linuxfoundation.org (Postfix) with ESMTP id 7FBF31DCB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 13:47:24 +0000 (UTC)
Date: Thu, 16 Jul 2015 09:47:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150716094720.2bf9f5ac@gandalf.local.home>
In-Reply-To: <20150716132551.GH4039@sirena.org.uk>
References: <20150708114011.3a1f1861@noble> <2879113.fraeuJIr2M@avalon>
	<20150709193718.GD9169@vmdeb7> <20150710143641.GW4341@mwanda>
	<20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
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

On Thu, 16 Jul 2015 14:25:51 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Wed, Jul 15, 2015 at 09:20:43PM -0400, Steven Rostedt wrote:
> > Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:
> 
> > > Another problem, when a newbie tries to move out of staging to some other
> > > subsystem he likes, the maintainer may not be that much responsive. Just
> > > for example, i submitted a patch on November, 2014 and I am yet to receive
> > > a reply or review to that and the patch was not a style correction patch.
> 
> > BTW, it should always be OK to ping the maintainer if they ignore a
> > patch. I believe one week is a good time to wait. And again in another
> > week if they still do not reply. I know a few maintainers that think if
> > they get to a patch that is old and the author never pinged them, they
> > think the author doesn't think that patch is too important and they
> > just delete it.
> 
> Please don't encourage people to send content free pings bit instead
> resend it - a content free ping mostly just adds to mail volume which is
> pretty much the original problem.  If the patch has actually been lost
> then a resend is going to be needed anyway and if not then it's mostly
> just adding to mail volume.  With a lot of mail clients (including mutt
> which I use) the nag will get threaded in with the original patch buried
> back in the mailbox and not even be seen if that's still sitting waiting
> for handling.

Well, then to each their own. I prefer the content free ping, because in
my mail client (claws), it brings the original patch up to the front
(my threading is to sort by latest email in the thread). A simple ping
will move their patch ahead of other patches that may have been sent
later, but are still in the abyss.

A resend will just be a duplicate in my inbox and it will confuse me
about why I have more than one of the same patch.

> 
> > I'm sure all maintainers are fine with a friendly ping after a week.
> > Don't send a ping before then, because maintainers are busy, and may
> > get annoyed by being too pushy.
> 
> Not me, they tend to just annoy me for the reasons above.  Resends are
> useful but just straight up pings not so much.

Then a simple reply to that content-free ping to tell the author what
you prefer. In fact, that's what I do when they ask me about it. I
sometimes even try to send a reply when I get the original patch
(privately to the author from my phone) that tells them to ping me in a
week if they don't hear back from me.

> 
> I'd say a couple of weeks is a better lower limit than a single week
> unless it's a very serious bugfix, a week could easily be a holiday or
> whatever and larger patches or patch serieses do take time to review.

The time length varies from person to person. Just let the author
know what you prefer. From developers I've talked to (including
myself), a week seems to be the norm to wait. Anything less is an
annoyance.

One of the issues with newcomers coming to development of the Linux
kernel, is that every maintainer is different. We should be trying
harder to let people know what we prefer. Every maintainer expects
something different, but it's up to the maintainer to explicitly let
others know what they want. You can't expect everyone to read your mind.

-- Steve
