Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC986C433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:08:09 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DF9F6192B
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:08:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DF9F6192B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D953183F9C;
	Tue, 23 Mar 2021 18:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YKq_eL1snosa; Tue, 23 Mar 2021 18:08:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 312E283F87;
	Tue, 23 Mar 2021 18:08:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E234EC000E;
	Tue, 23 Mar 2021 18:08:06 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02D43C000D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E93AB404EE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fjj4EGqoGT6p
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:08:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A609A404EC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:08:02 +0000 (UTC)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 12NI7RRV010579
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Mar 2021 14:07:28 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 763FF15C39CC; Tue, 23 Mar 2021 14:07:27 -0400 (EDT)
Date: Tue, 23 Mar 2021 14:07:27 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <YFouX8vspDCFcBXT@mit.edu>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <20210323122025.77888b49@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323122025.77888b49@gandalf.local.home>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Thorsten Leemhuis <linux@leemhuis.info>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
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

T24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgMTI6MjA6MjVQTSAtMDQwMCwgU3RldmVuIFJvc3RlZHQg
d3JvdGU6Cj4gT24gTW9uLCAyMiBNYXIgMjAyMSAyMDoyNToxNSArMDEwMAo+IFRob3JzdGVuIExl
ZW1odWlzIDxsaW51eEBsZWVtaHVpcy5pbmZvPiB3cm90ZToKPiAKPiA+IEkgYWdyZWUgdG8gdGhl
IGxhc3QgcG9pbnQgYW5kIHllYWgsIG1heWJlIHJlZ3Jlc3Npb25zIGFyZSB0aGUgbW9yZQo+ID4g
aW1wb3J0YW50IHByb2JsZW0gd2Ugc2hvdWxkIHdvcmsgb24g4oCTIGF0IGxlYXN0IGZyb20gdGhl
IHBlcnNwZWN0aXZlIG9mCj4gPiBrZXJuZWwgZGV2ZWxvcG1lbnQuICBCdXQgZnJvbSB0aGUgdXNl
cnMgcGVyc3BlY3RpdmUgKGFuZAo+ID4gcmVwb3J0aW5nLWlzc3Vlcy5yc3QgaXMgd3JpdHRlbiBm
b3IgdGhhdCBwZXJzcGVjdGl2ZSkgaXQgZmVlbCBhIGJpdAo+ID4gdW5zYXRpc2Z5aW5nIHRvIG5v
dCBoYXZlIGEgc29sdXRpb24gdG8gcXVlcnkgZm9yIGV4aXN0aW5nIHJlcG9ydCwKPiA+IHJlZ3Jl
c3Npb25zIG9yIG5vdC4gSG1tbW0uLi4KPiAKPiBJIHRoaW5rIHRoZSBidWxrIG9mIHVzZXIgaXNz
dWVzIGFyZSBnb2luZyB0byBiZSByZWdyZXNzaW9ucy4gQWx0aG91Z2ggeW91Cj4gbWF5IGJlIGlu
IGEgYmV0dGVyIHBvc2l0aW9uIHRvIGtub3cgZm9yIHN1cmUsIGJ1dCBhdCBsZWFzdCBmb3IgbWUs
IHdlYXJpbmcKPiBteSAidXNlciIgaGF0LCB0aGUgdGhpbmcgdGhhdCBnZXRzIG1lIHRoZSBtb3N0
IGlzIHVwZ3JhZGluZyB0byBhIG5ldyBrZXJuZWwKPiBhbmQgc3VkZGVubHkgc29tZXRoaW5nIHRo
YXQgdXNlIHRvIHdvcmsgbm8gbG9uZ2VyIGRvZXMuIEFuZCB0aGF0IGlzIHRoZQo+IGRlZmluaXRp
b24gb2YgYSByZWdyZXNzaW9uLiBNeSB0ZXN0IGJveGVzIHN0aWxsIHJ1biBvbGQgZGlzdHJvcyAo
b25lIGlzCj4gcnVubmluZyBmZWRvcmEgMTMpLiBUaGVzZSBhcmUgdGhlIGJveGVzIHRoYXQgY2F0
Y2ggdGhlIG1vc3QgaXNzdWVzLCBhbmQgaWYKPiB0aGV5IGRvLCB0aGV5IGFyZSBwcmV0dHkgbXVj
aCBndWFyYW50ZWVkIHRvIGJlIGEgcmVncmVzc2lvbi4KCkkgdGhpbmsgaXQgZGVwZW5kcyBvbiB0
aGUgdXNlciBhbmQgdGhlIHN1YnN5c3RlbS4gIFlvdSdyZSBhCnNvcGhpc3RpY2F0ZWQgdXNlciwg
YnV0IEkndmUgZmllbGRlZCBhIGdvb2RseSBudW1iZXIgb2YgZXh0NCAiYnVnCnJlcG9ydHMiIHdo
aWNoIHdlcmUgY29taW5nIGZyb20gYSBVYnVudHUgMTYuMDQga2VybmVsLCBvciBhIHVzZXIgd2hv
CmlzIHNlZWluZyBhIGJsb2NrIGRldmljZSBpc3N1ZSAoZWl0aGVyIGEgZHJpdmVyIGJ1ZyBvciBh
IGhhcmR3YXJlCmZhaWx1cmUpLCBvciBpbiBzb21lIGNhc2VzIGJvdGguCgpBIGxvdCBvZiB0aGVz
ZSAiYnVnIHJlcG9ydHMiIHdvdWxkIGJlIGhlYWRlZCBvZmYgYXQgdGhlIHBhc3MgaWYgd2UKYWR2
ZXJ0aXNlZDoKCmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2FkbWluLWd1
aWRlL3JlcG9ydGluZy1pc3N1ZXMuaHRtbAoKbXVjaCBtb3JlIGhlYXZpbHk7IGFzc3VtaW5nIHdl
IGNhbiBnZXQgdGhlIHVzZXJzIHRvIGFjdHVhbGx5IHJlYWQgaXQsCmZpcnN0LgoKCQkJCQkJLSBU
ZWQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1p
dC1kaXNjdXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0
aW9uLm9yZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5m
by9rc3VtbWl0LWRpc2N1c3MK
