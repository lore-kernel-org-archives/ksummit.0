Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81DCFB3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 23:49:39 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C441C11C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 23:49:38 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 08 Jul 2015 02:49:47 +0300
Message-ID: <2102387.OD8sBG4Eol@avalon>
In-Reply-To: <201507080121.41463.PeterHuewe@gmx.de>
References: <201507080121.41463.PeterHuewe@gmx.de>
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

Hi Peter,

On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:
> Hi,
> 
> In order to continue our traditions I would like to propose again the topic
> of recruitment, but this time not only limiting to the hobbyists market.
> 
> We are definitely short on reviewers and thus have mostly overloaded
> maintainers.

I was about to propose a related core topic.

The reviewing and maintainership process seems to have a hard time scaling to 
the amount of contributions we receive, to the point where even well known and 
respected kernel developers get discourages.

Quoting http://www.spinics.net/lists/cpufreq/msg10609.html,

--------------------------------
> I'm trying to convince management that one of the advantages
> of mainlining the port is that it is easier to switch to newer
> kernels. Do you agree with this assertion?

Yes and no.  If you can get stuff upstream, it should make things
easier.

The difficult bit - and time consuming bit - is getting code upstream.
Even in my position, I'd suggest allowing about five years for that
activity, and even then don't have expectations of getting everything
upstream.

Frankly now, my advice to people would be to just not bother, it's
*way* too much effort to get everything to an acceptable state,
especially if the SoC has no support what so ever.
--------------------------------

That's a very serious red warning in my opinion.

Throwing more maintainers, co-maintainers or sub-maintainers at the kernel 
won't magically solve this, as the more core developers a subsystem has the 
more difficult it will be for them to synchronize. I would like share 
experience about good practice rules that have proved to be effective.

> For testers it's usually even worse - how many patches are actually tested?
> Judging from what I read on LKML not that many.
> 
> So we should definitely discuss:
> - how can we encourage hobbyists to become regular contributors
> -- how to keep people interested, the drop-out rates are huge.

We can't keep people interested if even maintainers get discouraged. Solving 
(or at least relieving) that problem won't be enough to keep people 
interested, but it's a prerequisite in my opinion.

> - encourage regular contributors to become reviewers and testers
> - reviewers to become co-maintainers and finally maintainers (once the
> original maintainer is used up or moves up/on)
> 
> 
> e.g. I think in the TPM subsystem we finally reached a good status, coming
> from having no active maintainer to a having at least a part-time maintainer
> with a two steady and excellent reviewers which also test manually most of
> the stuff!
> 
> 
> 
> From the 4.1 kernel report by jon corbet:
> "over 60% of the changes going into this kernel passed through the hands of
> developers working for just five companies. This concentration reflects a
> simple fact: while many companies are willing to support developers working
> on specific tasks, the number of companies supporting subsystem maintainers
> is far smaller. Subsystem maintainership is also, increasingly, not a job
> for volunteer developers.."
> 
> 
> -> How do we get companies to actively sponsor subsystem maintainership - if
> only at driver or subsubsystem level.
> e.g.: I unfortunately failed at that with my company :/
> 
> -> Or how can we raise more funds to sponsor subsystem maintainer ship e.g.
> via Linux Foundation.
> (so that the maintainer atleast can buy some test-hardware)
> 
> 
> 
> Also I would be interested in:
> - What are the effects of the Eudyptula Challenge? how many people are still
> actively contributing (more than whitespace changes)
> - What are the effects of the OutReachforWomen Program? how many people are
> still actively contributing (more than whitespace changes)
> 
> 
> 
> 
> Nominations:
> Jason Cooper           (auto-nominated), last years 'speaker'
> Greg KH				please... ;-)
> Little Penguin		Eudyptula
> Sarah Sharp 			OPW
> Peter Huewe			Caught between hobbyist maintainer and sponsored dev.
> 					Wants to attend a KS :)

-- 
Regards,

Laurent Pinchart
