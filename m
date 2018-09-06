Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7B40F90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:16:23 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 661C97AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:16:23 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
Date: Thu, 06 Sep 2018 13:15:53 +0300
Message-ID: <87va7jylra.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Greg KH <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
	vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 06 Sep 2018, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Wed, Sep 5, 2018 at 11:00 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
>> I have no idea how this works outside of intel or graphics, I tend to
>> not chat with those people as much as I do with graphics people. Would
>> be interesting to know how it is outside of the graphics bubble
>> indeed.
>
> More or less any SoC company for routers, handsets, tablets etc
> have the same problem.
>
> At one point I was made responsible for such a scenario. The
> approach I developed was a bit ad hoc but contained some of this:
>
> - Classify the components into embargoed and non-embargoed
>   so anything not affected by embargo can be pushed upstream.
>   (OK it's maybe obvious).

It should be obvious, but given the dual mode of operation, people tend
to err on the side of caution, and you need to constantly have an eye
out for stuff that should be refactored and sent to upstream directly.

> - Get management to provide a cut-off date for embargo. Like
>   "after this point in time we certainly do not care what code you
>   publish pertaining to X" and make that formal so that when that
>   day comes developers can simply start sending the code without
>   having to ask permission again, because having to do that is
>   pointless and bureaucratic. This is a property of the company
>   "FOSS-OUT legal process" that is simple but still often
>   forgotten. It relieves the developers for the need to hammer
>   management for approvals.
>
> - Use internal developers with high upstream experience and
>   NDA to make internal reviews and try to anticipate any problems
>   that will be seen when posting the code to the community and
>   fix it before it happens. Get the code in upstream shape.
>   (This is a good reason to hire kernel maintainers and have them
>   spend time upstream BTW.)

Wholeheartedly agreed.

> - Minimize hamming distance to mainline, which means rebase
>   internal development as often as possible, track mainline,
>   bring in entire branches of development if need be just to not
>   deviate, because deviating too much from mainline is inviting
>   disaster. This goes counter to the conventional wisdom that
>   says you should use stable releases and baselines and LTS
>   and what not. I am not a big fan of the latter. Rebase on
>   Torvald's -rcN or even linux-next if you are aiming for upstream,
>   else you are not really aiming for upstream, but secondary
>   goals such as feature completion, "not disturbing development",
>   or getting tests to pass cleanly all the time. Get your priorities
>   straight: is upstream first really what you want? Then that
>   should be priority number one, not feature completion, not
>   "not disturbing developers", not passing internal tests.
>   If you find upstream first isn't really your number one priority
>   then call your strategy upstream second or upstream
>   third so that it reflects reality instead of trying to sound good.

We're constantly rebasing on our public bleeding edge development
branch, so we're with you here. You also emphasize internal review, but
there's a conflict: if you review the first version and rebase it a
dozen times, it really no longer is the reviewed version. And since you
expect rebases (potentially with conflicts), how polished should you
require the internal patches to be?

These are the kind of problems that I expect Rodrigo to cover in the
presentation, as well as some of our time tested solutions. Basically
ideas how to gear your internal development towards "upstream as soon as
you can talk about it".

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
