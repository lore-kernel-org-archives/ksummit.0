Return-Path: <alex.shi@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C5BBC01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 13:27:55 +0000 (UTC)
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7029169
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 13:27:54 +0000 (UTC)
Received: by mail-pf0-f178.google.com with SMTP id q2so42173330pfj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Sep 2016 06:27:54 -0700 (PDT)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Theodore Ts'o <tytso@mit.edu>
References: <57C78BE9.30009@linaro.org> <20160922162218.GN7994@sirena.org.uk>
	<20160922221451.tdh66pm7awzdzzb5@thunk.org>
	<39885166.uICe7DmWXy@avalon>
From: Alex Shi <alex.shi@linaro.org>
Message-ID: <57E52DD6.40008@linaro.org>
Date: Fri, 23 Sep 2016 21:27:50 +0800
MIME-Version: 1.0
In-Reply-To: <39885166.uICe7DmWXy@avalon>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 09/23/2016 08:28 PM, Laurent Pinchart wrote:
> Yes, it's also a budget issue, which in the end requires convincing the right 
> level of management that investing in upstream will pay back. Once you're at 
> that point the rest becomes a matter of "just doing it" (with all the problems 
> associated with performing the real upstreaming work).
> 
> As another example, the strategy we're using at Renesas (who has perfectly 
> understood the value of upstreaming kernel code) is to develop the BSP and 
> upstream support in parallel in different teams. The BSP team is bound to 
> customer deadlines, while the upstream team has more freedom. The upstreaming 
> priorities are negotiated between the two teams, and when the BSP team rebases 
> its tree on upstream the delta shrinks. It will never get down to zero (as BSP 
> contain quite a few product-specific hacks that have a really bad effort/gain 
> upstreaming ratio), but if the upstream team is correctly staffed it usually 
> stays reasonable.
> 
> The BSP delta is also a good indicator of how good the upstreaming process is 
> going, and can be regularly reviewed to identify issues that need to be fixed 
> upstream.

Oh, will glad to know the details on Renesas, the 'upstream first'
model, and how it run and effect. Thanks for sharing.

Just a question, how do you deal with the user software compatibility
issue when kernel API change in rebasing on upstream? Such as the
libcgroup compatibility issue with cgroupv2.

Regards
Alex
