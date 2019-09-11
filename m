Return-Path: <SRS0=5ifu=XG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FD9C5ACAE
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 10:58:47 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F62A2089F
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 10:58:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=labbott.name header.i=@labbott.name header.b="IvFzUB7W"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F62A2089F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=labbott.name
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EBF50E44;
	Wed, 11 Sep 2019 10:58:46 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2317BE32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 10:58:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9771C894
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 10:58:45 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id t9so2964656wmi.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 03:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=lemYNYtgToTykhs7Hiz/YSCcKOw/D2ARLV0H11ZZBBY=;
	b=IvFzUB7WwNzJRlMhu8byrfbS8LXHYPxcg0v3HICGqp4Cvf/Ye460dAGdm6RKKqaE1N
	9Rb+YDOHFnrHRBfMc8ImaTvXYe8H75QzuQ2DhP+orG8BUEGv/oUV+8NMsFov3nMvoI5f
	+948wrbtZlM1LzHUmq++uYr52hQLI3mT1OmKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=lemYNYtgToTykhs7Hiz/YSCcKOw/D2ARLV0H11ZZBBY=;
	b=s1Nk/dUv/Zj5EtQRJ4jpKngu+jA26mu4DRG5B7LlqJ114v7A1SGk2OYeuYWmCsjksw
	g0A+6Epdd7iVADiCqmRSU0INwXM2xadaYXqqv+L9qynCkE9jvmfWuRMt9U79XK2HM6w1
	ScYzYDdGoiUnCV0aQx6l7TenZfZiVmPO46Qf6D1XPj6cMI5oKb/TNDvcIyQobYtfcPLi
	zMxLT5AC6nEnI5JgUnpdYsOgrhzNXaHtAb04qV7EnaDkAX6MaT+rZ8eq/cGV1EGoShVv
	KqlGiuyry9lBSwVs9qasMeqY55UK9o8Tr1bbmNqngTL7fRBfrpmMvsgCBqeu8r/NkWts
	ZXfQ==
X-Gm-Message-State: APjAAAXkBuvTWtRo0w+obp8qWPAw4EYdO/M645TPu9nxherLJEHZxFsR
	qGau9MaKRuw9nY6pMgkIdfNZsNWlp2iqGpfM
X-Google-Smtp-Source: APXvYqwL4TtccIE8dhvRYLYt0IBVInmLIOqgs4VNLbtCgIQeCotJUztSLQmt5dQq1tsQ1g3P6oe2vg==
X-Received: by 2002:a7b:cc13:: with SMTP id f19mr3575179wmh.141.1568199523816; 
	Wed, 11 Sep 2019 03:58:43 -0700 (PDT)
Received: from [10.93.12.198] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
	by smtp.gmail.com with ESMTPSA id
	b144sm2512313wmb.3.2019.09.11.03.58.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Sep 2019 03:58:43 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 11 Sep 2019 06:58:41 -0400
Message-Id: <8DB2E3F6-F5E9-4762-B19E-332C3B313ED1@labbott.name>
To: ksummit-discuss@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
X-Mailer: Apple Mail (2.3273)
Subject: [Ksummit-discuss] Results: Linux Foundation Technical Advisory
	Board Election 2019
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

VGhlIGZvbGxvd2luZyBhcmUgdGhlIHJlc3VsdHMgb2YgdGhlIDIwMTkgVGVjaG5pY2FsIEFkdmlz
b3J5IEJvYXJkIChUQUIpIGVsZWN0aW9uczoKCjEuIEdyZWcgS3JvYWgtSGFydG1hbgoyLiBKb25h
dGhhbiBDb3JiZXQKMy4gU3RldmVuIFJvc3RlZHQKNC4gVGVkIFRz4oCZbwo1LiBTYXNoYSBMZXZp
bgoKVGhhbmsgeW91IHRvIGFsbCBvZiB0aGUgY2FuZGlkYXRlcyBmb3Igc3RlcHBpbmcgdXAgYW5k
IHJ1bm5pbmcgdGhpcyB5ZWFyLiBXZQphcHByZWNpYXRlIHlvdXIgd2lsbGluZ25lc3MgdG8gc2Vy
dmUgdGhlIGtlcm5lbCBjb21tdW5pdHkuCgpXZSBoYWQgMTc0IHBlb3BsZSB2b3RlIHRoaXMgeWVh
ci4gQmVjYXVzZSBvZiB0aGUgd2F5IENJVlMgd29ya3MsIHdlIGRvbid0CmhhdmUgdGhlIGZ1bGwg
Y291bnQgb2Ygdm90ZXMgZm9yIGVhY2ggcGVyc29uLCBvbmx5IHRoZSBhZ2dyZWdhdGVkIHNjb3Jl
IGFuZAp3aG8gIndvbiIgYWdhaW5zdCBlYWNoIHBlcnNvbi4gUmVzdWx0cyBhcmUgYXZhaWxhYmxl
IHRvIHRob3NlIHdobyBhcmUgaW50ZXJlc3RlZC4KQSBiaWcgdGhhbmsgeW91IHRvIGV2ZXJ5b25l
IHdobyBoZWxwZWQgd2l0aCB0aGUgZWxlY3Ryb25pYyB2b3RpbmcgdGhpcyB5ZWFyLAp3aGV0aGVy
IHBhcnRpY2lwYXRpbmcgaW4gYSB0ZXN0IHZvdGUgb3IgcHJvb2ZyZWFkaW5nIG15IGUtbWFpbHMg
ZXhwbGFpbmluZwp2b3RpbmcgcHJvY2VkdXJlcy4KCkNvbmdyYXR1bGF0aW9ucyB0byBhbGwgdGhl
IGVsZWN0ZWQgY2FuZGlkYXRlcyEKClRoYW5rcywKTGF1cmEKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdApL
c3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRwczovL2xpc3RzLmxp
bnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MK
