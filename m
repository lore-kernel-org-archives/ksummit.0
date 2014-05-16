Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06C704D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:18:15 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 010B81FB58
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:18:13 +0000 (UTC)
Date: Thu, 15 May 2014 23:18:10 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: josh@joshtriplett.org
Message-ID: <20140516031810.GW27822@titan.lakedaemon.net>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<20140513162844.GA1647@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140513162844.GA1647@cloud>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 13, 2014 at 09:28:44AM -0700, josh@joshtriplett.org wrote:
...
> 2) We could improve the experience for patch submitters without
> necessarily pushing changes to maintainer workflows.  I wonder if we
> could do a better job of providing automated tools that make life easier
> for maintainers and patch submitters?  For instance, what about having
> easy-to-enable git hooks on git.kernel.org similar to those Andrew and
> Greg use, notifying the patch submitter when a maintainer merges their
> patch?  Maintainers could opt into those hooks specifically for
> whichever repository has their "will go upstream eventually" branches,
> and supply a short description of where patches typically flow from
> their tree so submitters know what to expect.
> 
> Would that be useful?  Would maintainers want it?  What properties would
> it need to have?  Could kernel.org support that?  And would anyone be
> interested in helping to write it?  (I'm willing to help, given answers
> to those questions to make sure it'll actually get *used*.)

tip-bot might be a good place to start:

  http://git.zytor.com/linux/tip-bot.git

thx,

Jason.
