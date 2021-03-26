Return-Path: <SRS0=v+8f=IY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33347C433C1
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:16:49 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B88D261A38
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:16:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B88D261A38
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A8E541465;
	Fri, 26 Mar 2021 06:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1QWjOSpr53I; Fri, 26 Mar 2021 06:16:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03F1A40FAF;
	Fri, 26 Mar 2021 06:16:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9C1AEC000E;
	Fri, 26 Mar 2021 06:16:45 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C07EFC000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AFA2A84B7C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDUjYGPoXj4Q
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:16:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A48B84B7B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:16:43 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lPflw-0003j3-VA; Fri, 26 Mar 2021 07:16:41 +0100
From: Thorsten Leemhuis <linux@leemhuis.info>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Message-ID: <b14050b6-8426-a762-49f1-1565c48a5724@leemhuis.info>
Date: Fri, 26 Mar 2021 07:16:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616739403;08429cc5;
X-HE-SMSGID: 1lPflw-0003j3-VA
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: [Ksummit-discuss] [2/5] reporting-issues: step-by-step-guide: main
 and two sub-processes for stable/longterm
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


Step-by-step guide how to report issues to the kernel maintainers

=================================================================



The above TL;DR outlines roughly how to report issues to the Linux kernel

developers. It might be all that's needed for people already familiar with

reporting issues to Free/Libre & Open Source Software (FLOSS) projects. For

everyone else there is this section. It is more detailed and uses a

step-by-step approach. It still tries to be brief for readability and leaves

out a lot of details; those are described below the step-by-step guide in a

reference section, which explains each of the steps in more detail.



Note: this section covers a few more aspects than the TL;DR and does things in

a slightly different order. That's in your interest, to make sure you notice

early if an issue that looks like a Linux kernel problem is actually caused by

something else. These steps thus help to ensure the time you invest in this

process won't feel wasted in the end:



 * Are you facing an issue with a Linux kernel a hardware or software vendor

   provided? Then in almost all cases you are better off to stop reading this

   document and reporting the issue to your vendor instead, unless you are

   willing to install the latest Linux version yourself. Be aware the latter

   will often be needed anyway to hunt down and fix issues.



 * Perform a rough search for existing reports with your favorite internet

   search engine; additionally, check the archives of the Linux Kernel Mailing

   List (LKML). If you find matching reports, join the discussion instead of

   sending a new one.



 * See if the issue you are dealing with qualifies as regression, security

   issue, or a really severe problem: those are 'issues of high priority' that

   need special handling in some steps that are about to follow.



 * Make sure it's not the kernel's surroundings that are causing the issue

   you face.



 * Create a fresh backup and put system repair and restore tools at hand.



 * Ensure your system does not enhance its kernels by building additional

   kernel modules on-the-fly, which solutions like DKMS might be doing locally

   without your knowledge.



 * Check if your kernel was 'tainted' when the issue occurred, as the event

   that made the kernel set this flag might be causing the issue you face.



 * Write down coarsely how to reproduce the issue. If you deal with multiple

   issues at once, create separate notes for each of them and make sure they

   work independently on a freshly booted system. That's needed, as each issue

   needs to get reported to the kernel developers separately, unless they are

   strongly entangled.



 * If you are facing a regression within a stable or longterm version line

   (say something broke when updating from 5.10.4 to 5.10.5), scroll down to

   'Dealing with regressions within a stable and longterm kernel line'.



 * Locate the driver or kernel subsystem that seems to be causing the issue.

   Find out how and where its developers expect reports. Note: most of the

   time this won't be bugzilla.kernel.org, as issues typically need to be sent

   by mail to a maintainer and a public mailing list.



 * Search the archives of the bug tracker or mailing list in question

   thoroughly for reports that might match your issue. If you find anything,

   join the discussion instead of sending a new report.



After these preparations you'll now enter the main part:



 * Unless you are already running the latest 'mainline' Linux kernel, better

   go and install it for the reporting process. Testing and reporting with

   the latest 'stable' Linux can be an acceptable alternative in some

   situations; during the merge window that actually might be even the best

   approach, but in that development phase it can be an even better idea to

   suspend your efforts for a few days anyway. Whatever version you choose,

   ideally use a 'vanilla' build. Ignoring these advices will dramatically

   increase the risk your report will be rejected or ignored.



 * Ensure the kernel you just installed does not 'taint' itself when

   running.



 * Reproduce the issue with the kernel you just installed. If it doesn't show

   up there, scroll down to the instructions for issues only happening with

   stable and longterm kernels.



 * Optimize your notes: try to find and write the most straightforward way to

   reproduce your issue. Make sure the end result has all the important

   details, and at the same time is easy to read and understand for others

   that hear about it for the first time. And if you learned something in this

   process, consider searching again for existing reports about the issue.



 * If your failure involves a 'panic', 'Oops', 'warning', or 'BUG', consider

   decoding the kernel log to find the line of code that triggered the error.



 * If your problem is a regression, try to narrow down when the issue was

   introduced as much as possible.



 * Start to compile the report by writing a detailed description about the

   issue. Always mention a few things: the latest kernel version you installed

   for reproducing, the Linux Distribution used, and your notes on how to

   reproduce the issue. Ideally, make the kernel's build configuration

   (.config) and the output from ``dmesg`` available somewhere on the net and

   link to it. Include or upload all other information that might be relevant,

   like the output/screenshot of an Oops or the output from ``lspci``. Once

   you wrote this main part, insert a normal length paragraph on top of it

   outlining the issue and the impact quickly. On top of this add one sentence

   that briefly describes the problem and gets people to read on. Now give the

   thing a descriptive title or subject that yet again is shorter. Then you're

   ready to send or file the report like the MAINTAINERS file told you, unless

   you are dealing with one of those 'issues of high priority': they need

   special care which is explained in 'Special handling for high priority

   issues' below.



 * Wait for reactions and keep the thing rolling until you can accept the

   outcome in one way or the other. Thus react publicly and in a timely manner

   to any inquiries. Test proposed fixes. Do proactive testing: retest with at

   least every first release candidate (RC) of a new mainline version and

   report your results. Send friendly reminders if things stall. And try to

   help yourself, if you don't get any help or if it's unsatisfying.





Reporting regressions within a stable and longterm kernel line

--------------------------------------------------------------



This subsection is for you, if you followed above process and got sent here at

the point about regression within a stable or longterm kernel version line. You

face one of those if something breaks when updating from 5.10.4 to 5.10.5 (a

switch from 5.9.15 to 5.10.5 does not qualify). The developers want to fix such

regressions as quickly as possible, hence there is a streamlined process to

report them:



 * Check if the kernel developers still maintain the Linux kernel version

   line you care about: go to the front page of kernel.org and make sure it

   mentions the latest release of the particular version line without an

   '[EOL]' tag.



 * Check the archives of the Linux stable mailing list for existing reports.



 * Install the latest release from the particular version line as a vanilla

   kernel. Ensure this kernel is not tainted and still shows the problem, as

   the issue might have already been fixed there.



 * Send a short problem report by mail to the people and mailing lists the

   :ref:`MAINTAINERS <maintainers>` file specifies in the section 'STABLE

   BRANCH'. Roughly describe the issue and ideally explain how to reproduce

   it. Mention the first version that shows the problem and the last version

   that's working fine. Then wait for further instructions.



The reference section below explains each of these steps in more detail.





Reporting issues only occurring in older kernel version lines

-------------------------------------------------------------



This subsection is for you, if you tried the latest mainline kernel as outlined

above, but failed to reproduce your issue there; at the same time you want to

see the issue fixed in older version lines or a vendor kernel that's regularly

rebased on new stable or longterm releases. If that case follow these steps:



 * Prepare yourself for the possibility that going through the next few steps

   might not get the issue solved in older releases: the fix might be too big

   or risky to get backported there.



 * Perform the first three steps in the section "Dealing with regressions

   within a stable and longterm kernel line" above.



 * Search the Linux kernel version control system for the change that fixed

   the issue in mainline, as its commit message might tell you if the fix is

   scheduled for backporting already. If you don't find anything that way,

   search the appropriate mailing lists for posts that discuss such an issue

   or peer-review possible fixes; then check the discussions if the fix was

   deemed unsuitable for backporting. If backporting was not considered at

   all, join the newest discussion, asking if it's in the cards.



 * One of the former steps should lead to a solution. If that doesn't work

   out, ask the maintainers for the subsystem that seems to be causing the

   issue for advice; CC the mailing list for the particular subsystem as well

   as the stable mailing list.



The reference section below explains each of these steps in more detail.





_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
