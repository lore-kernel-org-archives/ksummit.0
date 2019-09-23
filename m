Return-Path: <SRS0=cVpD=XS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD964C04EBF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Sep 2019 14:09:03 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D05E20578
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Sep 2019 14:09:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.b="sAKhJY61"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D05E20578
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lists.linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2FD9D949;
	Mon, 23 Sep 2019 14:09:03 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD1C98BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 14:09:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B55A887D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 14:08:52 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id j31so17285822qta.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 07:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CCrSUQ+KSHehXpDJZmuHfSbDa+aMtfkR9624CH2xPdU=;
	b=sAKhJY61Gcdpa4ES8pljvXSAtGH+kdoh+PNWWpYwBRnzkQY8q3Nfpkg+bQoMZ5/nnj
	ItyTvcceS6LuMgx1qviwteYD2QlhIK5NiyjZOp6NTX6fV1Jnf3Xe2bx45t7efJrbX+1U
	+R5iu/Tt1+VHZ8zJIhk9fv017UjpRZLhxQniomyiPbsq4fzBhgIlRhZylhx3Am5Lq9x0
	rRUbICF4NxKnfCRpgLVxy8KdrhsMB731W6SF1xRA7d7MC/rXpD7HmaZhj8zsGMiz+7wE
	///Mv95JO1v6uULx5LaP3UtYfsQKTCtTfL3gQJzjPqi/CW526v4gHtmJkUfuwQxlluuD
	L0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CCrSUQ+KSHehXpDJZmuHfSbDa+aMtfkR9624CH2xPdU=;
	b=dqcJF5tJPkpKA9Fu+hTPeOosDVnYbRCiH5IeZKl47isuJ9b4lBYP60UOGZc+bK/c0/
	jC2mDGapYbQIYf+cGBPwJaUNjMfPwUOqKCm5ByDiDqAvIRBi+jBacbOfcZnG3ba4Xcz8
	5DvOYO6MXJZNM8awJtoIaQUyozjo8kWZBeBq/vzqWI4wHBftGGKV0VmBrR1+h0tLeFWd
	W0AXeaHVcERv+Hrd+Gn0lgCSm0O20I4gM3GPp+zMHDssYkub53dqD0MmyBihRknNdLKv
	cVol+NmBxQe3TbxTRiHY/fnLPZjhf6SFosLh0/9X6owTWBOfjcxS5guwW/yo/9koOL3H
	cQhQ==
X-Gm-Message-State: APjAAAXLuBKFcrqkyODyK1LJyvGJxEMhEBHzEVSyMPNysjyZz55+2DFu
	5eHFgNkpeEkLy2xOfMrku5YrtENRkMs5p1WPpH2Q2Q==
X-Google-Smtp-Source: APXvYqzH2u2lZQCnrQpE2tgmbLW09RkF5uy8qpkieRA5i9x7ZJ7gJqSGIbxuDbixJ5bz42fxcRxN0nxNG9iAZeLruJk=
X-Received: by 2002:a05:6214:2e4:: with SMTP id
	h4mr23989139qvu.127.1569247731156; 
	Mon, 23 Sep 2019 07:08:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190912120602.GC29277@pure.paranoia.local>
	<d6e8f49e93ece6f208e806ece2aa85b4971f3d17.1569152718.git.dvyukov@google.com>
	<610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
In-Reply-To: <610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
Date: Mon, 23 Sep 2019 16:08:38 +0200
Message-ID: <CACT4Y+aQMzoTCWUxeuS7qHjHaWHwKXFwS7A-NVcfmS-m-DWRZA@mail.gmail.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Rob Herring <robh@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@gmail.com>, helgaas@kernel.org,
	workflows@vger.kernel.org, stefan@datenfreihafen.org,
	Christoph Hellwig <hch@lst.de>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
From: Dmitry Vyukov via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Sep 23, 2019 at 2:52 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> On 9/22/19 2:02 PM, Dmitry Vyukov wrote:
> [...]
> > Also adding people from the "Kernel development collaboration platform
> > wish list" discussion on the workflows list [1].
> > (Rafael et al, thanks for collecting the requirements, that's very useful!)
> >
> > I second the idea expressed by several people that addressing the
> > contributor side is a very important part of this effort.
> >
> > While I understand the intention to provide something useful as fast
> > as possible, I also a bit afraid that the Stage 1 ("putt") diverges
> > us into investing into particular UI, tying capabilities with this UI
> > and not addressing the fundamental problems.
> > People are expressing a preference for different types of UIs
> > (CL, terminal GUI, web, scripting), I think eventually we will have
> > several. So I would suggest to untie features/capabilities from
> > any particular UI as much as possible, and start with addressing more
> > fundamental aspects. Building richer features on top of the current
> > human-oriented emails is also going to be much harder, and that's the
> > work that we eventually will (hopefully) throw away.
> >
> >  From UI perspective I think we should start with a CL interface because
> > (1) it's the simplest to build (we don't invest too much into it,
> > don't shift focus and will shake down more important things faster),
> > (2) there are some important actions that are best done with CL
> > anyway (e.g. mailing a patch). Later it may serve as an
> > entry point for starting the richer terminal GUI or other types of GUIs.
>
> +1, agree.
>
> > There are 3 groups of people we should be looking at:
> > - contributors (important special case: sending first patch)
> > - maintainers
> > - reviewers
> >
> > I would set the first milestone as having the CL utility (let's call
> > it "kit"*) which can do:
> >
> > $ kit init
> > # Does some necessary one-time initialization, executed from the
> > # kernel git checkout.
> >
> > $ kit mail
> > # Sends the top commit in the current branch for review.
> >
> > So that would be the workflow for sending your first kernel patch.
> >
> > Later "kit mail" can also run checkpatch, check SOB tag, add some kind
> > of change ID or anything else we will consider necessary. It may be
> > necessary to be able to force-override some of the checks, but by default
> > you are now getting patches that have SOB, checkpatch-clean, etc.
> >
> > If there is an easy way to make it work with the current email-based
> > process (i.e. send email on your behalf and you receive incoming emails),
> > then we could do that first and give it to new developers to relief from
> > setting up email client. Otherwise, we should continue developing it
> > based on something like SSB (or whatever protocol we will choose).
> >
> > Obviously, the intention is that if you do "kit mail" second time
> > with a changed patch, it sends "V2". Or if you have multiple local
> > commits it will properly mail the series (or V2 of the series).
> >
> > Most (all) of the "kit" functionality should be separated from the UI
> > and be available for scripting/automation/other UIs. Whether it's
> > done as "libgit" or as "shell out" is discussable.
> [...]
> On that note, such a tool would also need to co-exist with the current
> email based process for some (long?) time in order to allow a smooth
> transition period. Last week I spent a few of nights hacking a small tool
> which is regularly pulling the lore git trees I'm interested in and checking
> out all [new] mails into maildir format so they can be read naturally by
> UIs like mutt et al [0]. As an experiment, in case of bpf vger mailing list,
> it extracts all current ~8k mails in under a second:
>
> $ ./l2md
> general.maildir = /home/foo/.l2md/maildir/common
> general.period = 30
> repos.bpf.maildir = /home/foo/.l2md/maildir/bpf
> repos.bpf.initial_import = 0
> repos.bpf.url = https://lore.kernel.org/bpf/0
> repos.bpf.oid_maildir = [unknown]
> Initial repository check.
> Cloning: https://lore.kernel.org/bpf/0
> Remote: Counting objects: 23859, done.
> Remote: Compressing objects: 100% (14476/14476), done.
> Remote: Total 23859 (delta 1561), reused 22125 (delta 1430)
> Initial repository check completed.
> Bootstrap done.
> Resyncing maildirs.
> Processed 7953 new mails for https://lore.kernel.org/bpf/0 in 0.586466s.
> Sync done. Sleeping 30s.
> Resyncing repositories.
> Fetching: https://lore.kernel.org/bpf/0
> Merging: refs/heads/master commit d608393d011aa0c0fc5983059052362cebeafc91
> Resyncing maildirs.
> Processed 0 new mails for https://lore.kernel.org/bpf/0 in 0.53611s.
> [...]
>
> I've started using it daily now and it appears to work nicely so far.
> Given that, I'm wondering whether for a "kit" tool and beyond, we could use
> something like lore git trees as a basis. The 'receive' side is already
> there today, but I'm wondering if it's feasible to have a sendmail compatible
> interface that would allow to push new "mails" into lore git trees as well,
> where a bridge from lore git to vger list then distributes the message to
> all email-based subscribers. Obviously this needs similar spam-filtering and
> sanity checks as with vger lists, but eventually it wouldn't be any different
> than anyone being able to send to vger via email. The nice thing would be
> that the trees are mirrored on a wide basis already (and wouldn't need any
> additional transport) and CI infrastructure can just pull them, work with
> git sha ids, and reply with the results by pushing (implicitly by mentioned
> sendmail compat tool, or "kit" etc). "kit" tool for contributors/reviewers
> (I'd probably put both into the same bucket on a high level) and maintainers
> could be built around the trees as foundation which could already solve the
> issues around mail pointed out by Konstantin some time ago [1] while allowing
> max compatibility to current workflows as a transition period. Just a thought.

Hi Daniel,

Do I understand correctly that you propose to use git as a transport
layer to store some structured data about changes? This was mentioned
during the maintainers summit [1], see "Git as the transport layer"
section.

Using git is nice in the sense that we could reuse lots of existing
infrastructure/code/tools rather than invent our own. And I think in
the end the exact transport layer does not matter much (for users) as
long as we can build the same interface on top of it.

However, Konstantin mentioned potential scalability problem with git
in such scenario. It wasn't supposed to store "journal" type info, but
rather small diffs to a code base. If we are considering such option
for real, I guess we just need to evaluate it in such scenario and
check how well/bad it works. We could also try to optimize git for
such a scenario, maybe there is a single bottleneck that we could
optimize...

There will probably also be some implications on possibility of local peering.

If everybody will be able to push into the single git, we will need to
figure out user auth story and single user screwing the whole thing
intentionally or by accident.

[1] https://lwn.net/Articles/799134/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
