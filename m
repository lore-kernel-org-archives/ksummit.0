Return-Path: <SRS0=pgec=XN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18C25C4CEC4
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 14:12:01 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1D3421907
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 14:12:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="S/PEL4lw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1D3421907
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5D667DA1;
	Wed, 18 Sep 2019 14:12:00 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3ADD5D9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 14:11:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 84D5C8B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 14:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Yohvd0Idt9XF7Z6aLd86ae0gny3xbIPIECy+nZxQfLE=;
	b=S/PEL4lw1qOMpx3VheqesgCV1
	AIiEYbnI2+76xp2AdoZPxn99nn4aBnFFjMqZDtORB/z7ZMSmPUc8cQgoQ+zPzDCZMzxEwMNI2Xisv
	7Kt8c+FOSVluINCBfYJCFxm9YCOt8RvGMA+E9yntY3tGoE+taqsw2dB1Y3aeOw2GXqOH66/bK+39F
	DpBuzmAmm4vHuSOsaIPBL4rSbm/3ziVEeebXN9NwQ8syvEOt2bDqZ70gcln9F2e8GgQMQQgpmegct
	UQUPONz3+M1pb3nEeAfnBgNDdMo7gr9gQQcsO8K8cOYzdoFXSXXe3K9qefRYIbKQ6yIzlHfqXVpAc
	Kl+PGB/QQ==;
Received: from 177.96.192.152.dynamic.adsl.gvt.net.br ([177.96.192.152]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAagX-0002oN-EH; Wed, 18 Sep 2019 14:11:57 +0000
Date: Wed, 18 Sep 2019 11:11:53 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: =?UTF-8?B?QW5kcsOp?= Almeida <andrealmeid@collabora.com>
Message-ID: <20190918111153.6f52c651@coco.lan>
In-Reply-To: <1e479f17-dbc8-b44d-bd1e-4229a6dbf151@collabora.com>
References: <20190918123620.GA6306@pendragon.ideasonboard.com>
	<9cdbab30b9e0a435b97113b90645e647e8165225.1568815176.git.mchehab+samsung@kernel.org>
	<1e479f17-dbc8-b44d-bd1e-4229a6dbf151@collabora.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v2] media: add a subsystem profile
	documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

RW0gV2VkLCAxOCBTZXAgMjAxOSAxMTowNzoxNiAtMDMwMApBbmRyw6kgQWxtZWlkYSA8YW5kcmVh
bG1laWRAY29sbGFib3JhLmNvbT4gZXNjcmV2ZXU6Cgo+IEhlbGxvIE1hdXJvLAo+IAo+IE9uIDkv
MTgvMTkgMTA6NTkgQU0sIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IERvY3VtZW50
IHRoZSBiYXNpYyBwb2xpY2llcyBvZiB0aGUgbWVkaWEgc3Vic3lzdGVtIHByb2ZpbGUuCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitzYW1zdW5n
QGtlcm5lbC5vcmc+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL21lZGlhL2luZGV4LnJzdCAg
ICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4gIC4uLi9tZWRpYS9tYWludGFpbmVyLWVudHJ5LXBy
b2ZpbGUucnN0ICAgICAgICB8IDE1NyArKysrKysrKysrKysrKysrKysKPiA+ICBNQUlOVEFJTkVS
UyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ID4gIDMgZmlsZXMg
Y2hhbmdlZCwgMTU5IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9tZWRpYS9tYWludGFpbmVyLWVudHJ5LXByb2ZpbGUucnN0Cj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL21lZGlhL2luZGV4LnJzdCBiL0RvY3VtZW50YXRpb24vbWVk
aWEvaW5kZXgucnN0Cj4gPiBpbmRleCAwMzAxYzI1ZmY4ODcuLmFjOTQ2ODViODIyYSAxMDA2NDQK
PiA+IC0tLSBhL0RvY3VtZW50YXRpb24vbWVkaWEvaW5kZXgucnN0Cj4gPiArKysgYi9Eb2N1bWVu
dGF0aW9uL21lZGlhL2luZGV4LnJzdAo+ID4gQEAgLTEyLDYgKzEyLDcgQEAgTGludXggTWVkaWEg
U3Vic3lzdGVtIERvY3VtZW50YXRpb24KPiA+ICAuLiB0b2N0cmVlOjoKPiA+ICAgICA6bWF4ZGVw
dGg6IDIKPiA+ICAKPiA+ICsgICBtYWludGFpbmVyLWVudHJ5LXByb2ZpbGUKPiA+ICAgICBtZWRp
YV91YXBpCj4gPiAgICAgbWVkaWFfa2FwaQo+ID4gICAgIGR2Yi1kcml2ZXJzL2luZGV4Cj4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9tZWRpYS9tYWludGFpbmVyLWVudHJ5LXByb2ZpbGUu
cnN0IGIvRG9jdW1lbnRhdGlvbi9tZWRpYS9tYWludGFpbmVyLWVudHJ5LXByb2ZpbGUucnN0Cj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi42OGQ2NDJhYmUy
YzEKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vbWVkaWEvbWFpbnRh
aW5lci1lbnRyeS1wcm9maWxlLnJzdAo+ID4gQEAgLTAsMCArMSwxNTcgQEAKPiA+ICtNZWRpYSBT
dWJzeXN0ZW0gUHJvZmlsZQo+ID4gKz09PT09PT09PT09PT09PT09PT09PT09Cj4gPiArCj4gPiAr
T3ZlcnZpZXcKPiA+ICstLS0tLS0tLQo+ID4gKwo+ID4gK1RoZSBtZWRpYSBzdWJzeXN0ZW0gY292
ZXJzIHN1cHBvcnQgZm9yIGEgdmFyaWV0eSBvZiBkZXZpY2VzOiBzdHJlYW0KPiA+ICtjYXB0dXJl
LCBhbmFsb2cgYW5kIGRpZ2l0YWwgVFYsIGNhbWVyYXMsIHJlbW90ZSBjb250cm9sbGVycywgSERN
SSBDRUMKPiA+ICthbmQgbWVkaWEgcGlwZWxpbmUgY29udHJvbC4KPiA+ICsKPiA+ICtJdCBjb3Zl
cnMsIG1haW5seSwgdGhlIGNvbnRlbnRzIG9mIHRob3NlIGRpcmVjdG9yaWVzOgo+ID4gKwo+ID4g
KyAgLSBkcml2ZXJzL21lZGlhCj4gPiArICAtIGRyaXZlcnMvc3RhZ2luZy9tZWRpYQo+ID4gKyAg
LSBEb2N1bWVudGF0aW9uL21lZGlhCj4gPiArICAtIGluY2x1ZGUvbWVkaWEKPiA+ICsKPiA+ICtC
b3RoIG1lZGlhIHVzZXJzcGFjZSBhbmQgS2VybmVsIEFQSXMgYXJlIGRvY3VtZW50ZWQgYW5kIHNo
b3VsZCBiZSBrZXB0IGluCj4gPiArc3luYyB3aXRoIHRoZSBBUEkgY2hhbmdlcy4gSXQgbWVhbnMg
dGhhdCBhbGwgcGF0Y2hlcyB0aGF0IGFkZCBuZXcKPiA+ICtmZWF0dXJlcyB0byB0aGUgc3Vic3lz
dGVtIHNob3VsZCBhbHNvIGJyaW5nIGNoYW5nZXMgdG8gdGhlIGNvcnJlc3BvbmRpbmcKPiA+ICtB
UEkgZmlsZXMuCj4gPiArCj4gPiArQWxzbywgcGF0Y2hlcyB0aGF0IGNoYW5nZXMgdGhlIE9wZW4g
RmlybXdhcmUvRGV2aWNlIFRyZWUgYmluZGluZ3Mgc2hvdWxkCj4gPiArYWxzbyBiZSByZXZpZXdl
ZCBieSB0aGUgRGV2aWNlIFRyZWUgbWFpbnRhaW5lcnMuCj4gPiArCj4gPiArRHVlIHRvIHRoZSBz
aXplIGFuZCB3aWRlIHNjb3BlIG9mIHRoZSBtZWRpYSBzdWJzeXN0ZW0sIG1lZGlhJ3MKPiA+ICtt
YWludGFpbmVyc2hpcCBtb2RlbCBpcyB0byBoYXZlIHN1Yi1tYWludGFpbmVycyB0aGF0IGhhdmUg
YSBicm9hZAo+ID4gK2tub3dsZWRnZSBvZiBhbiBzcGVjaWZpYyBhc3BlY3Qgb2YgdGhlIHN1YnN5
c3RlbS4gSXQgaXMgYQo+ID4gK3N1Yi1tYWludGFpbmVyJ3MgdGFzayB0byByZXZpZXcgdGhlIHBh
dGNoZXMsIHByb3ZpZGluZyBmZWVkYmFjayB0byB1c2Vycwo+ID4gK2lmIHRoZSBwYXRjaGVzIGFy
ZSBmb2xsb3dpbmcgdGhlIHN1YnN5c3RlbSBydWxlcyBhbmQgYXJlIHByb3Blcmx5IHVzaW5nCj4g
PiArdGhlIG1lZGlhIGludGVybmFsIGFuZCBleHRlcm5hbCBBUElzLgo+ID4gKwo+ID4gK1BhdGNo
ZXMgZm9yIHRoZSBtZWRpYSBzdWJzeXN0ZW0gc2hvdWxkIGJlIHNlbnQgdG8gdGhlIG1lZGlhIG1h
aWxpbmcgbGlzdAo+ID4gK2F0IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZyBhcyBwbGFpbiB0
ZXh0IG9ubHkgZS1tYWlsLiBFbWFpbHMgd2l0aAo+ID4gK0hUTUwgd2lsbCBiZSBhdXRvbWF0aWNh
bGx5IHJlamVjdGVkIGJ5IHRoZSBtYWlsIHNlcnZlci4gSXQgY291bGQgYmUgd2lzZQo+ID4gK3Rv
IGFsc28gY29weSB0aGUgc3ViLW1haW50YWluZXIocykuCj4gPiArCj4gPiArTWVkaWEncyB3b3Jr
ZmxvdyBpcyBoZWF2aWx5IGJhc2VkIG9uIFBhdGNod29yaywgbWVhbmluZyB0aGF0LCBvbmNlIGEg
cGF0Y2gKPiA+ICtpcyBzdWJtaXR0ZWQsIGl0IHNob3VsZCBhcHBlYXIgYXQ6Cj4gPiArCj4gPiAr
ICAgLSBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhL2xp
c3QvCj4gPiArCj4gPiArSWYgaXQgZG9lc24ndCBhdXRvbWF0aWNhbGx5IGFwcGVhciB0aGVyZSBh
ZnRlciBhIGZldyBtaW51dGVzLCB0aGVuCj4gPiArcHJvYmFibHkgc29tZXRoaW5nIGdvdCB3cm9u
ZyBvbiB5b3VyIHN1Ym1pc3Npb24uIFBsZWFzZSBjaGVjayBpZiB0aGUKPiA+ICtlbWFpbCBpcyBp
biBwbGFpbiB0ZXh0IG9ubHkgYW5kIGlmIHlvdXIgZW1haWxlciBpcyBub3QgbWFuZ2xpbmcgd2l0
aAo+ID4gK3doaXRlc3BhY2VzIGJlZm9yZSBjb21wbGFpbmluZyBvciBzdWJtaXQgaXQgYWdhaW4u
Cj4gPiArCj4gPiArU3ViLW1haW50YWluZXJzCj4gPiArKysrKysrKysrKysrKysrICAKPiAKPiBX
aGF0IGlzIHRoZSBtb3RpdmF0aW9uIGZvciB1c2luZyAiKysrIiBpbnN0ZWFkIG9mICItLS0iPwoK
SnVzdCBjb3NtZXRpY3MuCgpUaGlzIGNoYXB0ZXIgZG9lc24ndCBleGlzdCBhdCB0aGUgb3JpZ2lu
YWwgcHJvZmlsZSwgYXMgc3ViLW1haW50YWluZXJzLApjby1tYWludGFpbmVycywgZXRjLiBhcmUg
dXNlZCBvbmx5IG9uIGEgZmV3IHN1YnN5c3RlbXMuIAoKU28sIEknbSBhZGRpbmcgaXQgYXMgYSBz
dWItY2hhcHRlci4KClRoYW5rcywKTWF1cm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRp
c2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRh
dGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MK
