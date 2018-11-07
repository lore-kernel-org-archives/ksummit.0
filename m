Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 805AFA70
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Nov 2018 19:45:06 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F00F37ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Nov 2018 19:45:05 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id r71so22488821qkr.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 07 Nov 2018 11:45:05 -0800 (PST)
MIME-Version: 1.0
References: <CAOesGMgVPsK9YsV2nGoBptWwtHYv=3yMytLx2_tF_ujS5c5p3Q@mail.gmail.com>
In-Reply-To: <CAOesGMgVPsK9YsV2nGoBptWwtHYv=3yMytLx2_tF_ujS5c5p3Q@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Wed, 7 Nov 2018 13:44:53 -0600
Message-ID: <CAL_Jsq+4d-0_T68r=PWm5ey=NqsCn5j_j1sQ4Kjp1zBz6zgt6A@mail.gmail.com>
To: Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Russell King <rmk@armlinux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Kevin Hilman <khilman@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
	linux-riscv@lists.infradead.org, linux-clk <linux-clk@vger.kernel.org>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] SoC maintainer group
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Nov 6, 2018 at 4:17 PM Olof Johansson <olof@lixom.net> wrote:
>
> Hi KS organizers (and others),
>
> This is a late topic proposal, hopefully there is still time on the agend=
a.
>
> We=E2=80=99ve recently been discussing some maintainer model changes as
> described below, and would like a slot to discuss the idea and solicit
> feedback/comments from the others there.
>
>
> This started with Arnd and I finally being in one place at the same
> time, and talking about how we want to evolve arm-soc maintainership
> moving forward. We've been independently thinking of ways to expand
> the group and making it more self-service for everybody, but there's a
> bunch of tooling needed to make it run smoothly beyond the smaller
> group we have now.
>
> In the end, we ended up looking at it from a slightly different angle:
> Right now, when contributors show up with new platform support, the
> first hill they need to climb is figuring out how they need to carve
> up their platform among all the various maintainers, how to make sure
> they're all handshaking on keeping things stable, and get code
> submitted. It's awkward, not well documented and one of the biggest
> overheads we have on our side as well.
>
> When we started talking to other maintainers, we're also realizing
> that we are currently duplicating a lot of work. In particular, we
> often all get cc:d on patch series, so we all need to read and filter,
> and assume that other maintainers spot the right patches, etc.
>
> We have discussed a few different options, and it seems like pooling
> more of the contribution flow to a group of co-maintainers is a useful
> approach. Initially, we're considering the arm-soc platforms, clock
> drivers and pinctrl drivers, which all tend to be affected by new
> platform contributions in this way, and often end up cross-cc:d on
> everything. Additionally, the flow for successfully merging a new
> platform or SoC needs to be documented and advertised. This is true
> whether or not we change the way that maintainers coordinate amongst
> themselves, or whether or not we change the current workflow used by
> platform contributors today.
>
> So, we're planning to change things up a bit. We're starting a new
> group that pools current arm-soc, clk and pinctrl drivers and
> maintainers into one funnel. We'll set up a new mail alias for the
> maintainer group, and one shared patchwork to collect contributions.
> We still expect developers to use existing mailing lists, and we still
> expect for example ARM platform maintainers to keep their workflow of
> collecting patches for their platform like they do today. Down the
> road it might make sense to incorporate other driver subsystems as
> well.

Given that dts files are a large part of what goes into arm-soc, any
thoughts on changes to the process around them? I think it would be
good if dts files were a bit more decoupled from kernel code changes.
Yes, there's the issue with header dependencies to deal with. Ignoring
that for a moment, keeping the dts files somewhat separate even if
ultimately in the same tree and the same maintainers would be
beneficial both for perception and to be able to do validation
separately. And if we do ever move things out of the kernel tree, then
it's less of a work-flow change. And I'm happy to help out here in
whatever way I can.

> Beyond this, we're going to keep a close eye on the drm-misc tree,
> which is exploring a move to gitlab (and working with gitlab on adding
> the features they need to move over). If they get a broad maintainer
> model working well in that environment it could be something we reuse
> for ourselves too.

AIUI for drm-misc, a major goal there is to have more automated checks
fed back to submitters which doesn't necessarily have anything to do
with maintainers. That's something I want to get in front of for DT
schema so we're not fixing things after we've accepted them. So I've
been experimenting with gitlab CI and integration with patchwork a bit
recently. I have gitlab CI running some tests on binding patches
(checkpatch and schema validation), attaching the results to the DT
patchwork instance, and updating the patch state. Here is an example
patch[1], my patchwork related scripts are here[2], and the CI job is
here[3].

Rob

[1] https://patchwork.ozlabs.org/patch/979613/
[2] https://gitlab.com/robherring/pw-utils
[3] https://gitlab.com/robherring/linux/-/jobs
