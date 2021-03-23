Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014FFC433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 08:58:07 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C905619B6
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 08:58:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C905619B6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD12383E7B;
	Tue, 23 Mar 2021 08:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rqP-27S4FzXt; Tue, 23 Mar 2021 08:58:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2ADDF83E5B;
	Tue, 23 Mar 2021 08:58:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D6B7BC000B;
	Tue, 23 Mar 2021 08:58:04 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EFFC8C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 08:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DDDD983E4D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 08:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sn4Klnfx5qdw
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 08:58:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2517383E4C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 08:58:02 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lOcrO-0004PS-Hi; Tue, 23 Mar 2021 09:57:58 +0100
To: Theodore Ts'o <tytso@mit.edu>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <YFkSqIN90S4a3HiF@mit.edu>
From: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
Date: Tue, 23 Mar 2021 09:57:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFkSqIN90S4a3HiF@mit.edu>
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616489882;d35cf563;
X-HE-SMSGID: 1lOcrO-0004PS-Hi
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

T24gMjIuMDMuMjEgMjI6NTYsIFRoZW9kb3JlIFRzJ28gd3JvdGU6Cj4gT24gTW9uLCBNYXIgMjIs
IDIwMjEgYXQgMDg6MjU6MTVQTSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4+IEkg
YWdyZWUgdG8gdGhlIGxhc3QgcG9pbnQgYW5kIHllYWgsIG1heWJlIHJlZ3Jlc3Npb25zIGFyZSB0
aGUgbW9yZQo+PiBpbXBvcnRhbnQgcHJvYmxlbSB3ZSBzaG91bGQgd29yayBvbiDigJMgYXQgbGVh
c3QgZnJvbSB0aGUgcGVyc3BlY3RpdmUgb2YKPj4ga2VybmVsIGRldmVsb3BtZW50LiAgQnV0IGZy
b20gdGhlIHVzZXJzIHBlcnNwZWN0aXZlIChhbmQKPj4gcmVwb3J0aW5nLWlzc3Vlcy5yc3QgaXMg
d3JpdHRlbiBmb3IgdGhhdCBwZXJzcGVjdGl2ZSkgaXQgZmVlbCBhIGJpdAo+PiB1bnNhdGlzZnlp
bmcgdG8gbm90IGhhdmUgYSBzb2x1dGlvbiB0byBxdWVyeSBmb3IgZXhpc3RpbmcgcmVwb3J0LAo+
PiByZWdyZXNzaW9ucyBvciBub3QuIEhtbW1tLi4uCj4gRmlyc3Qgb2YgYWxsLCB0aGFua3MgZm9y
IHdvcmtpbmcgb24gcmVwb3J0aW5nLWlzc3Vlcy5yc3QuCgpUaHgsIHZlcnkgZ2xhZCB0byBoZWFy
IHRoYXQuIEkgZGlkbid0IGdldCBtdWNoIGZlZWRiYWNrIG9uIGl0LCB3aGljaAptYWRlIG1lIHdv
bmRlciBpZiBhbnlib2R5IGJlc2lkZXMgZG9jcyBmb2xrcyBhY3R1YWxseSBsb29rZWQgYXQgaXQu
Li4KCj4gIElmIHdlIGNhbgo+IGFjdHVhbGx5IGdldCB1c2VycyB0byAqcmVhZCogaXQsIEkgdGhp
bmsgaXQncyBnb2luZyB0byBzYXZlIGtlcm5lbAo+IGRldmVsb3BlcnMgYSBodWdlIGFtb3VudCBv
ZiB0aW1lIGFuZCBmcnVzdHJhdGlvbi4KCkFuZCB1c2VycyBob3BlZnVsbHkgYXMgd2VsbC4gQnV0
IHllcywgbWFraW5nIHRoZW0gcmVhZCBpdCBpcyB0aGUKcHJvYmxlbS4gOi0vCgo+IEkgd29uZGVy
IGlmIGl0IG1pZ2h0IGJlIHVzZWZ1bCB0byBoYXZlIGEgZm9ybSB3aGljaCB1c2VycyBjb3VsZCBi
ZQo+IGVuY291cmFnZWQgdG8gZmlsbCBvdXQgc28gdGhhdCAoYSkgdGhlIGluZm9ybWF0aW9uIGlz
IGF2YWlsYWJsZSBpbiBhCj4gc3RydWN0dXJlZCBmb3JtYXQgc28gaXQncyBlYXNpZXIgZm9yIGRl
dmVsb3BlcnMgdG8gZmluZCB0aGUgcmVsZXZhbnQKPiBpbmZvcm1hdGlvbiwgKGIpIHNvIGl0IGlz
IGVhc2llciBmb3IgcHJvZ3JhbXMgdG8gcGFyc2UsIGZvciBlYXNpZXIKPiByZXBvcnRpbmcgb3Ig
aW5kZXhpbmcsIGFuZCAoYykgYXMgYSBudWRnZSBzbyB0aGF0IHVzZXJzIHJlbWVtYmVyIHRvCj4g
cmVwb3J0IGNyaXRpY2FsIGJpdHMgb2YgaW5mb3JtYXRpb24gc3VjaCBhcyB0aGUgaGFyZHdhcmUK
PiBjb25maWd1cmF0aW9uLCB0aGUgZXhhY3Qga2VybmVsIHZlcnNpb24sIHdoaWNoIGRpc3RyaWJ1
dGlvbiB1c2Vyc3BhY2UKPiB3YXMgaW4gdXNlLCBldGMuCj4gCj4gVGhlcmUgY291bGQgYWxzbyBi
ZSBzb21ldGhpbmcgaW4gdGhlIHRleHQgZm9ybSB3aGljaCB3b3VsZCBtYWtlIGl0Cj4gZWFzaWVy
IGZvciBsb3JlLmtlcm5lbC5vcmcgc2VhcmNoZXMgdG8gaWRlbnRpZnkgYnVnIHJlcG9ydHMuICAo
ZS5nLiwKPiAiTElOVVggS0VSTkVMIEJVRyBSRVBPUlRFUiBURU1QTEFURSIpCgpIbW1tLCB5ZWFo
LCBJIGxpa2UgdGhhdCBpZGVhLiBJJ2xsIGtlZXAgaXQgaW4gbWluZCBmb3IgbGF0ZXI6IEkgd291
bGQKcHJlZmVyIHRvIGdldCByZXBvcnRpbmctaXNzdWVzLnJzdCBvZmZpY2lhbGx5IGJsZXNzZWQg
YW5kCnJlcG9ydGluZy1idWdzLnJzdCBnb25lIGJlZm9yZSB3b3JraW5nIG9uIGZ1cnRoZXIgZW5o
YW5jZW1lbnRzLgoKTWF5YmUgdGhlIGJlc3QgaWRlYSB3b3VsZCBiZSB0byBoYXZlIGEgc2NyaXB0
IGFuZC9vciB3ZWJwYWdlIHRoYXQgaGVscHMKcGVvcGxlIGNyZWF0aW5nIHRoZSBwcm9wZXIgdGV4
dCBmb3JtICh3aGljaCB0aGV5IHRoZW4gY291bGQgc2ltcGx5CmNvcHktYW5kLXBhc3RlIGludG8g
dGhlaXIgbWFpbGVyKS4gSSBoYWQgc3VjaCBhIHNjcmlwdC93ZWJwYWdlIGluIG1pbmQKYWxyZWFk
eSB0byBoZWxwIHdpdGggb25lIG9mIHRoZSBJTUhPIGJpZ2dlc3QgcGFpbiBwb2ludHMgd2hlbiBp
dCBjb21lcwp0byByZXBvcnRpbmcgaXNzdWVzOiBmaW5kaW5nIHdoZXJlIHRoZSByZXBvcnQgbmVl
ZHMgdG8gZ28sIGFzIGRlY29kaW5nCk1BSU5UQUlORVJTIHJlcXVpcmVzIHRoYXQgeW91IGhhdmUg
YSBhdCBsZWFzdCBhIHZhZ3VlIGlkZWEgd2hpY2gKY29tcG9uZW50IG1pZ2h0IGJlIGNhdXNpbmcg
dGhlIGlzc3VlIOKAkyB3aGljaCBhZmFpY3MgaXMgaGFyZCBldmVuIGZvcgpwZW9wbGUgdGhhdCBr
bm93biBhIHRoaW5nIG9yIHR3byBhYm91dCB0aGUga2VybmVsLiA6LS8KCkNpYW8sIFRob3JzdGVu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCktzdW1taXQt
ZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRhdGlv
bi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8v
a3N1bW1pdC1kaXNjdXNzCg==
