Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB2F6C433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 16:30:44 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90D27619BA
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 16:30:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90D27619BA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=HansenPartnership.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B4E683F69;
	Tue, 23 Mar 2021 16:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlSQM-tyXxuh; Tue, 23 Mar 2021 16:30:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5508383EBE;
	Tue, 23 Mar 2021 16:30:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1972FC000B;
	Tue, 23 Mar 2021 16:30:42 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B035C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D5E783ECC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aaJXbRRnO0Xr
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:30:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3D9483EBE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id EA9091280510;
 Tue, 23 Mar 2021 09:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1616517034;
 bh=7yFG5lL2+BNpd1ONVR4hyeUFNcZHrwq0RYV98R5DXcY=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=LUacreyrugyWSFUJrW1JxkrINrQLIwKlzgLk0TErBBgxkIB/iQoDhT7ZGBGrvGOqZ
 n5DVIoL66VnDp7HnKHSiZ03dKPpv/DEoLASMVbYLui5SDViVC554+538qIb6laFUMm
 auCC/PZgZlglg7nMWv4CNwFu32HBSVqcdL70PVYo=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 1EIiGR9pV7zf; Tue, 23 Mar 2021 09:30:34 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 720E4128050C;
 Tue, 23 Mar 2021 09:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1616517034;
 bh=7yFG5lL2+BNpd1ONVR4hyeUFNcZHrwq0RYV98R5DXcY=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=LUacreyrugyWSFUJrW1JxkrINrQLIwKlzgLk0TErBBgxkIB/iQoDhT7ZGBGrvGOqZ
 n5DVIoL66VnDp7HnKHSiZ03dKPpv/DEoLASMVbYLui5SDViVC554+538qIb6laFUMm
 auCC/PZgZlglg7nMWv4CNwFu32HBSVqcdL70PVYo=
Message-ID: <72f1c67bc8ad21bb1e5a7d77b88e2c3e50065e3b.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>, Thorsten Leemhuis
 <linux@leemhuis.info>
Date: Tue, 23 Mar 2021 09:30:33 -0700
In-Reply-To: <20210323122025.77888b49@gandalf.local.home>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <20210323122025.77888b49@gandalf.local.home>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
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

T24gVHVlLCAyMDIxLTAzLTIzIGF0IDEyOjIwIC0wNDAwLCBTdGV2ZW4gUm9zdGVkdCB3cm90ZToK
PiBPbiBNb24sIDIyIE1hciAyMDIxIDIwOjI1OjE1ICswMTAwCj4gVGhvcnN0ZW4gTGVlbWh1aXMg
PGxpbnV4QGxlZW1odWlzLmluZm8+IHdyb3RlOgo+IAo+ID4gSSBhZ3JlZSB0byB0aGUgbGFzdCBw
b2ludCBhbmQgeWVhaCwgbWF5YmUgcmVncmVzc2lvbnMgYXJlIHRoZSBtb3JlCj4gPiBpbXBvcnRh
bnQgcHJvYmxlbSB3ZSBzaG91bGQgd29yayBvbiDigJMgYXQgbGVhc3QgZnJvbSB0aGUgcGVyc3Bl
Y3RpdmUKPiA+IG9mIGtlcm5lbCBkZXZlbG9wbWVudC4gIEJ1dCBmcm9tIHRoZSB1c2VycyBwZXJz
cGVjdGl2ZSAoYW5kCj4gPiByZXBvcnRpbmctaXNzdWVzLnJzdCBpcyB3cml0dGVuIGZvciB0aGF0
IHBlcnNwZWN0aXZlKSBpdCBmZWVsIGEgYml0Cj4gPiB1bnNhdGlzZnlpbmcgdG8gbm90IGhhdmUg
YSBzb2x1dGlvbiB0byBxdWVyeSBmb3IgZXhpc3RpbmcgcmVwb3J0LAo+ID4gcmVncmVzc2lvbnMg
b3Igbm90LiBIbW1tbS4uLgo+IAo+IEkgdGhpbmsgdGhlIGJ1bGsgb2YgdXNlciBpc3N1ZXMgYXJl
IGdvaW5nIHRvIGJlIHJlZ3Jlc3Npb25zLiBBbHRob3VnaAo+IHlvdSBtYXkgYmUgaW4gYSBiZXR0
ZXIgcG9zaXRpb24gdG8ga25vdyBmb3Igc3VyZSwgYnV0IGF0IGxlYXN0IGZvcgo+IG1lLCB3ZWFy
aW5nIG15ICJ1c2VyIiBoYXQsIHRoZSB0aGluZyB0aGF0IGdldHMgbWUgdGhlIG1vc3QgaXMKPiB1
cGdyYWRpbmcgdG8gYSBuZXcga2VybmVsIGFuZCBzdWRkZW5seSBzb21ldGhpbmcgdGhhdCB1c2Ug
dG8gd29yayBubwo+IGxvbmdlciBkb2VzLiBBbmQgdGhhdCBpcyB0aGUgZGVmaW5pdGlvbiBvZiBh
IHJlZ3Jlc3Npb24uIE15IHRlc3QKPiBib3hlcyBzdGlsbCBydW4gb2xkIGRpc3Ryb3MgKG9uZSBp
cyBydW5uaW5nIGZlZG9yYSAxMykuIFRoZXNlIGFyZSB0aGUKPiBib3hlcyB0aGF0IGNhdGNoIHRo
ZSBtb3N0IGlzc3VlcywgYW5kIGlmIHRoZXkgZG8sIHRoZXkgYXJlIHByZXR0eQo+IG11Y2ggZ3Vh
cmFudGVlZCB0byBiZSBhIHJlZ3Jlc3Npb24uCj4gCj4gSSBsaWtlIHRoZSAibGludXgtcmVncmVz
c2lvbnMiIG1haWxpbmcgbGlzdCBpZGVhLgoKQ2FuJ3Qgd2UgdXNlIHRoZSBmYW5jeSBmZWF0dXJl
cyBvZiBwdWJsaWMgaW5ib3ggdG8gZ2V0IHRoZSBiZXN0IG9mIGJvdGgKd29ybGRzPyAgSGF2ZSB0
aGUgYnVnIGxpc3QgKG9yIGV2ZW4gYSBjb2xsZWN0aW9uIG9mIGxpc3RzKSBidXQgbWFrZSB0aGUK
bGludXgtcmVncmVzc2lvbnMgb25lIGEgdmlydHVhbCBsaXN0IGtleWluZyBvZmYgYW4gaW1hcCBm
bGFnIHdoaWNoIGEKZ3JvdXAgb2YgcGVvcGxlIGNvbnRyb2wuICBUaGF0IHdheSBhbnl0aGluZyB0
aGF0IGlzIGZsYWdnZWQgYXMgYQpyZWdyZXNzaW9uIGFwcGVhcnMgaW4gdGhhdCBwdWJsaWMgaW5i
b3guICBJIGFzc3VtZSB0aGUgc2VhcmNoIGNhbiBiZQpxdWl0ZSB3aWRlIHNvIHdlIGNvdWxkIGZs
YWcgYSByZWdyZXNzaW9uIG9uIGFueSBsaXN0IGluZGV4ZWQgYnkgbG9yZT8KCkphbWVzCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNj
dXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9y
ZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3Vt
bWl0LWRpc2N1c3MK
