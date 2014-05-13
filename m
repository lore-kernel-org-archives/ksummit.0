Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E19C47B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:06:57 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 66F9920212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:06:57 +0000 (UTC)
Date: Tue, 13 May 2014 20:06:50 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: josh@joshtriplett.org
In-Reply-To: <20140513162844.GA1647@cloud>
Message-ID: <alpine.LNX.2.00.1405132005220.16459@pobox.suse.cz>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<20140513162844.GA1647@cloud>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 13 May 2014, josh@joshtriplett.org wrote:

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

Good idea! I'd actually be very happy user of facility if it's provided by 
kernel.org.

Specifying a regexp on a branch name for which the automated e-mails 
should be sent out would suit my needs completely.

Thanks,

-- 
Jiri Kosina
SUSE Labs
