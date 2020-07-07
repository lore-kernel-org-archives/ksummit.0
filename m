Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F17C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:00:58 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F06920702
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:00:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="BHeyflV6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F06920702
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D93D878A4;
	Tue,  7 Jul 2020 04:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0h9HIEvXsDiE; Tue,  7 Jul 2020 04:00:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 935A887D04;
	Tue,  7 Jul 2020 04:00:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A12BC0893;
	Tue,  7 Jul 2020 04:00:57 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16764C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0884241F9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 10hp+uZ8Zs0M
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:00:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 7578F22FC6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:00:52 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id ga4so45106842ejb.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 21:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RiTUd30YmJWb1fR+5buiDF30CrJs9OFRR3WVfOGfSb4=;
 b=BHeyflV6RoznUcXBRpPYNaIbudFhxREm72Qe1T8xUGuu+DAiyR6NQm3yIQSS4eqCv4
 aX/OXEOhsf7+WvRzSy1BIblQ8yoSEtwwv7sxGDg34Q1uHSxEA4shP8nrfAGetaGndj0G
 FmLj9qUCMkJgSVCEaZit0TKu1eV0xwj4YX3bfQ+ti5RD4UNlPGnLiVhJTB31RPUVBt4x
 8/HLUlffhGATdlhVdNgmZW4om1fBciZJZySeIoEHoXMeWViRDj59zTpcuY6jv3bqT9A8
 /MK1g09kZV6xJVFVK7AW6u79pMQoLyjWbbRpJouyzoU3QXJZhHo5wFuuhvgtvKKZlQ5b
 9LMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RiTUd30YmJWb1fR+5buiDF30CrJs9OFRR3WVfOGfSb4=;
 b=We5VMT2sMtEEzRIf7VUQZUqde+7RNoFnAk6idmaCGnJ3hsNh/k0R5LNiFJ5nyRoCJo
 /IzxlLTR3mxxqYOz5X+GCJpPtBeiOiSwX2Qlwg+QwgO423jiTO8lx2DDB3Fjj1PRr31E
 ypGS6H6YTQOqZ/pL+bBLYqzLQTqezqrsqonQmG3VsNiACIZb/vTsWpHTxy9rX6hMX30j
 DATAm2x3xP6IZoaBCs2hbZtFPzYVuIWgreeL+0JXQ3O5ohuJK7N8BQg9ipt9SmcurOCw
 uQgQ+j28ctaVgc0mChY3UrXnuwXoc33wy+D/4X9ElU1cz/52rciZ9Fehuz8Zi1Oxu9NH
 RvFQ==
X-Gm-Message-State: AOAM531gcax8Dd8KI/7o+pXyNM5x/yfRWbSQ92uuLxa2FtjX+oMUBx1+
 jfK8gk3sfBQHRGTu2a3Xe8Djd5llD+1gnt7NRiCRfg==
X-Google-Smtp-Source: ABdhPJz3KQvVBhA7Y0YwNEKvyl4CztxXT6qc6mqeAmtorkR45QxvUPz/UArxTaquGWhGgMLSqyE/6DU9uF2gxGLiiMQ=
X-Received: by 2002:a17:906:cc0e:: with SMTP id
 ml14mr44793713ejb.432.1594094450761; 
 Mon, 06 Jul 2020 21:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
In-Reply-To: <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jul 2020 21:00:38 -0700
Message-ID: <CAPcyv4hwoVCKJgrzB-OQis29sVnTgen2409gPtedV8B0c7YomA@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
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

On Mon, Jul 6, 2020 at 9:30 AM Andy Lutomirski <luto@amacapital.net> wrote:
>
> On Sat, Jul 4, 2020 at 1:19 PM Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > Recent events have prompted a Linux position statement on inclusive
> > terminology. Given that Linux maintains a coding-style and its own
> > idiomatic set of terminology here is a proposal to answer the call to
> > replace non-inclusive terminology.
> >
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  Documentation/process/coding-style.rst          |   12 ++++
> >  Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
> >  Documentation/process/index.rst                 |    1
> >  3 files changed, 77 insertions(+)
> >  create mode 100644 Documentation/process/inclusive-terminology.rst
> >
> > diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> > index 2657a55c6f12..4b15ab671089 100644
> > --- a/Documentation/process/coding-style.rst
> > +++ b/Documentation/process/coding-style.rst
> > @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
> >  problem, which is called the function-growth-hormone-imbalance syndrome.
> >  See chapter 6 (Functions).
> >
> > +For symbol names, avoid introducing new usage of the words 'slave' and
> > +'blacklist'
>
> Can you put whitelist in the list, too?

Yes, will do. I had left it out mistakenly thinking it would help
focus the discussion, but the replacements don't make sense without
including the replacements for whitelist.

>
> >. Recommended replacements for 'slave' are: 'secondary',
> > +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> > +'performer'.
>
> Should 'target' be in this list?

Yes.

> Should there be some mention of "master" to go along with "slave"?
> This could be complicated -- as has been noted in this thread, the
> word "master" has quite a few meanings, several of which are not
> related to slavery or to any form of control, and that the meanings
> associated with "master" and its cognates in other languages vary.

Yes, I'll at least expand this with the paired terminology for each of
the replacements of 'slave'.

>
> >  Recommended replacements for blacklist are: 'blocklist' or
> > +'denylist'.
>
> As someone who has written seccomp code and described the result as a
> "whitelist" or "blacklist" in the past, I have a couple of comments.
>
> First, shouldn't whitelist be in the list?  I find it surprising to
> put 'blacklist' in the blocklist but to omit whitelist.
>
> Second, I realize that I grew up thinking that 'whitelist' and
> 'blacklist' are the common terms for lists of things to be accepted
> and rejected and that this biases my perception of what sounds good,
> but writing a seccomp "denylist" or "blocklist" doesn't seem to roll
> off the tongue.  Perhaps this language would be better:
>
> Is most contexts where 'whitelist' or 'blacklist' might be used, a
> descriptive phrase could be used instead.  For example, a seccomp
> filter could have a 'list of allowed syscalls' or a 'list of
> disallowed syscalls', and just lists could be the 'allowed' or
> 'accepted' lists and the 'disallowed', 'rejected', or 'blocked' lists.
> If a single word replacement for 'whitelist' or 'blacklist' is needed,
> 'allowlist', 'blocklist', or 'denylist' could be used.

That makes practical sense to me. Now that I look at this I think the
recommendation for the shorthand replacement should only be one style
option, lets say "blocklist/passlist" because it's not as amenable to
context sensitive replacements as "slave" and benefits from a standard
single shorthand.

>
>
> > @@ -0,0 +1,64 @@
> > +.. _inclusiveterminology:
> > +
> > +Linux kernel inclusive terminology
> > +==================================
> > +
> > +The Linux kernel is a global software project, and in 2020 there was a
> > +global reckoning on race relations that caused many organizations to
> > +re-evaluate their policies and practices relative to the inclusion of
> > +people of African descent. This document describes why the 'Naming'
> > +section in :ref:`process/coding-style.rst <codingstyle>` recommends
> > +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
> > +kernel.
> > +
> > +On the triviality of replacing words
> > +====================================
> > +
> > +The African slave trade was a brutal system of human misery deployed at
> > +global scale. Some word choice decisions in a modern software project
> > +does next to nothing to compensate for that legacy. So why put any
> > +effort into something so trivial in comparison? Because the goal is not
> > +to repair, or erase the past. The goal is to maximize availability and
> > +efficiency of the global developer community to participate in the Linux
> > +kernel development process.
>
> Should this type of historical note be in the document or in the changelog?
>
> Suppose that we put it in this document and then, in two years,
> someone notices that the very first bit of text in your changelog that
> diff helpfully quoted for you is also mildly offensive to certain
> groups  Now we could end up with:
>
> ... in 2020 there was a global reckoning ...
>
> ... in 2022, people noticed that comparing peoples' opinions on
> variable names to medical conditions could be seen as inappropriate

Perhaps. Again, I wanted to stay focused and not dilute the discussion
about the specific terminology at issue with a series of "what about"
debates. I also did not want to specify a threshold for when Linux
would need to deal with an issue like this again. I believe that will
be a case of "we'll know it when we see it". Certainly the terminology
at hand seems to have passed that threshold given multiple
organizations actively discussing and deploying policy to address it.

> ...
> etc.  And now this document ends up with a lot of history and also a
> lot of content, and the history part starts to resemble the
> now-frowned-upon lists of copyrights and changes that clutter the tops
> of various kernel C files.  I suppose that changing this could be
> deferred until such time as it might be an actual problem, but perhaps
> this should go in the changelog instead.

Sure, I'd be ok with that to move the coding-style change forward.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
