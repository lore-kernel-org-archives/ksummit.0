Return-Path: <SRS0=G9yW=A4=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EC8C433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 17 Jul 2020 16:47:39 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A975F2076D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 17 Jul 2020 16:47:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVqFb3Cz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A975F2076D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74623859D5;
	Fri, 17 Jul 2020 16:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOkJEv665znu; Fri, 17 Jul 2020 16:47:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D632E85852;
	Fri, 17 Jul 2020 16:47:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1753C0865;
	Fri, 17 Jul 2020 16:47:38 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9D7DC0865
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 16:47:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C144787773
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 16:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxYfJ1pHIzDd
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 16:47:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46F348776C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 16:47:37 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC571208E4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 16:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595004457;
 bh=4BXVUwtR/tkd2z02CT+MvIFZaGvYQkEZE2YjNF5AhjE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZVqFb3CzkSTd6v157BRPCpPT4ksS/hOWa4QMjnFze5nli7ZBGDyCk77l7tss54cli
 g7xOe2c4+js7xv6B53xHC7OXWaaoPfFDeZyhQZY8gEnPVp4sVxVEUrUf5+45BtsHoH
 gRHR6i9FydUHaRqetuUwz638zJ7knj66swUnwgKg=
Received: by mail-wm1-f41.google.com with SMTP id j18so15913738wmi.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jul 2020 09:47:36 -0700 (PDT)
X-Gm-Message-State: AOAM532nYpdyFRud83apAaL0z5g/UL7V3jMbb1tGteawPV+Ty2mYIiXf
 YrfYTmBAiAPxvmEYlsG3arZDKIt0bSMl6PNEpjjciA==
X-Google-Smtp-Source: ABdhPJzXM6ShO9QunQ6h1oW3pXO/VsXg1+/b+5o5yRSKhYi7CtcrXGrAtQNL19genjr5cg0ReKqPfIacxdEL/vO0zWk=
X-Received: by 2002:a7b:c09a:: with SMTP id r26mr10027972wmh.176.1595004455229; 
 Fri, 17 Jul 2020 09:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <s5hlfjnzvu7.wl-tiwai@suse.de>
In-Reply-To: <s5hlfjnzvu7.wl-tiwai@suse.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 17 Jul 2020 09:47:23 -0700
X-Gmail-Original-Message-ID: <CALCETrWmK-b6apB57mp8oaSRNpcSLdoCFAXEp4EF-9LSUDNFBA@mail.gmail.com>
Message-ID: <CALCETrWmK-b6apB57mp8oaSRNpcSLdoCFAXEp4EF-9LSUDNFBA@mail.gmail.com>
To: Takashi Iwai <tiwai@suse.de>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Mon, Jul 13, 2020 at 1:02 AM Takashi Iwai <tiwai@suse.de> wrote:
>
> On Wed, 08 Jul 2020 20:14:27 +0200,
> Dan Williams wrote:
> >
> > +Recommended replacements for 'blacklist/whitelist' are:
> > +    'denylist / allowlist'
> > +    'blocklist / passlist'
>
> I started looking through the tree now and noticed there are lots of
> patterns like "whitelisted" or "blacklisted".  How can the words fit
> for those?  Actually, there are two cases like:
>
> - Foo is blacklisted
> - Allow to load the non-whitelisted cards
>
> Currently I'm replacing the former with "Foo is in denylist", but not
> sure about the latter case.  I thought Kees mentioned about this, but
> don't remember the proposal...

Hmm.  In these cases, we're trying to convey one of two things.  A
given device/platform/CPU/whatever could be known to be problematic
and thus disallowed, or we could have a policy that we generally don't
trust hardware but we have specific reason to believe that this
particular hardware is okay.  After doing a highly scientific sampling
of a few cases, some of these are indeed lists and some are not.

If we're going to look for new words for these concepts, perhaps we
shouldn't focus on the *list* aspect -- after all, that's just a
rather popular implementation detail, but it's not the core concept
we're trying to express.  As an example case, we have a horrible
concept in which some Intel CPUs support a form of memory failure
recovery, and there is no enumeration mechanism.  Instead, there's a
list (sigh).  So we could say "your CPU is whitelisted for
such-and-such," which at least gets the idea across, but saying "your
CPU is allowlisted for such-and-such" seems like a stretch.  It's not
that we have a policy to allow things on the list -- it's that we
think that CPUs not on the list simply don't have the relevant
capability.

Here are some brainstormed ideas:

 - Such-and-such feature is quirked off.  (Or disabled due to a quirk.)

 - Your device is not on the known-good list.

 - Your device is not known-good.  It might work anyway -- to try it,
set such-and-such option.

 - Your device is known bad.

 - Your device is busted and we think you should pressure the
manufacturer to fix it.

 - Your device is too old and no longer supported.

 - Seriously, you're trying to use an 80386 on a modern kernel?  No
thanks.  We think it's neat that you still have one that works,
though.

 - (Specifically for modules and not part of the Linux kernel tree)
disable_autoload instead of blacklist, perhaps?

Part of my point is that we use blacklist and whitelist to mean
various things, and I don't think we should try to invent a couple of
new catch-all terms to replace them.  Perhaps replacing these words
could be an opportunity to come up with better descriptions at the
same time.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
