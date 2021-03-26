Return-Path: <SRS0=v+8f=IY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BC08C433C1
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:15:26 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2234861A0A
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:15:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2234861A0A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D77EB84B70;
	Fri, 26 Mar 2021 06:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0-h4nmfGuB7; Fri, 26 Mar 2021 06:15:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D47A84B6D;
	Fri, 26 Mar 2021 06:15:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B291CC000E;
	Fri, 26 Mar 2021 06:15:23 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B313C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D02284B6D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sdX22kUu7Mhv
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:15:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47DDE84B6C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:15:21 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lPfkc-0001k7-7n; Fri, 26 Mar 2021 07:15:18 +0100
From: Thorsten Leemhuis <linux@leemhuis.info>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Message-ID: <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
Date: Fri, 26 Mar 2021 07:15:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616739321;34178873;
X-HE-SMSGID: 1lPfkc-0001k7-7n
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: [Ksummit-discuss] [1/5] reporting-issues: header and TLDR
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

On 26.03.21 07:13, Thorsten Leemhuis wrote:
> 
> Lo! Since a few months mainline in
> Documentation/admin-guide/reporting-issues.rst contains a text written
> to obsolete the good old reporting-bugs text. For now, the new document
> still contains a warning at the top that basically says "this is WIP".
> But I'd like to remove that warning and delete reporting-bugs.rst in the
> next merge window to make reporting-issues.rst fully official. With this
> mail I want to give everyone a chance to take a look at the text and
> speak up if you don't want me to move ahead for now.
> 
> For easier review I'll post the text of reporting-issues.rst in reply to
> this mail. I'll do that in a few chunks, as if this was a cover letter
> for a patch-set. 

Here we go:

.. SPDX-License-Identifier: (GPL-2.0+ OR CC-BY-4.0)

..

   If you want to distribute this text under CC-BY-4.0 only, please use 'The

   Linux kernel developers' for author attribution and link this as source:

   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/plain/Documentation/admin-guide/reporting-issues.rst

..

   Note: Only the content of this RST file as found in the Linux kernel sources

   is available under CC-BY-4.0, as versions of this text that were processed

   (for example by the kernel's build system) might contain content taken from

   files which use a more restrictive license.





Reporting issues

++++++++++++++++





The short guide (aka TL;DR)

===========================



If you're facing multiple issues with the Linux kernel at once, report each

separately to its developers. Try your best guess which kernel part might be

causing the issue. Check the :ref:`MAINTAINERS <maintainers>` file for how its

developers expect to be told about issues. Note, it's rarely

`bugzilla.kernel.org <https://bugzilla.kernel.org/>`_, as in almost all cases

the report needs to be sent by email!



Check the destination thoroughly for existing reports; also search the LKML

archives and the web. Join existing discussion if you find matches. If you

don't find any, install `the latest Linux mainline kernel

<https://kernel.org/>`_. Make sure it's vanilla, thus is not patched or using

add-on kernel modules. Also ensure the kernel is running in a healthy

environment and is not already tainted before the issue occurs.



If you can reproduce your issue with the mainline kernel, send a report to the

destination you determined earlier. Make sure it includes all relevant

information, which in case of a regression should mention the change that's

causing it which can often can be found with a bisection. Also ensure the

report reaches all people that need to know about it, for example the security

team, the stable maintainers or the developers of the patch that causes a

regression. Once the report is out, answer any questions that might be raised

and help where you can. That includes keeping the ball rolling: every time a

new rc1 mainline kernel is released, check if the issue is still happening

there and attach a status update to your initial report.



If you can not reproduce the issue with the mainline kernel, consider sticking

with it; if you'd like to use an older version line and want to see it fixed

there, first make sure it's still supported. Install its latest release as

vanilla kernel. If you cannot reproduce the issue there, try to find the commit

that fixed it in mainline or any discussion preceding it: those will often

mention if backporting is planed or considered too complex. If backporting was

not discussed, ask if it's in the cards. In case you don't find any commits or

a preceding discussion, see the Linux-stable mailing list archives for existing

reports, as it might be a regression specific to the version line. If it is,

report it like you would report a problem in mainline (including the

bisection).



If you reached this point without a solution, ask for advice one the

subsystem's mailing list.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
