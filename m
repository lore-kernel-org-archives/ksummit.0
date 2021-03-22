Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87D61C433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 19:25:25 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E68B61984
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 19:25:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E68B61984
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2504607BD;
	Mon, 22 Mar 2021 19:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vyRTJ8uMYw77; Mon, 22 Mar 2021 19:25:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B0C607B5;
	Mon, 22 Mar 2021 19:25:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BDF2CC000B;
	Mon, 22 Mar 2021 19:25:22 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5EE98C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C9C140339
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jK1V3va6LgKy
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:25:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9821402BE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:25:20 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOQAv-00060F-Hz; Mon, 22 Mar 2021 20:25:17 +0100
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
Date: Mon, 22 Mar 2021 20:25:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616441120;4b7f5377;
X-HE-SMSGID: 1lOQAv-00060F-Hz
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, workflows@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

CgpPbiAyMi4wMy4yMSAxOTozMiwgTGludXMgVG9ydmFsZHMgd3JvdGU6Cj4gT24gTW9uLCBNYXIg
MjIsIDIwMjEgYXQgODoxOCBBTSBUaG9yc3RlbiBMZWVtaHVpcyA8bGludXhAbGVlbWh1aXMuaW5m
bz4gd3JvdGU6Cj4+Cj4+ICAgICBJIGV2ZW4gcmVxdWVzdGVkIGEKPj4gImxpbnV4LXJlZ3Jlc3Np
b25zQHZnZXIua2VybmVsLm9yZyIgYSB3aGlsZSBsYXRlciwgYnV0IGRpZG4ndCBoZWFyCj4+IGFu
eXRoaW5nIGJhY2s7IGFuZCwgc2FkbHksIGFib3V0IHRoZSBzYW1lIHRpbWUgSSBzdGFydGVkIGhh
dmluZyB0cm91YmxlCj4+IGZpbmRpbmcgc3BhcmUgdGltZSBmb3Igd29ya2luZyBvbiByZWdyZXNz
aW9uIHRyYWNraW5nLiA6LS8KPgo+IEhvbmVzdGx5LCBJJ2QgbXVjaCBwcmVmZXIgdGhlIG5hbWUg
J2xpbnV4LXJlZ3Jlc3Npb25zJyBhcyBiZWluZyBtdWNoCj4gbW9yZSB0YXJnZXRlZCB0aGFuICds
aW51eC1pc3N1ZXMnLgoKVGhhdCBvbmx5IHNvbHZlcyBvbmUgb2YgdGhlIHR3byBwcm9ibGVtIEkn
bSB0cnlpbmcgdG8gc29sdmUgKGFsYmVpdCB0aGUKb25lIHRoYXQgaXMgbW9yZSBpbXBvcnRhbnQg
dG8gbWUpLiBUaGF0IHdheSB1c2VycyBzdGlsbCBoYXZlIG5vIGVhc3kgd2F5CnRvIHF1ZXJ5IGZv
ciByZXBvcnRzIGFib3V0IGlzc3VlcyB0aGF0IGFyZSBubyByZWdyZXNzaW9ucyDigJMgc2F5CnNv
bWV0aGluZyBpcyBicm9rZW4gYW5kIHRoZXkgaGF2ZSBubyBpZGVhIGlmIGl0IG9uY2Ugd29ya2Vk
IG9yIG5ldmVyCndvcmtlZCBhdCBhbGwuCgo+IE1ha2UgaXQgY2xlYXIgdGhhdCB0aGUgbGlzdCBp
cyBvbmx5Cj4gZm9yIHJlZ3Jlc3Npb25zIHRoYXQgcGVvcGxlIGNhbiBkZXNjcmliZSBzb21lIHdh
eSwgcmF0aGVyIHRoYW4gc29tZQo+IGdlbmVyYWwgIkkgaGF2ZSBpc3N1ZXMgd2l0aCB4eXoiLgo+
IAo+IFRoZSBtb3JlIGNsZWFyLWN1dCB0aGUgbGlzdCBpcywgdGhlIGJldHRlciwgSSB0aGluay4K
CkkgYWdyZWUgdG8gdGhlIGxhc3QgcG9pbnQgYW5kIHllYWgsIG1heWJlIHJlZ3Jlc3Npb25zIGFy
ZSB0aGUgbW9yZQppbXBvcnRhbnQgcHJvYmxlbSB3ZSBzaG91bGQgd29yayBvbiDigJMgYXQgbGVh
c3QgZnJvbSB0aGUgcGVyc3BlY3RpdmUgb2YKa2VybmVsIGRldmVsb3BtZW50LiAgQnV0IGZyb20g
dGhlIHVzZXJzIHBlcnNwZWN0aXZlIChhbmQKcmVwb3J0aW5nLWlzc3Vlcy5yc3QgaXMgd3JpdHRl
biBmb3IgdGhhdCBwZXJzcGVjdGl2ZSkgaXQgZmVlbCBhIGJpdAp1bnNhdGlzZnlpbmcgdG8gbm90
IGhhdmUgYSBzb2x1dGlvbiB0byBxdWVyeSBmb3IgZXhpc3RpbmcgcmVwb3J0LApyZWdyZXNzaW9u
cyBvciBub3QuIEhtbW1tLi4uCgpDaWFvLCBUaG9yc3RlbgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1c3MgbWFpbGluZyBsaXN0Cktz
dW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCmh0dHBzOi8vbGlzdHMubGlu
dXhmb3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1taXQtZGlzY3Vzcwo=
