Return-Path: <SRS0=4urA=7U=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5864CC433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  7 Jun 2020 21:25:58 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD12B2073B
	for <ksummit-discuss@archiver.kernel.org>; Sun,  7 Jun 2020 21:25:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD12B2073B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ubuntu.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73F6C87CB2;
	Sun,  7 Jun 2020 21:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CkiYmReRwjvp; Sun,  7 Jun 2020 21:25:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A49AB87C9A;
	Sun,  7 Jun 2020 21:25:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D444C07FF;
	Sun,  7 Jun 2020 21:25:56 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A2726C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  7 Jun 2020 21:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8679F854FC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  7 Jun 2020 21:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZ61QCk5jQxv
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  7 Jun 2020 21:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9339384E7C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  7 Jun 2020 21:25:54 +0000 (UTC)
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1ji2ng-0001go-Oz; Sun, 07 Jun 2020 21:25:52 +0000
Date: Sun, 7 Jun 2020 23:25:49 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200607212549.f7lzc5gcas3aunmn@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] Extensible Syscalls
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

Most Linux syscall design conventions have been established through trial and
error. One well-known example is the missing flag argument in a range of
syscalls that triggered the addition of a revised version of theses syscalls.
Nowadays, adding a flag argument to keep syscalls extensible is an accepted
convention recorded in our kernel docs.

In this session we'd like to propose and discuss a few simple conventions that
have proven useful over time and a few new ones that were just established
recently with the addition of new in-kernel apis. Ideally these conventions
would be added to the kernel docs and maintainers encouraged to use them as
guidance when new syscalls are added.
We believe that these conventions can lead to a more consistent (and possibly
more pleasant) uapi going forward making programming on Linux easier for
userspace. They hopefully also prevent new syscalls running into various
design pitfalls that have lead to quirky or cumbersome apis and (security) bugs. 

Topics we'd like to discuss include the use of structs versioned by size in
syscalls such as openat2(), sched_{set,get}_attr(), and clone3() and the
associated api that we added last year, whether new syscalls should be allowed
to use nested pointers in general and specifically with an eye on being
conveniently filterable by seccomp, the convention to always use unsigned int
as the type for register-based flag arguments intstead of the current potpourri
of types, naming conventions when revised versions of syscalls are added, and -
ideally a uniform way - how to test whether a syscall supports a given feature.

Thanks!
Aleksa & Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
