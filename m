Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20C3CAAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:25:11 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 475F5251
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 16:25:10 +0000 (UTC)
Message-ID: <55A7DAD8.2080902@sonymobile.com>
Date: Thu, 16 Jul 2015 09:24:56 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
References: <20150708114011.3a1f1861@noble>	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>	<20150716094125.16cdda73@lwn.net>	<55A7D73F.4020105@sonymobile.com>
	<20150716121620.65ce6daa@gandalf.local.home>
In-Reply-To: <20150716121620.65ce6daa@gandalf.local.home>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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



On 07/16/2015 09:16 AM, Steven Rostedt wrote:
> On Thu, 16 Jul 2015 09:09:35 -0700
> Tim Bird <tim.bird@sonymobile.com> wrote:
> 
>> Here's just an anecdote to support this.  There's a highly qualified 
>> developer at Sony I was talking to this week, who said that when he
>> sees a bug in the mainline kernel, he usually just ignores it because
>> the hassle-factor of submitting a patch is too high.
> 
> Ouch! But that's still no excuse to ignore it. There should be no
> hassle factor in reporting a bug. Sending a patch along with it is a
> plus. It at least demonstrates what is wrong. Now it may be a different
> matter if you want your patch to make it into the kernel.
> 
> I've sent hundreds of patches to different subsystem maintainers (and
> even Linus), where the patch was mostly used to show where the bug was,
> and my version of the fix, but the final fix was authored by someone
> else with just a Reported-by contributed to me. I'm fine with that, but
> others may not be.
> 
> I heard that IBM once had a method where if you submitted a change, and
> that change made it into kernel, even if the final change was not
> authored by you, you still got credit for it. That's a fabulous way of
> looking at contributions and giving credit to your employees.

That's really good feedback.  I've often assumed that if you saw something
that needed fixing, you had a responsibility to properly format a patch
so as not to burden the maintainer.  I've labeled my own "best-effort,
but-probably-not-mainlinable" patches as [RFC PATCH..].  Would it be
worth having a convention for that sort of thing?

In other contexts, there have been suggestions that even known-to-be-unnacceptable
patches be submitted to lkml, just so there's a public record of some driver,
feature extension or workaround, that people can evaluate or fix up later.
What do people think of this (if they were marked as such)?
 -- Tim
