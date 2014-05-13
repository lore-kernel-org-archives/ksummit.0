Return-Path: <swarren@wwwdotorg.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B2A8B9C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:40:20 +0000 (UTC)
Received: from avon.wwwdotorg.org (avon.wwwdotorg.org [70.85.31.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67321201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:40:20 +0000 (UTC)
Message-ID: <53723AF0.704@wwwdotorg.org>
Date: Tue, 13 May 2014 09:32:00 -0600
From: Stephen Warren <swarren@wwwdotorg.org>
MIME-Version: 1.0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <s5htx8tizaf.wl%tiwai@suse.de>	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<2841648.YvDH29bsdC@avalon>
In-Reply-To: <2841648.YvDH29bsdC@avalon>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/13/2014 09:11 AM, Laurent Pinchart wrote:
...
> Wouldn't it help if we could write down whatever rules that each subsystem 
> maintainer found best ? For instance some maintainers expect to be CC'ed on 
> patch submission, other prefer not to be CC'ed. When sending a patch to a new 
> subsystem developers currently have no easy way to find this kind of 
> information.

Well, get_maintainers.pl spits out the list of destination email
addresses to send to. It should be easy enough to augment MAINTAINERS
entries with a flag (or different tag type) to say "I'm the maintainer
of this area, but I don't want to be CC'd on the email; just send it to
the list and I'll see it.", and have get_maintainers.pl print out that
information.
