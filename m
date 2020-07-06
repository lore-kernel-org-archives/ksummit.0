Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BCEC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 16:30:06 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D072E20702
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 16:30:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=amacapital-net.20150623.gappssmtp.com header.i=@amacapital-net.20150623.gappssmtp.com header.b="WZP86zFB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D072E20702
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amacapital.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0AAD893F9;
	Mon,  6 Jul 2020 16:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fom2CjHWRUaf; Mon,  6 Jul 2020 16:30:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C450893E5;
	Mon,  6 Jul 2020 16:30:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7492C0891;
	Mon,  6 Jul 2020 16:30:03 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 35401C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 16:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DCD9262D1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 16:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRVR+aCNyMoo
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 16:30:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 00E59262A0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 16:29:59 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l17so40016119wmj.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 09:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WXAuiOj+J7ih7guaxWlWZz3Hon8m2pdL85sec3nqONA=;
 b=WZP86zFB0F2LWpOr41M/TYwTLKw2Rf/hcqX2mxebHFq24vAAoO+FTeenU8Ls1o6pTs
 yYBzhl90q3qkTa/QzsDhv+Uy0/tfCAYb8XWTfXbLRZ7USGsvBjT94ywcpgsVL7K0If1B
 AKCZFAcx7If8HMYf4ZstxuUj1xYAdTLl5hbU6nbSgCzlbDlN6AV3+KAAPdCrnzPOtBHq
 PdLqz0ETSM/pLsREZC2ko67Fm68JQ/a1Lk9vQq8NoxMU25i2HD4YmBJGeSMYxRMrfoTU
 N7CaPWR6RV/h7+9AmNt6JDx76ntlwaa9uuVvfGbolhLJQ+4JsSpqxOxi7bJH4uHDYR8C
 SsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WXAuiOj+J7ih7guaxWlWZz3Hon8m2pdL85sec3nqONA=;
 b=jOX9qaj7GcZlmLuPirXaPkAFvBEKW8QUm6oZcy7AY+YdNAmGtORHJrSwy2LeAmuHLf
 smNYKyNaJxBFcFpruV1+IQ4PK3YIw79o0MFINMbTr2f1iUXKYFIbowXnRhZGoFhTd2na
 g0DZsCA8pRa2mcfZnXcHCNBFlnWTnt1BSt8chCeroWsya5YwkNAH6u+VqzqHcc/VjgV4
 Ph8OPvzPB5PcSns4dVlFeZXOTIblYkoneQtdx7P06HSsNE6H3tFWY7dY1x9bJ5MuEHWe
 Vm/+JNqd8vwIGaCwhmhY4sDh+46yCB19iLW/0dq8pQD9C+qej0pcxyGoSQEglTdipx0X
 aChA==
X-Gm-Message-State: AOAM533UNyzlGrwExPjQIiPIr/jgHhV8f5wztf9OULTfBTKZ/mfHvSi5
 3Vs/r4PygdnRbsWHyvMerLqd/5GKI/SYnh8W1sc8gQ==
X-Google-Smtp-Source: ABdhPJzk8k9ooYv1kWukndt8CMnG1n+NKLbCfqNP+yN4xkeFEb5Podrt5l48C6eWdZitlQgeIkLNwJfZgg3L6agz0ok=
X-Received: by 2002:a1c:2402:: with SMTP id k2mr11313wmk.138.1594052998297;
 Mon, 06 Jul 2020 09:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 6 Jul 2020 09:29:46 -0700
Message-ID: <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
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

On Sat, Jul 4, 2020 at 1:19 PM Dan Williams <dan.j.williams@intel.com> wrote:
>
> Recent events have prompted a Linux position statement on inclusive
> terminology. Given that Linux maintains a coding-style and its own
> idiomatic set of terminology here is a proposal to answer the call to
> replace non-inclusive terminology.
>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  Documentation/process/coding-style.rst          |   12 ++++
>  Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
>  Documentation/process/index.rst                 |    1
>  3 files changed, 77 insertions(+)
>  create mode 100644 Documentation/process/inclusive-terminology.rst
>
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..4b15ab671089 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>
> +For symbol names, avoid introducing new usage of the words 'slave' and
> +'blacklist'

Can you put whitelist in the list, too?

>. Recommended replacements for 'slave' are: 'secondary',
> +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> +'performer'.

Should 'target' be in this list?

Should there be some mention of "master" to go along with "slave"?
This could be complicated -- as has been noted in this thread, the
word "master" has quite a few meanings, several of which are not
related to slavery or to any form of control, and that the meanings
associated with "master" and its cognates in other languages vary.

>  Recommended replacements for blacklist are: 'blocklist' or
> +'denylist'.

As someone who has written seccomp code and described the result as a
"whitelist" or "blacklist" in the past, I have a couple of comments.

First, shouldn't whitelist be in the list?  I find it surprising to
put 'blacklist' in the blocklist but to omit whitelist.

Second, I realize that I grew up thinking that 'whitelist' and
'blacklist' are the common terms for lists of things to be accepted
and rejected and that this biases my perception of what sounds good,
but writing a seccomp "denylist" or "blocklist" doesn't seem to roll
off the tongue.  Perhaps this language would be better:

Is most contexts where 'whitelist' or 'blacklist' might be used, a
descriptive phrase could be used instead.  For example, a seccomp
filter could have a 'list of allowed syscalls' or a 'list of
disallowed syscalls', and just lists could be the 'allowed' or
'accepted' lists and the 'disallowed', 'rejected', or 'blocked' lists.
If a single word replacement for 'whitelist' or 'blacklist' is needed,
'allowlist', 'blocklist', or 'denylist' could be used.


> @@ -0,0 +1,64 @@
> +.. _inclusiveterminology:
> +
> +Linux kernel inclusive terminology
> +==================================
> +
> +The Linux kernel is a global software project, and in 2020 there was a
> +global reckoning on race relations that caused many organizations to
> +re-evaluate their policies and practices relative to the inclusion of
> +people of African descent. This document describes why the 'Naming'
> +section in :ref:`process/coding-style.rst <codingstyle>` recommends
> +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
> +kernel.
> +
> +On the triviality of replacing words
> +====================================
> +
> +The African slave trade was a brutal system of human misery deployed at
> +global scale. Some word choice decisions in a modern software project
> +does next to nothing to compensate for that legacy. So why put any
> +effort into something so trivial in comparison? Because the goal is not
> +to repair, or erase the past. The goal is to maximize availability and
> +efficiency of the global developer community to participate in the Linux
> +kernel development process.

Should this type of historical note be in the document or in the changelog?

Suppose that we put it in this document and then, in two years,
someone notices that the very first bit of text in your changelog that
diff helpfully quoted for you is also mildly offensive to certain
groups  Now we could end up with:

... in 2020 there was a global reckoning ...

... in 2022, people noticed that comparing peoples' opinions on
variable names to medical conditions could be seen as inappropriate
...

etc.  And now this document ends up with a lot of history and also a
lot of content, and the history part starts to resemble the
now-frowned-upon lists of copyrights and changes that clutter the tops
of various kernel C files.  I suppose that changing this could be
deferred until such time as it might be an actual problem, but perhaps
this should go in the changelog instead.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
