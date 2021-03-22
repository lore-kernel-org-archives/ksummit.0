Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84BFC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 18:55:42 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECC8261992
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 18:55:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECC8261992
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E671402EC;
	Mon, 22 Mar 2021 18:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7R3oEm-9Ap4; Mon, 22 Mar 2021 18:55:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABD0D402E0;
	Mon, 22 Mar 2021 18:55:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 674CEC000A;
	Mon, 22 Mar 2021 18:55:39 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF859C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F8A0403F3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aEDZ6O_iXUwf
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:55:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2A04403F0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:55:36 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOPi6-0003ws-TQ; Mon, 22 Mar 2021 19:55:31 +0100
To: Eric Wong <e@80x24.org>,
 James Bottomley <James.Bottomley@HansenPartnership.com>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
 <e93ad98a34828a4140fa59c1fb5b01f03c6f4245.camel@HansenPartnership.com>
 <20210322183427.GA1195@dcvr>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <09a6256e-0015-d360-9347-f025a7d5adfd@leemhuis.info>
Date: Mon, 22 Mar 2021 19:55:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210322183427.GA1195@dcvr>
Content-Language: en-BW
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616439336;1a56d2ee;
X-HE-SMSGID: 1lOPi6-0003ws-TQ
Cc: Greg KH <gregkh@linuxfoundation.org>, workflows@vger.kernel.org,
 ksummit-discuss@lists.linuxfoundation.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

On 22.03.21 19:34, Eric Wong wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>> On Mon, 2021-03-22 at 13:16 -0400, Konstantin Ryabitsev wrote:
>>> On Mon, Mar 22, 2021 at 04:18:14PM +0100, Thorsten Leemhuis wrote:
>>>> Note, there is a second reason why ksummit-discuss is CCed: another
>>>> reason why I want to create this new list is making it easier to
>>>> find and track regressions reported to our various mailing lists
>>>> (often without LKML in CC, as for some subsystems it's seems to be
>>>> custom to not CC it). 
>>>
>>> FYI, there will soon be a unified "search all of lore.kernel.org
>>> regardless of the list/feed source" capability

Ahh, nice, thx to everyone working on that!

> [...]
>>> Once we have this ability, we should be able to plug in multiple
>>> sources beyond just mailing lists, including a feed of all
>>> bugzilla.kernel.org changes.

Out of curiosity: will that work for other bug trackers as well? Like
the gitlab instance used by the drm developers? It's not really
important and I guess the answer will be "no", but the question came up
while at it...

>>> This should allow someone an easy way to
>>> query specific bugs and may not require the creation of a separate
>>> list.
>>>
>>> I'm not opposed to the creation of a new list, of course -- just want
>>> to make sure it's aligned with the improvements we are working to
>>> make available.
>>
>> I suspect the problem is that there's no known useful search string to
>> find a bug report even given a searchable set of lists,

Exactly. Due to my work on reporting-issues.rst I try to look at it from
the users point of view. And they currently have no easy way to search
for existing reports without getting lots of other stuff mixed into the
results they are not interested in. That makes it hard. :-/

>> so the main
>> purpose of this list would be "if it's on here, it's a bug report" and
>> the triage team

If one exists ;-)

>> can cc additional lists as appropriate.  Then we simply
>> tell everyone to send kernel bugs to this list and ask maintainers to
>> cc it if a bug report shows up on their list?
> 
> It seems having "bug" or "regression" in the subject could be sufficient?
>
> "s:Regression" or "s:Bug" can be used to query messages reasonably
> quickly:

Could, but I fear it might fail, as modifying the subject is a little
unusual to the normal working style; but "adding people and appropriate
mailing lists to the CC" OTOH is something that people do every day.

And that's why I still think having a separate list is the best idea.
But using tags is totally fine for me, if that the general consensus.

Ciao, Thorsten
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
