Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00F2C433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:51:18 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10570619C7
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:51:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 10570619C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA2B404CD;
	Tue, 23 Mar 2021 18:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VniAa9Th3wD; Tue, 23 Mar 2021 18:51:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1AA1404CC;
	Tue, 23 Mar 2021 18:51:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 850F6C000E;
	Tue, 23 Mar 2021 18:51:15 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AD8F1C000D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 867B16085F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qs81lW_nMCR0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC4E06085B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:51:10 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOm7N-00052g-VX; Tue, 23 Mar 2021 19:51:06 +0100
To: Theodore Ts'o <tytso@mit.edu>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <YFkSqIN90S4a3HiF@mit.edu>
 <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
 <YFovanxCgq1lF4Ah@mit.edu>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <5a26cdba-eff9-8a5c-fda1-3f8d14b49868@leemhuis.info>
Date: Tue, 23 Mar 2021 19:51:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFovanxCgq1lF4Ah@mit.edu>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616525470;104973e5;
X-HE-SMSGID: 1lOm7N-00052g-VX
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
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

T24gMjMuMDMuMjEgMTk6MTEsIFRoZW9kb3JlIFRzJ28gd3JvdGU6Cj4gT24gVHVlLCBNYXIgMjMs
IDIwMjEgYXQgMDk6NTc6NTdBTSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4+IE9u
IDIyLjAzLjIxIDIyOjU2LCBUaGVvZG9yZSBUcydvIHdyb3RlOgo+Pj4gT24gTW9uLCBNYXIgMjIs
IDIwMjEgYXQgMDg6MjU6MTVQTSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4+Pj4g
SSBhZ3JlZSB0byB0aGUgbGFzdCBwb2ludCBhbmQgeWVhaCwgbWF5YmUgcmVncmVzc2lvbnMgYXJl
IHRoZSBtb3JlCj4+Pj4gaW1wb3J0YW50IHByb2JsZW0gd2Ugc2hvdWxkIHdvcmsgb24g4oCTIGF0
IGxlYXN0IGZyb20gdGhlIHBlcnNwZWN0aXZlIG9mCj4+Pj4ga2VybmVsIGRldmVsb3BtZW50LiAg
QnV0IGZyb20gdGhlIHVzZXJzIHBlcnNwZWN0aXZlIChhbmQKPj4+PiByZXBvcnRpbmctaXNzdWVz
LnJzdCBpcyB3cml0dGVuIGZvciB0aGF0IHBlcnNwZWN0aXZlKSBpdCBmZWVsIGEgYml0Cj4+Pj4g
dW5zYXRpc2Z5aW5nIHRvIG5vdCBoYXZlIGEgc29sdXRpb24gdG8gcXVlcnkgZm9yIGV4aXN0aW5n
IHJlcG9ydCwKPj4+PiByZWdyZXNzaW9ucyBvciBub3QuIEhtbW1tLi4uCj4+PiBGaXJzdCBvZiBh
bGwsIHRoYW5rcyBmb3Igd29ya2luZyBvbiByZXBvcnRpbmctaXNzdWVzLnJzdC4KPj4gVGh4LCB2
ZXJ5IGdsYWQgdG8gaGVhciB0aGF0LiBJIGRpZG4ndCBnZXQgbXVjaCBmZWVkYmFjayBvbiBpdCwg
d2hpY2gKPj4gbWFkZSBtZSB3b25kZXIgaWYgYW55Ym9keSBiZXNpZGVzIGRvY3MgZm9sa3MgYWN0
dWFsbHkgbG9va2VkIGF0IGl0Li4uCj4gSSdsbCBhZG1pdCB0aGF0IEkgaGFkIG1pc3NlZCB5b3Vy
IGluaXRpYWwgc3VibWlzc2lvbiwKCk5vIHdvbmRlciB3aXRoIGFsbCB0aGUgbGlzdHMgYW5kIG1h
aWxzLiA6LUQgVGhhdCdzIGFjdHVhbGx5IHdoeSBJIHdhbnRlZAp0byBwb2ludCB0byB0aGUgdGV4
dCBvbiBrc3VtbWl0LWxpc3Qgb25jZSBpbiB0aGUgbmVhciBmdXR1cmUgYWZ0ZXIgdHdvCnJlbWFp
bmluZyBpc3N1ZXMgd2l0aCB0aGUgdGV4dCB3ZXJlIHNvbHZlZCAoc2VlIGJlbG93KSwgYnV0IGJl
Zm9yZQpyZW1vdmluZyB0aGUgIldJUCIgYm94IGF0IHRoZSB0b3AgYW5kIGRlbGV0aW5nIHJlcG9y
dGluZy1idWdzLnJzdC4KCj4gYnV0IGhhdmluZwo+IGxvb2tlZCBhdCBpdCwgd2hpbGUgSSBjb3Vs
ZCBpbWFnaW5lIHNvbWUgbml0cyB3aGVyZSBpdCBjb3VsZCBiZQo+IGltcHJvdmVkLAoKWWVhaCwg
Zm9yIHN1cmUsIHdpdGggc3VjaCBhIHRleHQgdGhhdCB3aWxsIGFsd2F5cyBiZSB0aGUgY2FzZS4g
QW5kIEkKcmVhbGx5IHdvdWxkIGxpa2UgaWYgYSBmZXcgbW9yZSBwZW9wbGUgdGFrZSBhIGNsb3Nl
ciBsb29rIGFuZCBwcm92aWRlCmZlZWRiYWNrLCB0aGF0IHJlYWxseSBoZWxwcyB0byBnZXQgc3Vj
aCBhIHRleHQgaW4gc2hhcGUuIEkgaGF2ZSBzdGFyZWQKc28gbXVjaCBhdCB0aGUgdGV4dCBpbiBy
ZWNlbnQgbW9udGhzLCB0aGF0IG1ha2VzIGl0IHF1aXRlIGVhc3kgdG8gbWlzcwp0eXBvcyBhbmQg
ZXJyb3JzIGluIHRoZSBsb2dpY2FsIGZsb3cgdGhhdCBhIGZyZXNoIHBhaXIgb2YgZXllcyB3aWxs
CmltbWVkaWF0ZWx5IHNwb3QuLi4KCj4gaW4gbXkgb3BpbmlvbiwgaXQncyBzdHJpY3RseSBiZXR0
ZXIgdGhhbiB0aGUgb2xkZXIKPiByZXBvcnRpbmctYnVncyBkb2MuCgpHcmVhdCwgdGh4LgoKPj4g
SG1tbSwgeWVhaCwgSSBsaWtlIHRoYXQgaWRlYS4gSSdsbCBrZWVwIGl0IGluIG1pbmQgZm9yIGxh
dGVyOiBJIHdvdWxkCj4+IHByZWZlciB0byBnZXQgcmVwb3J0aW5nLWlzc3Vlcy5yc3Qgb2ZmaWNp
YWxseSBibGVzc2VkIGFuZAo+PiByZXBvcnRpbmctYnVncy5yc3QgZ29uZSBiZWZvcmUgd29ya2lu
ZyBvbiBmdXJ0aGVyIGVuaGFuY2VtZW50cy4KPiBJcyB0aGVyZSBhbnlvbmUgZm9sbG93aW5nIHRo
aXMgdGhyZWFkIHdobyBiZWxpZXZlcyB0aGF0IHRoZXJlIGlzCj4gYW55dGhpbmcgd2Ugc2hvdWxk
IGNoYW5nZSAqYmVmb3JlKiBvZmljaWFsbHkgYmxlc3NpbmcKPiByZXBvcnRpbmctaXNzdWVzLnJz
dD8gIEdpdmVuIHRoYXQgS29uc3RhbnRpbiBoYXMgYWxyZWFkeSBsaW5rZWQgdG8KPiByZXBvcnRp
bmctaXNzdWVzIGZyb20gdGhlIGZyb250IHBhZ2Ugb2Yga2VybmVsLmJ1Z3ppbGxhLm9yZywgSSB0
aGluawo+IHdlIHdlIHNob3VsZCBqdXN0IGdvIGFoZWFkIGFuZCBvZmZpY2lhbGx5IGJsZXNzIGl0
IGFuZCBiZSBkb25lIHdpdGgKPiBpdC4gICA6LSkKCkZXSVcsIGhlcmUgaXMgbXkgY3VycmVudCB0
b2RvIGxpc3QgZnJvbSB0aGUgdG9wIG9mIG15IGhlYWQ6CgoqIGdldCB0aGlzIHBhdGNoc2V0IHJl
dmlld2VkIGFuZCBhcHBsaWVkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kb2MvY292
ZXIuMTYxNjE4MTY1Ny5naXQubGludXhAbGVlbWh1aXMuaW5mby8KCiogKmFmdGVyd2FyZHMqIG1h
a2Ugc3VyZSBHcmVnIGFuZC9vciBTYXNoYSAobm93IENDZWQpIGNoZWNrIHRoZSB0ZXh0CmZyb20g
dGhlaXIgcG9pbnQgb2YgdmlldyAoYWJvdmUgcGF0Y2hzZXQgY2hhbmdlcyBxdWl0ZSBhIGZldyB0
aGluZ3MgaW4KdGhhdCBhcmVhLCB0aGF0J3Mgd2h5IGl0IG5lZWRzIHRvIGJlIGFwcGxpZWQgZmly
c3QpCgoqIGdldCBmZWVkYmFjayByZWcuIHRoZSB0d28gRklYTUUgYm94ZXMgcmVtYWluaW5nIGFm
dGVyd2FyZHMuIE9uZSBpcwphYm91dCBidWd6aWxsYSAoYGBgVGhlIG9sZCB0ZXh0IHRvb2sgYSB0
b3RhbGx5IGRpZmZlcmVudCBhcHByb2FjaCB0bwpidWd6aWxsYS5rZXJuZWwub3JnLi4uYGBgKSwg
dGhlIG90aGVyIGFib3V0IENDaW5nIExLTUwgIChgYGBBYm92ZQpzZWN0aW9uIHRlbGxzIHVzZXJz
IHRvIGFsd2F5cyBDQyBMS01MIFvigKZdIFNob3VsZCB3ZSBjcmVhdGUgbWFpbGluZyBsaXN0Cmxp
a2UgbGludXgtaXNzdWVzQHZnZXIua2VybmVsLm9yZ2BgYCkuIEJ1dCBJIGd1ZXNzIHRoZSBhcHBy
b2FjaCB0YWtlbgpzaG91bGQgYmUgZmluZSBmb3IgbW9zdCBwZW9wbGUsIHNvIHdlIGNvdWxkIHNp
bXBseSByZW1vdmUgdGhlbS4gV2UgY2FuCnN0aWxsIGNoYW5nZSB0aGluZ3MgbGF0ZXIgYW55d2F5
LCBJIGp1c3QgcHV0IHRob3NlIGJveGVzIHRoZXJlIHRvCmhpZ2hsaWdodCB0aGVzZSBkaWZmZXJl
bmNlcyB0byB0aGUgb2xkIGFwcHJvYWNoLgoKKiByZW1vdmUgdGhlIG5vdGUgYXQgdGhlIHRvcCAo
YGBgVGhpcyBkb2N1bWVudCBpcyBiZWluZyBwcmVwYXJlZCB0bwpyZXBsYWNlICdSZXBvcnRpbmcg
YnVncy4uLmBgYCBhbmQgZGVsZXRlIHJlcG9ydGluZy1idWdzLnJzdAoKPiBPbmNlIGl0IGlzIGJs
ZXNzZWQsIEknZCBhbHNvIHN1Z2dlc3QgcHV0dGluZyBhIGxpbmsgdG8KPiBodHRwczovL3d3dy5r
ZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9yZXBvcnRpbmctaXNzdWVzLmh0
bWwKPiBhcyBhbiAib3RoZXIgcmVzb3VyY2VzIiBhdCBodHRwczovL3d3dy5rZXJuZWwub3JnLgoK
KzEKCkNpYW8sIFRob3JzdGVuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCktzdW1taXQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxp
c3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3Jn
L21haWxtYW4vbGlzdGluZm8va3N1bW1pdC1kaXNjdXNzCg==
