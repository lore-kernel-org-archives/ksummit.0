Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4385C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 14:08:14 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A97720715
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 14:08:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="iIlTIgm1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A97720715
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EE358752D;
	Mon,  6 Jul 2020 14:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M5zBsqCv9XgH; Mon,  6 Jul 2020 14:08:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA6E8873A8;
	Mon,  6 Jul 2020 14:08:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D37AC0893;
	Mon,  6 Jul 2020 14:08:13 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58569C016F;
 Mon,  6 Jul 2020 14:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BEF5880C2;
 Mon,  6 Jul 2020 14:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7WldpjFe+atz; Mon,  6 Jul 2020 14:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70DE987FD2;
 Mon,  6 Jul 2020 14:06:43 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2C02E97E;
 Mon,  6 Jul 2020 16:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1594044400;
 bh=Y0Dxs8yHGnMAS7O4nFNLcSPnhsF1XRUFurGKDDc2C1Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iIlTIgm1Aik/z6QQROo3wt9iJVpDdvg2MnZhovSOh2B7EtM+YuYI+0QWr/3eTfOiB
 KOlUPFLn3y02tmJbMEs+p7usOW8gVlVttuUPMizP7QNCD/DJS7Y4PcZ1KU8KVrnomu
 c03J1o18JljXK4F14qbxCbOPKkPghGt7iuxWdGuc=
Date: Mon, 6 Jul 2020 17:06:36 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Chris Mason <clm@fb.com>
Message-ID: <20200706140636.GA19803@pendragon.ideasonboard.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu>
 <798B0FBF-D7A8-4631-8581-5D199DA50FF9@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <798B0FBF-D7A8-4631-8581-5D199DA50FF9@fb.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, Chris Mason <clm@fb.clm>,
 Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

SGkgQ2hyaXMsCgpPbiBNb24sIEp1bCAwNiwgMjAyMCBhdCAxMjo0NTozNFBNICswMDAwLCBDaHJp
cyBNYXNvbiB2aWEgS3N1bW1pdC1kaXNjdXNzIHdyb3RlOgo+IE9uIDUgSnVsIDIwMjAsIGF0IDA6
NTUsIFdpbGx5IFRhcnJlYXUgd3JvdGU6Cj4gPiBPbiBTYXQsIEp1bCAwNCwgMjAyMCBhdCAwMTow
Mjo1MVBNIC0wNzAwLCBEYW4gV2lsbGlhbXMgd3JvdGU6Cj4gPj4gK05vbi1pbmNsdXNpdmUgdGVy
bWlub2xvZ3kgaGFzIHRoYXQgc2FtZSBkaXN0cmFjdGluZyBlZmZlY3Qgd2hpY2ggaXMgd2h5Cj4g
Pj4gK2l0IGlzIGEgc3R5bGUgaXNzdWUgZm9yIExpbnV4LCBpdCBpbmp1cmVzIGRldmVsb3BlciBl
ZmZpY2llbmN5Lgo+ID4KPiA+IEknbSBwZXJzb25hbGx5IHRoaW5raW5nIHRoYXQgZm9yIGEgbm9u
LW5hdGl2ZSBzcGVha2VyIGl0J3MgYWxyZWFkeQo+ID4gZGlmZmljdWx0IHRvIGZpbmQgdGhlIGJl
c3QgdGVybSB0byBkZXNjcmliZSBzb21ldGhpbmcsIGJ1dCBoYXZpbmcgdG8KPiA+IGFwcGx5IGFu
IGV4dHJhIGxldmVsIG9mIGZpbHRlcmluZyBvbiB0aGUgZm91bmQgd29yZHMgdG8gZmlndXJlIHdo
ZXRoZXIKPiA+IHRoZXkgYXJlIGFsbG93ZWQgYnkgdGhlIGxhbmd1YWdlIHBvbGljZSBpcyBldmVu
IG1vcmUgZGlmZmljdWx0Lgo+IAo+IFNpbmNlIG91ciBkaXNjdXNzaW9ucyBhcmUgcHVibGljLCB3
ZeKAmXZlIGFsd2F5cyBoYWQgdG8gZGVhbCB3aXRoIAo+IGNvbW1lbnRzIGZyb20gcGVvcGxlIG91
dHNpZGUgdGhlIGNvbW11bml0eSBvbiBhIHJhbmdlIG9mIHRvcGljcy4gIEJ1dCAKPiBpbnNpZGUg
dGhlIGtlcm5lbCwgaXTigJlzIGp1c3QgYSBncm91cCBvZiBkZXZlbG9wZXJzIHRyeWluZyB0byBo
ZWxwIGVhY2ggCj4gb3RoZXIgcHJvZHVjZSB0aGUgYmVzdCBxdWFsaXR5IG9mIGNvZGUuICBXZeKA
mXZlIGdvdCBhIGxvbmcgaGlzdG9yeSAKPiB0b2dldGhlciBhbmQgaW4gZ2VuZXJhbCBJIHRoaW5r
IHdl4oCZcmUgcHJldHR5IGdvb2QgYXQgYXNzdW1pbmcgZ29vZCAKPiBpbnRlbnQuCj4gCj4gPiAq
VGhpcyogaW5qdXJlcyBkZXZlbG9wZXJzIGVmZmljaWVuY3kuIFdoYXQgY291bGQgaW1wcm92ZSBk
ZXZlbG9wZXJzIGVmZmljaWVuY3kKPiA+IGlzIHRvIHRha2UgY2FyZSBvZiByZW1vdmluZyAqYWxs
KiBpZGlvbWF0aWMgb3IgY3VsdHVyYWwgd29yZHMgdGhlbi4gRm9yCj4gPiBleGFtcGxlIEkndmUg
YmVlbiBwYXJ0aWNpcGF0aW5nIHRvIHByb2plY3RzIHVzaW5nIHRoZSB0ZXJtICJibHVlcHJpbnQi
LAo+ID4gSSBkaWRuJ3QgdW5kZXJzdGFuZCB3aGF0IHRoYXQgbWVhbnQuIEl0IHdhcyBvbmNlIGV4
cGxhaW5lZCB0byBtZSBhbmQKPiA+IGdpdmVuIHRoYXQgaXQgaGFkIG5vIGxvZ2ljYWwgcmVhc29u
IGZvciBiZWluZyBjYWxsZWQgdGhpcyB3YXksIEkgbm93Cj4gPiBmb3Jnb3QuIElmIHdlIGZvbGxv
dyB5b3VyIHJlYXNvbmluZywgU3VjaCB3b3JkcyBzaG91bGQgYmUgYmFubmVkIGZvcgo+ID4gZXhh
Y3RseSB0aGUgc2FtZSByZWFzb25zLiBTYW1lIGZvciBjb2xvcnMgdGhhdCBwcm9iYWJseSBkb24n
dCBtZWFuCj4gPiBhbnl0aGluZyB0byB0aG9zZSBib3JuIGJsaW5kLgo+ID4KPiA+IEZvciBleGFt
cGxlIGlmIGluIG15IGxvY2FsIGN1bHR1cmUgd2UgZWF0IHRvbWF0b2VzIGF0IHN0YXJ0ZXJzIGFu
ZAo+ID4gYXBwbGVzIGZvciBkZXNzZXJ0LCBpdCBjb3VsZCBiZSBjb252ZW5pZW50IGZvciBtZSB0
byB1c2UgInRvbWF0byIgYW5kCj4gPiAiYXBwbGUiIGFzIGxpc3QgZWxlbWVudHMgdG8gbmFtZSB0
aGUgcG9pbnRlcnMgbGVhZGluZyB0byB0aGUgYmVnaW5uaW5nCj4gPiBhbmQgdGhlIGVuZCBvZiB0
aGUgbGlzdCwgYW5kIGl0IG1pZ2h0IHNvdW5kIG9idmlvdXMgdG8gbWFueSBwZW9wbGUsIGJ1dAo+
ID4gbm90IGF0IGFsbCBmb3IgbWFueSBvdGhlcnMuCj4gPgo+ID4gTWF5YmUgaW5zdGVhZCBvZiBw
cm92aWRpbmcgYW4gZXhwbGljaXQgbGlzdCBvZiBhIGZldyB3b3JkcyBpdCBzaG91bGQKPiA+IHNp
bXBseSBzYXkgdGhhdCB0ZXJtcyB0aGF0IHRha2UgdGhlaXIgcm9vdHMgaW4gdGhlIG5vbi10ZWNo
bmljYWwgd29ybGQKPiA+IGFuZCB3aG9zZSBtZWFuaW5nIGNhbiBvbmx5IGJlIHVuZGVyc3Rvb2Qg
YmFzZWQgb24gaGlzdG9yeSBvciBsb2NhbAo+ID4gY3VsdHVyZSBvdWdodCB0byBiZSBhdm9pZGVk
LCBiZWNhdXNlICp0aGF0KiBhY3R1YWxseSBpcyB0aGUgcmVhbAo+ID4gcm9vdCBjYXVzZSBvZiB0
aGUgcHJvYmxlbSB5b3UncmUgdHJ5aW5nIHRvIGFkZHJlc3MuCj4gCj4gSeKAmWQgZGVmaW5pdGVs
eSBhZ3JlZSB0aGF0IGl04oCZcyBhIGdvb2QgZ29hbCB0byBrZWVwIG91dCBub24tdGVjaG5pY2Fs
IAo+IHRlcm1zLiAgRXZlbiB0aG91Z2ggd2UgYWxyZWFkeSB0cnksIGV2ZXJ5IHN1YnN5c3RlbSBo
YXMgaXRzIG93biBzZXQgb2YgCj4gcGF0dGVybnMgdGhhdCByZWZsZWN0IHRoZSBtb3N0IGZyZXF1
ZW50IGNvbnRyaWJ1dG9ycy4KClRoYXQncyBhbiBpbnRlcmVzdGluZyBwb2ludCwgYmVjYXVzZSB0
byBtZSwgaXQncyB0aGUgZXhhY3Qgb3Bwb3NpdGUuIE9uZQpvZiB0aGUgaW50ZWxsZWN0dWFsIHJl
d2FyZHMgSSBmaW5kIGluIHdvcmtpbmcgd2l0aCB0aGUga2VybmVsIGlzIHRoYXQKb3VyIGNvbW11
bml0eSBpcyBpbnRlcm5hdGlvbmFsIGFuZCBtdWx0aWN1bHR1cmFsLCBhbGxvd2luZyBtZSB0byBs
ZWFybgphYm91dCBvdGhlciBjdWx0dXJlcy4gQWltaW5nIGZvciB0aGUgbG93ZXN0IGNvbW1vbiBk
ZW5vbWluYXRvciBzZWVtcyB0bwptZSB0byBiZSBjbG9zZXIgdG8gZXJhc2luZyBjdWx0dXJhbCBk
aWZmZXJlbmNlcyB0aGFuIGluY2x1ZGluZyB0aGVtLgoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBp
bmNoYXJ0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCktz
dW1taXQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91
bmRhdGlvbi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlz
dGluZm8va3N1bW1pdC1kaXNjdXNzCg==
