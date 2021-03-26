Return-Path: <SRS0=v+8f=IY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81505C433C1
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:20:00 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F237061A3F
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:19:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F237061A3F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4C25414DE;
	Fri, 26 Mar 2021 06:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsgufsBD5rle; Fri, 26 Mar 2021 06:19:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A1BF40FAB;
	Fri, 26 Mar 2021 06:19:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 574E7C000E;
	Fri, 26 Mar 2021 06:19:57 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27D40C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08E0940244
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qi-KmLQF0Jdh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:19:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33C7540237
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:19:55 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lPfp3-0003VY-BD; Fri, 26 Mar 2021 07:19:53 +0100
From: Thorsten Leemhuis <linux@leemhuis.info>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Message-ID: <5ec1b7b0-08d5-e9b8-394f-e03b65534ade@leemhuis.info>
Date: Fri, 26 Mar 2021 07:19:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616739595;ade28fcd;
X-HE-SMSGID: 1lPfp3-0003VY-BD
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: [Ksummit-discuss] [5/5] reporting-issues: addendum
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

T24gMjYuMDMuMjEgMDc6MTMsIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+IAo+IExvISBTaW5j
ZSBhIGZldyBtb250aHMgbWFpbmxpbmUgaW4KPiBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3Jl
cG9ydGluZy1pc3N1ZXMucnN0IGNvbnRhaW5zIGEgdGV4dCB3cml0dGVuCj4gdG8gb2Jzb2xldGUg
dGhlIGdvb2Qgb2xkIHJlcG9ydGluZy1idWdzIHRleHQuIEZvciBub3csIHRoZSBuZXcgZG9jdW1l
bnQKPiBzdGlsbCBjb250YWlucyBhIHdhcm5pbmcgYXQgdGhlIHRvcCB0aGF0IGJhc2ljYWxseSBz
YXlzICJ0aGlzIGlzIFdJUCIuCj4gQnV0IEknZCBsaWtlIHRvIHJlbW92ZSB0aGF0IHdhcm5pbmcg
YW5kIGRlbGV0ZSByZXBvcnRpbmctYnVncy5yc3QgaW4gdGhlCj4gbmV4dCBtZXJnZSB3aW5kb3cg
dG8gbWFrZSByZXBvcnRpbmctaXNzdWVzLnJzdCBmdWxseSBvZmZpY2lhbC4gV2l0aCB0aGlzCj4g
bWFpbCBJIHdhbnQgdG8gZ2l2ZSBldmVyeW9uZSBhIGNoYW5jZSB0byB0YWtlIGEgbG9vayBhdCB0
aGUgdGV4dCBhbmQKPiBzcGVhayB1cCBpZiB5b3UgZG9uJ3Qgd2FudCBtZSB0byBtb3ZlIGFoZWFk
IGZvciBub3cuCj4gCj4gRm9yIGVhc2llciByZXZpZXcgSSdsbCBwb3N0IHRoZSB0ZXh0IG9mIHJl
cG9ydGluZy1pc3N1ZXMucnN0IGluIHJlcGx5IHRvCj4gdGhpcyBtYWlsLiBJJ2xsIGRvIHRoYXQg
aW4gYSBmZXcgY2h1bmtzLCBhcyBpZiB0aGlzIHdhcyBhIGNvdmVyIGxldHRlcgo+IGZvciBhIHBh
dGNoLXNldC4gCgoKCldoeSBzb21lIGlzc3VlcyB3b24ndCBnZXQgYW55IHJlYWN0aW9uIG9yIHJl
bWFpbiB1bmZpeGVkIGFmdGVyIGJlaW5nIHJlcG9ydGVkCgo9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoK
CgpXaGVuIHJlcG9ydGluZyBhIHByb2JsZW0gdG8gdGhlIExpbnV4IGRldmVsb3BlcnMsIGJlIGF3
YXJlIG9ubHkgJ2lzc3VlcyBvZiBoaWdoCgpwcmlvcml0eScgKHJlZ3Jlc3Npb25zLCBzZWN1cml0
eSBpc3N1ZXMsIHNldmVyZSBwcm9ibGVtcykgYXJlIGRlZmluaXRlbHkgZ29pbmcKCnRvIGdldCBy
ZXNvbHZlZC4gVGhlIG1haW50YWluZXJzIG9yIGlmIGFsbCBlbHNlIGZhaWxzIExpbnVzIFRvcnZh
bGRzIGhpbXNlbGYKCndpbGwgbWFrZSBzdXJlIG9mIHRoYXQuIFRoZXkgYW5kIHRoZSBvdGhlciBr
ZXJuZWwgZGV2ZWxvcGVycyB3aWxsIGZpeCBhIGxvdCBvZgoKb3RoZXIgaXNzdWVzIGFzIHdlbGwu
IEJ1dCBiZSBhd2FyZSB0aGF0IHNvbWV0aW1lcyB0aGV5IGNhbid0IG9yIHdvbid0IGhlbHA7IGFu
ZAoKc29tZXRpbWVzIHRoZXJlIGlzbid0IGV2ZW4gYW55b25lIHRvIHNlbmQgYSByZXBvcnQgdG8u
CgoKClRoaXMgaXMgYmVzdCBleHBsYWluZWQgd2l0aCBrZXJuZWwgZGV2ZWxvcGVycyB0aGF0IGNv
bnRyaWJ1dGUgdG8gdGhlIExpbnV4CgprZXJuZWwgaW4gdGhlaXIgc3BhcmUgdGltZS4gUXVpdGUg
YSBmZXcgb2YgdGhlIGRyaXZlcnMgaW4gdGhlIGtlcm5lbCB3ZXJlCgp3cml0dGVuIGJ5IHN1Y2gg
cHJvZ3JhbW1lcnMsIG9mdGVuIGJlY2F1c2UgdGhleSBzaW1wbHkgd2FudGVkIHRvIG1ha2UgdGhl
aXIKCmhhcmR3YXJlIHVzYWJsZSBvbiB0aGVpciBmYXZvcml0ZSBvcGVyYXRpbmcgc3lzdGVtLgoK
CgpUaGVzZSBwcm9ncmFtbWVycyBtb3N0IG9mIHRoZSB0aW1lIHdpbGwgaGFwcGlseSBmaXggcHJv
YmxlbXMgb3RoZXIgcGVvcGxlCgpyZXBvcnQuIEJ1dCBub2JvZHkgY2FuIGZvcmNlIHRoZW0gdG8g
ZG8sIGFzIHRoZXkgYXJlIGNvbnRyaWJ1dGluZyB2b2x1bnRhcmlseS4KCgoKVGhlbiB0aGVyZSBh
cmUgc2l0dWF0aW9ucyB3aGVyZSBzdWNoIGRldmVsb3BlcnMgcmVhbGx5IHdhbnQgdG8gZml4IGFu
IGlzc3VlLAoKYnV0IGNhbid0OiBzb21ldGltZXMgdGhleSBsYWNrIGhhcmR3YXJlIHByb2dyYW1t
aW5nIGRvY3VtZW50YXRpb24gdG8gZG8gc28uCgpUaGlzIG9mdGVuIGhhcHBlbnMgd2hlbiB0aGUg
cHVibGljbHkgYXZhaWxhYmxlIGRvY3MgYXJlIHN1cGVyZmljaWFsIG9yIHRoZQoKZHJpdmVyIHdh
cyB3cml0dGVuIHdpdGggdGhlIGhlbHAgb2YgcmV2ZXJzZSBlbmdpbmVlcmluZy4KCgoKU29vbmVy
IG9yIGxhdGVyIHNwYXJlIHRpbWUgZGV2ZWxvcGVycyB3aWxsIGFsc28gc3RvcCBjYXJpbmcgZm9y
IHRoZSBkcml2ZXIuCgpNYXliZSB0aGVpciB0ZXN0IGhhcmR3YXJlIGJyb2tlLCBnb3QgcmVwbGFj
ZWQgYnkgc29tZXRoaW5nIG1vcmUgZmFuY3ksIG9yIGlzIHNvCgpvbGQgdGhhdCBpdCdzIHNvbWV0
aGluZyB5b3UgZG9uJ3QgZmluZCBtdWNoIG91dHNpZGUgb2YgY29tcHV0ZXIgbXVzZXVtcwoKYW55
bW9yZS4gU29tZXRpbWVzIGRldmVsb3BlciBzdG9wcyBjYXJpbmcgZm9yIHRoZWlyIGNvZGUgYW5k
IExpbnV4IGF0IGFsbCwgYXMKCnNvbWV0aGluZyBkaWZmZXJlbnQgaW4gdGhlaXIgbGlmZSBiZWNh
bWUgd2F5IG1vcmUgaW1wb3J0YW50LiBJbiBzb21lIGNhc2VzCgpub2JvZHkgaXMgd2lsbGluZyB0
byB0YWtlIG92ZXIgdGhlIGpvYiBhcyBtYWludGFpbmVyIOKAkyBhbmQgbm9ib2R5IGNhbiBiZSBm
b3JjZWQKCnRvLCBhcyBjb250cmlidXRpbmcgdG8gdGhlIExpbnV4IGtlcm5lbCBpcyBkb25lIG9u
IGEgdm9sdW50YXJ5IGJhc2lzLiBBYmFuZG9uZWQKCmRyaXZlcnMgbmV2ZXJ0aGVsZXNzIHJlbWFp
biBpbiB0aGUga2VybmVsOiB0aGV5IGFyZSBzdGlsbCB1c2VmdWwgZm9yIHBlb3BsZSBhbmQKCnJl
bW92aW5nIHdvdWxkIGJlIGEgcmVncmVzc2lvbi4KCgoKVGhlIHNpdHVhdGlvbiBpcyBub3QgdGhh
dCBkaWZmZXJlbnQgd2l0aCBkZXZlbG9wZXJzIHRoYXQgYXJlIHBhaWQgZm9yIHRoZWlyCgp3b3Jr
IG9uIHRoZSBMaW51eCBrZXJuZWwuIFRob3NlIGNvbnRyaWJ1dGUgbW9zdCBjaGFuZ2VzIHRoZXNl
IGRheXMuIEJ1dCB0aGVpcgoKZW1wbG95ZXJzIHNvb25lciBvciBsYXRlciBhbHNvIHN0b3AgY2Fy
aW5nIGZvciB0aGVpciBjb2RlIG9yIG1ha2UgaXRzCgpwcm9ncmFtbWVyIGZvY3VzIG9uIG90aGVy
IHRoaW5ncy4gSGFyZHdhcmUgdmVuZG9ycyBmb3IgZXhhbXBsZSBlYXJuIHRoZWlyIG1vbmV5Cgpt
YWlubHkgYnkgc2VsbGluZyBuZXcgaGFyZHdhcmU7IHF1aXRlIGEgZmV3IG9mIHRoZW0gaGVuY2Ug
YXJlIG5vdCBpbnZlc3RpbmcKCm11Y2ggdGltZSBhbmQgZW5lcmd5IGluIG1haW50YWluaW5nIGEg
TGludXgga2VybmVsIGRyaXZlciBmb3Igc29tZXRoaW5nIHRoZXkKCnN0b3BwZWQgc2VsbGluZyB5
ZWFycyBhZ28uIEVudGVycHJpc2UgTGludXggZGlzdHJpYnV0b3JzIG9mdGVuIGNhcmUgZm9yIGEK
CmxvbmdlciB0aW1lIHBlcmlvZCwgYnV0IGluIG5ldyB2ZXJzaW9ucyBvZnRlbiBsZWF2ZSBzdXBw
b3J0IGZvciBvbGQgYW5kIHJhcmUKCmhhcmR3YXJlIGFzaWRlIHRvIGxpbWl0IHRoZSBzY29wZS4g
T2Z0ZW4gc3BhcmUgdGltZSBjb250cmlidXRvcnMgdGFrZSBvdmVyIG9uY2UKCmEgY29tcGFueSBv
cnBoYW5zIHNvbWUgY29kZSwgYnV0IGFzIG1lbnRpb25lZCBhYm92ZTogc29vbmVyIG9yIGxhdGVy
IHRoZXkgd2lsbAoKbGVhdmUgdGhlIGNvZGUgYmVoaW5kLCB0b28uCgoKClByaW9yaXRpZXMgYXJl
IGFub3RoZXIgcmVhc29uIHdoeSBzb21lIGlzc3VlcyBhcmUgbm90IGZpeGVkLCBhcyBtYWludGFp
bmVycwoKcXVpdGUgb2Z0ZW4gYXJlIGZvcmNlZCB0byBzZXQgdGhvc2UsIGFzIHRpbWUgdG8gd29y
ayBvbiBMaW51eCBpcyBsaW1pdGVkLgoKVGhhdCdzIHRydWUgZm9yIHNwYXJlIHRpbWUgb3IgdGhl
IHRpbWUgZW1wbG95ZXJzIGdyYW50IHRoZWlyIGRldmVsb3BlcnMgdG8KCnNwZW5kIG9uIG1haW50
ZW5hbmNlIHdvcmsgb24gdGhlIHVwc3RyZWFtIGtlcm5lbC4gU29tZXRpbWVzIG1haW50YWluZXJz
IGFsc28KCmdldCBvdmVyd2hlbG1lZCB3aXRoIHJlcG9ydHMsIGV2ZW4gaWYgYSBkcml2ZXIgaXMg
d29ya2luZyBuZWFybHkgcGVyZmVjdGx5LiBUbwoKbm90IGdldCBjb21wbGV0ZWx5IHN0dWNrLCB0
aGUgcHJvZ3JhbW1lciB0aHVzIG1pZ2h0IGhhdmUgbm8gb3RoZXIgY2hvaWNlIHRoYW4KCnRvIHBy
aW9yaXRpemUgaXNzdWUgcmVwb3J0cyBhbmQgcmVqZWN0IHNvbWUgb2YgdGhlbS4KCgoKQnV0IGRv
bid0IHdvcnJ5IHRvbyBtdWNoIGFib3V0IGFsbCBvZiB0aGlzLCBhIGxvdCBvZiBkcml2ZXJzIGhh
dmUgYWN0aXZlCgptYWludGFpbmVycyB3aG8gYXJlIHF1aXRlIGludGVyZXN0ZWQgaW4gZml4aW5n
IGFzIG1hbnkgaXNzdWVzIGFzIHBvc3NpYmxlLgoKCgoKCkNsb3Npbmcgd29yZHMKCj09PT09PT09
PT09PT0KCgoKQ29tcGFyZWQgd2l0aCBvdGhlciBGcmVlL0xpYnJlICYgT3BlbiBTb3VyY2UgU29m
dHdhcmUgaXQncyBoYXJkIHRvIHJlcG9ydAoKaXNzdWVzIHRvIHRoZSBMaW51eCBrZXJuZWwgZGV2
ZWxvcGVyczogdGhlIGxlbmd0aCBhbmQgY29tcGxleGl0eSBvZiB0aGlzCgpkb2N1bWVudCBhbmQg
dGhlIGltcGxpY2F0aW9ucyBiZXR3ZWVuIHRoZSBsaW5lcyBpbGx1c3RyYXRlIHRoYXQuIEJ1dCB0
aGF0J3MgaG93CgppdCBpcyBmb3Igbm93LiBUaGUgbWFpbiBhdXRob3Igb2YgdGhpcyB0ZXh0IGhv
cGVzIGRvY3VtZW50aW5nIHRoZSBzdGF0ZSBvZiB0aGUKCmFydCB3aWxsIGxheSBzb21lIGdyb3Vu
ZHdvcmsgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uIG92ZXIgdGltZS4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcg
bGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRwczovL2xp
c3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MK
