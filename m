Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BB87F9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 16:53:22 +0000 (UTC)
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 801AC20254
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 16:53:21 +0000 (UTC)
Received: by mail-qc0-f169.google.com with SMTP id e16so781641qcx.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 09:53:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513162844.GA1647@cloud>
References: <s5htx8tizaf.wl%tiwai@suse.de>
	<alpine.LNX.2.00.1405131627480.16459@pobox.suse.cz>
	<CABe+QzDMfRzedp+HROr7jqycCMueF=OWiUMEoFraVSVV+CTL2Q@mail.gmail.com>
	<20140513162844.GA1647@cloud>
Date: Tue, 13 May 2014 09:53:20 -0700
Message-ID: <CAOesGMg_iEfcR8D76Nk9ZsQzbwwmwm9BwNw3YHuAf-Pfw4Jb+g@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: josh@joshtriplett.org
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Guidance for subsystem maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 13, 2014 at 9:28 AM,  <josh@joshtriplett.org> wrote:
> On Tue, May 13, 2014 at 07:57:16AM -0700, Sarah A Sharp wrote:
>> Technical workflows will always be different.  I believe what Takashi
>> is talking about is a social problem, not a technical problem.  Each
>> maintainer needs some level of confidence in the patch, and thus some
>> maintainers will wait a while before merging a patch, or wait for
>> additional reviewers to ack it.  And sometimes that means the patch
>> falls through the cracks.  Others will just throw the patch at their
>> -next branch, do some quick testing, and catch bugs in the next -rc
>> cycle.
>>
>> Patch testing and review is a social problem, and trying to mandate a
>> workflow or even a set of technical tools will not help solve the
>> social problem of patches getting dropped or ignored.
>
> Perhaps, but part of why Linus switched to git (and BK before that) was
> to avoid the resend-patches-until-Linus-doesn't-drop-them-on-the-floor
> problem.  It seems like we haven't so much *fixed* that problem as moved
> it further down the chain to a subset of maintainers.
>
> This holds even more true if you're trying to make a cross-subsystem
> change: if you have 30 patches across 15 subsystems, you'll have a few
> merged right away with an explicit email acknowledgement (notably Andrew
> and Greg who have automated that), a few merged with no acknowledgement
> (have fun finding where they got merged or figuring out where they'll go
> from there), most of them disappear into a black hole until they
> magically show up in Linus's tree two major versions in the future, and
> a few just fall into /dev/null.  And I don't see an obvious way to
> distinguish between the last three cases.
>
> Two thoughts on that:
>
> 1) The cross-subsystem difficulties sometimes tempt me to queue up
> patches into my own git tree and send direct pull requests to Linus once
> I have a patch series that gets no objections from maintainers, but I'm
> concerned about doing that for cross-subsystem "topics" and drawing
> flames from subsystem maintainers about not going through their tree(s).
> Is that a real problem, or is it considered reasonable to maintain a
> repository by topic rather than by subsystem?  (I would, for instance,
> be quite willing to maintain a "tiny" tree, and accept tinification
> patches from others to merge upstream.)

In your case I suspect we have little to no overlap between the code
we carry and merge and what you're looking to do, but for the sake of
general discussion:

We've been somewhat careful with these with arm-soc, since we merge
quite a bit of code from a lot of various platforms, and maybe once a
year we get something that isn't coordinated well enough and it
explodes into a very painful conflict-ridden mess the week before the
merge window opens.

The way we've chosen to avoid some of that is to merge in such topic
branches (once they're stable) as a base to have other platform
maintainers either base their branches off of, or at least we'll merge
in their branches on top of it so we catch the conflicts early and can
resolve them within our tree.

I.e. we're OK with doing it your way, but we want to know about it,
and if there's substantial overlap with other parts of our tree we'd
prefer to bring in the same branch into our tree as well. This of
course assumes it's not a controversial patch set and that it has been
out for proper reviews (and that it isn't done as an end-run around a
disagreeing maintainer).


-Olof
