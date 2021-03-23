Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49999C433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 16:20:33 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7491600EF
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 16:20:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7491600EF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=goodmis.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55598404EF;
	Tue, 23 Mar 2021 16:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-W9p2MW8Qit; Tue, 23 Mar 2021 16:20:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C001404D5;
	Tue, 23 Mar 2021 16:20:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7E19C000B;
	Tue, 23 Mar 2021 16:20:29 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 88884C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7610B60694
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikBxis8vhv1N
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E04DC605DF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 16:20:27 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE64561477;
 Tue, 23 Mar 2021 16:20:26 +0000 (UTC)
Date: Tue, 23 Mar 2021 12:20:25 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <20210323122025.77888b49@gandalf.local.home>
In-Reply-To: <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

T24gTW9uLCAyMiBNYXIgMjAyMSAyMDoyNToxNSArMDEwMApUaG9yc3RlbiBMZWVtaHVpcyA8bGlu
dXhAbGVlbWh1aXMuaW5mbz4gd3JvdGU6Cgo+IEkgYWdyZWUgdG8gdGhlIGxhc3QgcG9pbnQgYW5k
IHllYWgsIG1heWJlIHJlZ3Jlc3Npb25zIGFyZSB0aGUgbW9yZQo+IGltcG9ydGFudCBwcm9ibGVt
IHdlIHNob3VsZCB3b3JrIG9uIOKAkyBhdCBsZWFzdCBmcm9tIHRoZSBwZXJzcGVjdGl2ZSBvZgo+
IGtlcm5lbCBkZXZlbG9wbWVudC4gIEJ1dCBmcm9tIHRoZSB1c2VycyBwZXJzcGVjdGl2ZSAoYW5k
Cj4gcmVwb3J0aW5nLWlzc3Vlcy5yc3QgaXMgd3JpdHRlbiBmb3IgdGhhdCBwZXJzcGVjdGl2ZSkg
aXQgZmVlbCBhIGJpdAo+IHVuc2F0aXNmeWluZyB0byBub3QgaGF2ZSBhIHNvbHV0aW9uIHRvIHF1
ZXJ5IGZvciBleGlzdGluZyByZXBvcnQsCj4gcmVncmVzc2lvbnMgb3Igbm90LiBIbW1tbS4uLgoK
SSB0aGluayB0aGUgYnVsayBvZiB1c2VyIGlzc3VlcyBhcmUgZ29pbmcgdG8gYmUgcmVncmVzc2lv
bnMuIEFsdGhvdWdoIHlvdQptYXkgYmUgaW4gYSBiZXR0ZXIgcG9zaXRpb24gdG8ga25vdyBmb3Ig
c3VyZSwgYnV0IGF0IGxlYXN0IGZvciBtZSwgd2VhcmluZwpteSAidXNlciIgaGF0LCB0aGUgdGhp
bmcgdGhhdCBnZXRzIG1lIHRoZSBtb3N0IGlzIHVwZ3JhZGluZyB0byBhIG5ldyBrZXJuZWwKYW5k
IHN1ZGRlbmx5IHNvbWV0aGluZyB0aGF0IHVzZSB0byB3b3JrIG5vIGxvbmdlciBkb2VzLiBBbmQg
dGhhdCBpcyB0aGUKZGVmaW5pdGlvbiBvZiBhIHJlZ3Jlc3Npb24uIE15IHRlc3QgYm94ZXMgc3Rp
bGwgcnVuIG9sZCBkaXN0cm9zIChvbmUgaXMKcnVubmluZyBmZWRvcmEgMTMpLiBUaGVzZSBhcmUg
dGhlIGJveGVzIHRoYXQgY2F0Y2ggdGhlIG1vc3QgaXNzdWVzLCBhbmQgaWYKdGhleSBkbywgdGhl
eSBhcmUgcHJldHR5IG11Y2ggZ3VhcmFudGVlZCB0byBiZSBhIHJlZ3Jlc3Npb24uCgpJIGxpa2Ug
dGhlICJsaW51eC1yZWdyZXNzaW9ucyIgbWFpbGluZyBsaXN0IGlkZWEuCgotLSBTdGV2ZQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1
c3MgbWFpbGluZyBsaXN0CktzdW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3Jn
Cmh0dHBzOi8vbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1t
aXQtZGlzY3Vzcwo=
