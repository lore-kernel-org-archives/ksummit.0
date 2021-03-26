Return-Path: <SRS0=v+8f=IY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BD4C433C1
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:13:22 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4F3E61A36
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 06:13:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4F3E61A36
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=leemhuis.info
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6404340FAE;
	Fri, 26 Mar 2021 06:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bbMII8ViK11j; Fri, 26 Mar 2021 06:13:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4307D40F97;
	Fri, 26 Mar 2021 06:13:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2ECEC000E;
	Fri, 26 Mar 2021 06:13:18 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 31BBEC000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CA2040237
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zkAx43fBIv0u
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:13:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E830440236
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 06:13:13 +0000 (UTC)
Received: from ip4d142c50.dynamic.kabel-deutschland.de ([77.20.44.80]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1lPfiX-0000z4-QH; Fri, 26 Mar 2021 07:13:09 +0100
From: Thorsten Leemhuis <linux@leemhuis.info>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Message-ID: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Date: Fri, 26 Mar 2021 07:13:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Language: en-BS
X-bounce-key: webpack.hosteurope.de;linux@leemhuis.info;1616739194;eb335673;
X-HE-SMSGID: 1lPfiX-0000z4-QH
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: [Ksummit-discuss] FYI & RFC: obsoleting reporting-bugs and making
 reporting-issues official
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

CkxvISBTaW5jZSBhIGZldyBtb250aHMgbWFpbmxpbmUgaW4KRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9yZXBvcnRpbmctaXNzdWVzLnJzdCBjb250YWlucyBhIHRleHQgd3JpdHRlbgp0byBvYnNv
bGV0ZSB0aGUgZ29vZCBvbGQgcmVwb3J0aW5nLWJ1Z3MgdGV4dC4gRm9yIG5vdywgdGhlIG5ldyBk
b2N1bWVudApzdGlsbCBjb250YWlucyBhIHdhcm5pbmcgYXQgdGhlIHRvcCB0aGF0IGJhc2ljYWxs
eSBzYXlzICJ0aGlzIGlzIFdJUCIuCkJ1dCBJJ2QgbGlrZSB0byByZW1vdmUgdGhhdCB3YXJuaW5n
IGFuZCBkZWxldGUgcmVwb3J0aW5nLWJ1Z3MucnN0IGluIHRoZQpuZXh0IG1lcmdlIHdpbmRvdyB0
byBtYWtlIHJlcG9ydGluZy1pc3N1ZXMucnN0IGZ1bGx5IG9mZmljaWFsLiBXaXRoIHRoaXMKbWFp
bCBJIHdhbnQgdG8gZ2l2ZSBldmVyeW9uZSBhIGNoYW5jZSB0byB0YWtlIGEgbG9vayBhdCB0aGUg
dGV4dCBhbmQKc3BlYWsgdXAgaWYgeW91IGRvbid0IHdhbnQgbWUgdG8gbW92ZSBhaGVhZCBmb3Ig
bm93LgoKRm9yIGVhc2llciByZXZpZXcgSSdsbCBwb3N0IHRoZSB0ZXh0IG9mIHJlcG9ydGluZy1p
c3N1ZXMucnN0IGluIHJlcGx5IHRvCnRoaXMgbWFpbC4gSSdsbCBkbyB0aGF0IGluIGEgZmV3IGNo
dW5rcywgYXMgaWYgdGhpcyB3YXMgYSBjb3ZlciBsZXR0ZXIKZm9yIGEgcGF0Y2gtc2V0LiBOb3Rl
LCB0aGUgdmVyc2lvbiBJJ2xsIHNlbmQgaW4gc29tZSBhcmVhcyBsb29rcyBhIGJpdApkaWZmZXJl
bnQgZnJvbSB0aGUgb25lIGN1cnJlbnRseSBpbiBtYWlubGluZS4gVGhhdCdzIGJlY2F1c2UgdGhl
IHRleHQKSSdsbCBzZW5kIGFscmVhZHkgaW5jb3Jwb3JhdGVzIGEgZmV3IHBhdGNoZXMgZnJvbSBk
b2NzLW5leHQgdGhhdCBhcmUKd2FpdGluZyBmb3IgdGhlIG5leHQgbWVyZ2Ugd2luZG93OyBJIGFs
c28gcmVtb3ZlZCB0aGUgIldJUCIgYm94IGFzIHdlbGwKYXMgdHdvIHJlbWFpbmluZyAiRklYTUUi
IG5vdGVzLCBhcyB0aG9zZSBwb2ludCB0byBhc3BlY3RzIEkgbWVudGlvbgpiZWxvdyBhbHJlYWR5
LgoKQEdyZWcsIEBTYXNoYSwgSSdkIGJlIGVzcGVjaWFsbHkgZ2xhZCBpZiBhdCBsZWFzdCBvbmUg
b2YgeW91IHR3byBjb3VsZAp0YWtlIGEgbG9vayBhbmQgeWVsbCBpZiB0aGVyZSBpcyBzb21ldGhp
bmcgeW91IHJlYWxseSBkaXNsaWtlIGZyb20gdGhlCnBlcnNwZWN0aXZlIG9mIHRoZSBzdGFibGUg
bWFpbnRhaW5lcnMuCgpARXZlcnlvbmU6IGlmIHlvdSBwcm92aWRlIGZlZWRiYWNrLCBwbGVhc2Ug
c3RhdGUgaWYgeW91IHRoaW5rIHNvbWV0aGluZwpuZWVkcyB0byBiZSBmaXhlZCBiZWZvcmUgSSBy
ZW1vdmUgdGhlIFdJUCBib3guIEV2ZXJ5dGhpbmcgZWxzZSBJIG1pZ2h0CmxlYXZlIGZvciBsYXRl
ciBkZXBlbmRpbmcgb24gaG93IG11Y2ggZmVlZGJhY2sgSSBnZXQgYW5kIGhvdyBtdWNoIHRpbWUg
SQpjYW4gZmluZCB0byB3b3JrIG9uIGl0IGJlZm9yZSB0aGUgbmV4dCBtZXJnZSB3aW5kb3cgb3Bl
bnMuCgpJdCdzIHByZXR0eSBvYnZpb3VzIHJlcG9ydGluZy1pc3N1ZXMgaW4gYSBsb3Qgb2Ygd2F5
IGlzIHF1aXRlIGRpZmZlcmVudApmcm9tIHJlcG9ydGluZy1idWdzLCBzbyBkZXNjcmliaW5nIHRo
ZSBkaWZmZXJlbmNlcyB3b3VsZCBiZSBoYXJkIGFuZApsaWtlbHkgbm90IHdvcnRoIGl0LiBCdXQg
dGhlcmUgYXJlIGEgZmV3IHRoaW5ncyBoaWRkZW4gaW4gdGhlIGRldGFpbHMKSSdkIGxpa2UgdG8g
YnJpbmcgYXR0ZW50aW9uIHRvLCB0byBlbnN1cmUgdGhleSBhcmUgZmluZSBmb3IgZXZlcnlvbmU6
CgotIHRoZSBvbGQgdGV4dCAocmVwb3J0aW5nLWJ1Z3MucnN0KSB0b29rIGEgdG90YWxseSBkaWZm
ZXJlbnQgYXBwcm9hY2ggdG8KYnVnemlsbGEua2VybmVsLm9yZywgYXMgaXQgbWVudGlvbnMgaXQg
YXMgdGhlIHBsYWNlIHRvIGZpbGUgaXNzdWUgZm9yCnBlb3BsZSB0aGF0IGRvbid0IGtub3duIGhv
dyB0byBjb250YWN0IHRoZSBhcHByb3ByaWF0ZSBwZW9wbGU7IHRoZSBuZXcKdGV4dCAocmVwb3J0
aW5nLWlzc3VlcykgZXhwbGFpbnMgaG93IHRvIGRlY29kZSB0aGUgTUFJTlRBSU5FUlMgZmlsZSBh
bmQKbWVudGlvbnMgb3V0IGJ1Z3RyYWNrZXIgcmFyZWx5LCBiZWNhdXNlIGl0IGlzbid0IHdvcmtp
bmcgdGhhdCB3ZWxsIChidXQKbmV2ZXJ0aGVsZXNzIGlzIHVzZWZ1bCk7IHRob3NlIHBsYWNlcyB0
aGF0IG1lbnRpb25zIGl0IGV4cGxhaW4gdGhhdCBpdCdzCm9mdGVuIHRoZSB3cm9uZyBwbGFjZSB0
byByZXBvcnQgYW4gaXNzdWUuCgotIHRoZSBuZXcgdGV4dCB0ZWxscyB1c2VycyB0byBhbHdheXMg
Q0MgTEtNTCBvbiByZXBvcnRzCgotIHRoZSBuZXcgdGV4dCB0ZWxscyBwZW9wbGUgcHJldHR5IGRp
cmVjdGx5IChhbmQgZWFybHkgb24hKSB0aGV5IHdpbGwKaGF2ZSB0byBpbnN0YWxsIGEgdmFuaWxs
YSBtYWlubGluZSBrZXJuZWwgYWxvbmcgdGhlIHdheSAoc3RhYmxlIGlzCm1lbnRpb25lZCBhcyBh
biBvcHRpb24sIGxvbmd0ZXJtIGRpc2NvdXJhZ2VkKTsgYnV0IGl0IGFsc28gc3RhdGVzIHNvbWUK
bWFpbnRhaW5lcnMgYXJlIHdpbGxpbmcgdG8gYWNjZXB0IHJlcG9ydHMgZnJvbSBkaXN0cm8ga2Vy
bmVscyBhcyBsb25nIGFzCnRoZXkgYXJlIHF1aXRlIGNsb3NlIHRvIHZhbmlsbGEgbWFpbmxpbmUg
b3Igc3RhYmxlLgoKLSB0aGUgdGV4dCBkb2Vzbid0IHlldCBtZW50aW9uIHRoZSBuZXcgJ2xpbnV4
LXJlZ3Jlc3Npb25zJyBtYWlsaW5nIGxpc3QKdGhhdCB3YXMgYmFzaWNhbGx5IGFncmVlZCBvbiBh
IGZldyBkYXlzIGFnbwooaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUhrLT13Z2lZcXFM
enNiOS1VcGZIKz1rdGs3cmEtMmZPc2RjX1pKN1dGNDd3UzczQ0FAbWFpbC5nbWFpbC5jb20vCiks
IGFzIEkgaGF2ZW4ndCBhc2tlZCB5ZXQgZm9yIGl0cyBjcmVhdGlvbi4gV2lsbCBkbyBzbyBzb29u
LgoKSG9wZSB0aGF0J3Mgb2theSBmb3IgZXZlcnlib2R5LiBPaGgsIGFuZCBJIGhvcGUgaXQgd2Fz
IG9rYXkgdG8gQ0MKa3N1bW1pdC1kaXNjdXNzLCBhcyB0aGF0J3MgYWZhaWNzIHRoZSBiZXN0IHdh
eSB0byByZWFjaCBhbGwgdGhlCmltcG9ydGFudCBwZW9wbGUgYW5kIG1haW50YWluZXJzIChzb21l
dGltZXMgSSB3b25kZXIgaWYgd2Ugc2hvdWxkIGhhdmUgYQpiZXR0ZXIgbGlzdCBmb3IgdGhpcyku
IEFuZCBpdCdzIElNSE8gb24gdG9waWMgYW55d2F5IGFzIGNyZWF0aW5nIHRoaXMKdGV4dCB3YXMg
YW1vbmcgdGhlIHRoaW5ncyB3ZSBkaXNjdXNzZWQgb24gdGhlIG1haW50YWluZXJzIHN1bW1pdCAy
MDE3LgoKQlRXLCBpcyBhbnlvbmUgd29uZGVycyBob3cgdGhlIHRleHQgbG9va3MgcHJvY2Vzc2Vk
LCBzZWUKaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUv
cmVwb3J0aW5nLWlzc3Vlcy5odG1sCuKAkyBidXQgcmVtZW1iZXIsIGluIGEgZmV3IGFyZWFzIGl0
IGxvb2tzIGEgYml0IGRpZmZlcmVudCBhcyBpdCdzIG1pc3NpbmcKdGhlIHBhdGNoZXMgYWxyZWFk
eSBpbiBkb2NzLW5leHQuCgpPaGgsIGFuZCB5ZXMsIHRoZSB0ZXh0IGlzIHF1aXRlIGxvbmcuIEJ1
dCBpZiB5b3UgZGlzbGlrZSB0aGF0LCBwbGVhc2UKa2VlcCBpbiBtaW5kIHRoYXQgbm9ib2R5IGhh
cyB0byByZWFkIGFsbCBvZiBpdCBmcm9tIHRvcCB0byBib3R0b206IHRoZQpUTERSIGFuZCB0aGUg
c3RlcC1ieS1zdGVwIGd1aWRlIGJhc2ljYWxseSBzdGF0ZSBhbGwgdGhlIGltcG9ydGFudCBiaXRz
Owp0aGUgcmVmZXJlbmNlIHNlY3Rpb24gZXhwbGFpbnMgZWFjaCBvZiB0aGUgc3RlcHMgaW4gbW9y
ZSBkZXRhaWwgZm9yCnRob3NlIHRoYXQgbmVlZCBtb3JlIGRldGFpbHMgb3IganVzdCB3YW50IHRv
IGxvb2sgc29tZXRoaW5nIHVwLgoKU28sIGxldCB0aGUgZmluYWwoPykgcmV2aWV3IGJlZ2luIQoK
Q2lhbywgVGhvcnN0ZW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMu
bGludXhmb3VuZGF0aW9uLm9yZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFp
bG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MK
