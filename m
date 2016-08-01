Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57897919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:42:14 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C81D41E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:42:13 +0000 (UTC)
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
	"ksummit-discuss\@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
In-Reply-To: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
Date: Mon, 01 Aug 2016 17:42:11 +0300
Message-ID: <87a8gwtut8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Grant Likely <grant.likely@linaro.org>, Dave Airlie <airlied@linux.ie>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 20 Jul 2016, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> In my very first KS I found the maintainership model presentations
> (x86-tip & armsoc) rather interesting. And last year we've had an
> ad-hoc discussion about group maintainership again. I think drm&i915
> would be an interesting case since over the past year I've done some
> changes which are at the edge of what's common in the kernel, and it
> seems to work (at least for us) fairly well. I discussed this a bit
> with a few folks at ELC San Diego too.
>
> Short summary: i915 has now a two-level maintenance model with 2
> maintainers (who take the blame) and 15 people who can push patches.

Having joined this particular ride at the point of going from one to two
maintainers (which was really a bigger workflow and tooling change than
adding the rest), I'd like to join the discussion.

BR,
Jani.

> In a way a rather big group, but not so big that people don't all know
> each another any more personally. We have some detailed docs about the
> patch flow and expectations:
>
> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/drm-intel.html
>
> and about the dim tool used to support this all
>
> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/dim.html
>
> But I think the more interesting bits are why I decided to try this
> out, what I hoped would happen, what I feared might happen. And with 1
> year of experience, what actually happens and what I think is needed
> to make this work and an actual benefit over more traditional
> maintainer models. And of course I'd like to compare notes with other
> group maintainers.
>
> Cheers, Daniel

-- 
Jani Nikula, Intel Open Source Technology Center
