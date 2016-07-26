Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3FA1A413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 14:16:49 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 96F91241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 14:16:48 +0000 (UTC)
Message-ID: <1469542604.4212.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 26 Jul 2016 10:16:44 -0400
In-Reply-To: <6125585.ae3bRTRs05@avalon>
References: <15842.1469185302@warthog.procyon.org.uk>
	<1469199065.2382.21.camel@HansenPartnership.com>
	<6125585.ae3bRTRs05@avalon>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ikent@redhat.com, Linux Containers <containers@lists.linux-foundation.org>,
	oleg@redhat.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Containerisation,
 namespaces and keyrings
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2016-07-26 at 16:38 +0300, Laurent Pinchart wrote:
> > Actually, I really think this isn't a KS issue, it should be 
> > proposed for the Plumbers Containers MC:
> > 
> > http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks/519
> > 
> > You have all the correct people in that session.  At KS you'll have 
> > 50% bored, 48% hostile because they hate cgroups and 2% interested.
> 
> Virtualization is increasingly affecting more and more subsystems. 
> While I don't disagree with you, I also see value in teaching 
> maintainers about containers, namespaces and the way they affect
> subsystems.

I'm certainly not averse to that.  However, the proposal was to discuss
a really esoteric feature, namely keyring namespaces.  I'm just
pointing out that KS isn't the right audience to have that discussion.

>  We should ensure that best practices can be followed going forward, 
> and avoiding subsystems being developed in a way that will make it 
> difficult for them to be virtualized later (although one might argue 
> that we've already made a mess in several subsystems anyway). KS 
> would be a good place to spread the message as widely as possible 
> among maintainers, with Plumbers a good venue for more technical
> discussions.

Hey, give us brownie points for already avoiding the KVM/Xen mess.  We
do only have one API set that every container orchestration system (be
it docker, formerly known as rocket, lxc or openvz) uses.  However,
you're right, we should discuss some of the proliferation problems of
the APIs, however I'm still not convinced that KS would have the right
audience for that ...

James
