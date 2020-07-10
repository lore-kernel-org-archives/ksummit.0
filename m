Return-Path: <SRS0=lEje=AV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 398F6C433E5
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:52:37 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5BAB207FF
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:52:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7QnMDwe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5BAB207FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4FEF88607;
	Fri, 10 Jul 2020 16:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wKELrIY2Pg+1; Fri, 10 Jul 2020 16:52:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89DE388617;
	Fri, 10 Jul 2020 16:52:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6EEACC08A9;
	Fri, 10 Jul 2020 16:52:35 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58DA6C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 516D988607
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GhoMZPze4fOh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:52:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A14D788575
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:52:32 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 383F4206F4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594399952;
 bh=/cUKDLPl2jvjdReg3ifbQY1VJUI2VkF7Wamm7bRWSbE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C7QnMDweAh3zXfozgOU23mQU1lsF4mwDug4sJ3VIycdsn2HkU1nJEOxfPy/Q96k5M
 XJbehqF3mSKAekECjJPHKVY/lOhSWjOWqX4rmYVrUNbJNoWNog3vzmTXKfbbVJExl0
 ow7s2am7NzB8FF7EL2f6eL76g96VA/VR8ENPLC+Q=
Received: by mail-wm1-f50.google.com with SMTP id l17so6860759wmj.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 09:52:32 -0700 (PDT)
X-Gm-Message-State: AOAM5339XnRFYc5PwS67dtws61nsbZXcMd5cnJFbmz/GXa7DTxirGAkc
 ++1vaF8EGzN3fqwKrz+PWE3hvmx3Wv9fAWycgCZv5Q==
X-Google-Smtp-Source: ABdhPJwJ5vNk5o5bj03nmpE/WvKrwZ2QjZ/A6anCEV1vb9R8ED2N6Rh7yxfqDFe7tH8YXxOI9rWHfQEt0/FrxN1A5eg=
X-Received: by 2002:a1c:1b90:: with SMTP id b138mr6024612wmb.21.1594399950758; 
 Fri, 10 Jul 2020 09:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <202007041703.51F4059CA@keescook>
 <CAPcyv4jy6cKLNBhi9HCUP=f6GC4bM_iw_-U8o0uMrO8OX1SWTw@mail.gmail.com>
In-Reply-To: <CAPcyv4jy6cKLNBhi9HCUP=f6GC4bM_iw_-U8o0uMrO8OX1SWTw@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 10 Jul 2020 09:52:18 -0700
X-Gmail-Original-Message-ID: <CALCETrUvfB6rLWMx=KOsFxbCowz3H2atSCbq-ecHQ5mNFe=e3g@mail.gmail.com>
Message-ID: <CALCETrUvfB6rLWMx=KOsFxbCowz3H2atSCbq-ecHQ5mNFe=e3g@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Mon, Jul 6, 2020 at 9:30 PM Dan Williams <dan.j.williams@intel.com> wrote:
>
> On Sat, Jul 4, 2020 at 5:41 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
> > > Recent events have prompted a Linux position statement on inclusive
> > > terminology. Given that Linux maintains a coding-style and its own
> > > idiomatic set of terminology here is a proposal to answer the call to
> > > replace non-inclusive terminology.
> > >
> > > Cc: Jonathan Corbet <corbet@lwn.net>
> > > Cc: Kees Cook <keescook@chromium.org>
> > > Signed-off-by: Chris Mason <clm@fb.clm>
> > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> >
> > (nit: isn't this a Co-developed-by chain, not a SoB chain?)
> >
> > Acked-by: Kees Cook <keescook@chromium.org>
> >
> > Comments below...
> >
> > > ---
> > >  Documentation/process/coding-style.rst          |   12 ++++
> > >  Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
> > >  Documentation/process/index.rst                 |    1
> > >  3 files changed, 77 insertions(+)
> > >  create mode 100644 Documentation/process/inclusive-terminology.rst
> > >
> > > diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> > > index 2657a55c6f12..4b15ab671089 100644
> > > --- a/Documentation/process/coding-style.rst
> > > +++ b/Documentation/process/coding-style.rst
> > > @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
> > >  problem, which is called the function-growth-hormone-imbalance syndrome.
> > >  See chapter 6 (Functions).
> > >
> > > +For symbol names, avoid introducing new usage of the words 'slave' and
> > > +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> > > +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> > > +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> > > +'denylist'.
> >
> > Keeping "master" in a "master/slave" pairing (i.e. replacing only
> > "slave") seems incomplete to me. If "master" is paired with "slave", it
> > should be replaced too. Potential examples: 'primary', 'leader', 'principle',
> > 'controller', 'sender', 'initial'.
>
> Yes, this matches Andy's feedback, will add.
>
> > Similarly, for "whitelist/blacklist", "whitelist" needs to replaced when
> > "blacklist" has been. For example, seccomp documentation[1] uses
> > "allow-list" and "deny-list".
> >
> > [1] https://man7.org/linux/man-pages/man2/seccomp.2.html
>
> Oh, good to know will make that change.

Looks like that change already happened.  And the new language is IMO
not vastly better than the old language.  I'll send a patch.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
