Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E9C433DB
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:12:05 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B622619BF
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 18:12:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B622619BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D871A60862;
	Tue, 23 Mar 2021 18:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ob5DIAD91JV5; Tue, 23 Mar 2021 18:12:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C2996069C;
	Tue, 23 Mar 2021 18:12:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E1A13C000E;
	Tue, 23 Mar 2021 18:12:02 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9939CC000D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7292140332
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0rQDyaykZTD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 732CF400B8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 18:12:00 +0000 (UTC)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 12NIBs7r012557
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Mar 2021 14:11:55 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 6FBA415C39CC; Tue, 23 Mar 2021 14:11:54 -0400 (EDT)
Date: Tue, 23 Mar 2021 14:11:54 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <YFovanxCgq1lF4Ah@mit.edu>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <YFkSqIN90S4a3HiF@mit.edu>
 <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
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

T24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgMDk6NTc6NTdBTSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1
aXMgd3JvdGU6Cj4gT24gMjIuMDMuMjEgMjI6NTYsIFRoZW9kb3JlIFRzJ28gd3JvdGU6Cj4gPiBP
biBNb24sIE1hciAyMiwgMjAyMSBhdCAwODoyNToxNVBNICswMTAwLCBUaG9yc3RlbiBMZWVtaHVp
cyB3cm90ZToKPiA+PiBJIGFncmVlIHRvIHRoZSBsYXN0IHBvaW50IGFuZCB5ZWFoLCBtYXliZSBy
ZWdyZXNzaW9ucyBhcmUgdGhlIG1vcmUKPiA+PiBpbXBvcnRhbnQgcHJvYmxlbSB3ZSBzaG91bGQg
d29yayBvbiDigJMgYXQgbGVhc3QgZnJvbSB0aGUgcGVyc3BlY3RpdmUgb2YKPiA+PiBrZXJuZWwg
ZGV2ZWxvcG1lbnQuICBCdXQgZnJvbSB0aGUgdXNlcnMgcGVyc3BlY3RpdmUgKGFuZAo+ID4+IHJl
cG9ydGluZy1pc3N1ZXMucnN0IGlzIHdyaXR0ZW4gZm9yIHRoYXQgcGVyc3BlY3RpdmUpIGl0IGZl
ZWwgYSBiaXQKPiA+PiB1bnNhdGlzZnlpbmcgdG8gbm90IGhhdmUgYSBzb2x1dGlvbiB0byBxdWVy
eSBmb3IgZXhpc3RpbmcgcmVwb3J0LAo+ID4+IHJlZ3Jlc3Npb25zIG9yIG5vdC4gSG1tbW0uLi4K
PiA+IEZpcnN0IG9mIGFsbCwgdGhhbmtzIGZvciB3b3JraW5nIG9uIHJlcG9ydGluZy1pc3N1ZXMu
cnN0Lgo+IAo+IFRoeCwgdmVyeSBnbGFkIHRvIGhlYXIgdGhhdC4gSSBkaWRuJ3QgZ2V0IG11Y2gg
ZmVlZGJhY2sgb24gaXQsIHdoaWNoCj4gbWFkZSBtZSB3b25kZXIgaWYgYW55Ym9keSBiZXNpZGVz
IGRvY3MgZm9sa3MgYWN0dWFsbHkgbG9va2VkIGF0IGl0Li4uCgpJJ2xsIGFkbWl0IHRoYXQgSSBo
YWQgbWlzc2VkIHlvdXIgaW5pdGlhbCBzdWJtaXNzaW9uLCBidXQgaGF2aW5nCmxvb2tlZCBhdCBp
dCwgd2hpbGUgSSBjb3VsZCBpbWFnaW5lIHNvbWUgbml0cyB3aGVyZSBpdCBjb3VsZCBiZQppbXBy
b3ZlZCwgaW4gbXkgb3BpbmlvbiwgaXQncyBzdHJpY3RseSBiZXR0ZXIgdGhhbiB0aGUgb2xkZXIK
cmVwb3J0aW5nLWJ1Z3MgZG9jLgoKPiBIbW1tLCB5ZWFoLCBJIGxpa2UgdGhhdCBpZGVhLiBJJ2xs
IGtlZXAgaXQgaW4gbWluZCBmb3IgbGF0ZXI6IEkgd291bGQKPiBwcmVmZXIgdG8gZ2V0IHJlcG9y
dGluZy1pc3N1ZXMucnN0IG9mZmljaWFsbHkgYmxlc3NlZCBhbmQKPiByZXBvcnRpbmctYnVncy5y
c3QgZ29uZSBiZWZvcmUgd29ya2luZyBvbiBmdXJ0aGVyIGVuaGFuY2VtZW50cy4KCklzIHRoZXJl
IGFueW9uZSBmb2xsb3dpbmcgdGhpcyB0aHJlYWQgd2hvIGJlbGlldmVzIHRoYXQgdGhlcmUgaXMK
YW55dGhpbmcgd2Ugc2hvdWxkIGNoYW5nZSAqYmVmb3JlKiBvZmljaWFsbHkgYmxlc3NpbmcKcmVw
b3J0aW5nLWlzc3Vlcy5yc3Q/ICBHaXZlbiB0aGF0IEtvbnN0YW50aW4gaGFzIGFscmVhZHkgbGlu
a2VkIHRvCnJlcG9ydGluZy1pc3N1ZXMgZnJvbSB0aGUgZnJvbnQgcGFnZSBvZiBrZXJuZWwuYnVn
emlsbGEub3JnLCBJIHRoaW5rCndlIHdlIHNob3VsZCBqdXN0IGdvIGFoZWFkIGFuZCBvZmZpY2lh
bGx5IGJsZXNzIGl0IGFuZCBiZSBkb25lIHdpdGgKaXQuICAgOi0pCgpPbmNlIGl0IGlzIGJsZXNz
ZWQsIEknZCBhbHNvIHN1Z2dlc3QgcHV0dGluZyBhIGxpbmsgdG8KaHR0cHM6Ly93d3cua2VybmVs
Lm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvcmVwb3J0aW5nLWlzc3Vlcy5odG1sCmFz
IGFuICJvdGhlciByZXNvdXJjZXMiIGF0IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcuCgoJCQkJCS0g
VGVkCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCktzdW1t
aXQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRh
dGlvbi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGlu
Zm8va3N1bW1pdC1kaXNjdXNzCg==
