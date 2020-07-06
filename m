Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DE5AC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 16:07:18 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCDA320708
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 16:07:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCDA320708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9ED768626D;
	Mon,  6 Jul 2020 16:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfp3IqL5hqP2; Mon,  6 Jul 2020 16:07:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1690C86287;
	Mon,  6 Jul 2020 16:07:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DDBD8C0891;
	Mon,  6 Jul 2020 16:07:16 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A334C016F;
 Mon,  6 Jul 2020 16:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1416580AD7;
 Mon,  6 Jul 2020 16:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76TBoZ-uNl_G; Mon,  6 Jul 2020 16:07:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4956B876CF;
 Mon,  6 Jul 2020 16:07:13 +0000 (UTC)
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 066G4EY5065090; Mon, 6 Jul 2020 12:06:46 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.102])
 by mx0a-001b2d01.pphosted.com with ESMTP id 322p98g4w8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jul 2020 12:06:46 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
 by ppma06ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 066G6hmv025524;
 Mon, 6 Jul 2020 16:06:43 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma06ams.nl.ibm.com with ESMTP id 322h1h2f95-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jul 2020 16:06:43 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 066G6ffj64946650
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 6 Jul 2020 16:06:41 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 60F794C04A;
 Mon,  6 Jul 2020 16:06:41 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7AD4F4C040;
 Mon,  6 Jul 2020 16:06:40 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.205.149])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon,  6 Jul 2020 16:06:40 +0000 (GMT)
Date: Mon, 6 Jul 2020 19:06:38 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Chris Mason <clm@fb.com>
Message-ID: <20200706160638.GG2999146@linux.ibm.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu>
 <798B0FBF-D7A8-4631-8581-5D199DA50FF9@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <798B0FBF-D7A8-4631-8581-5D199DA50FF9@fb.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-06_12:2020-07-06,
 2020-07-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 clxscore=1011 suspectscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 adultscore=0 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2007060118
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
NTUsIFdpbGx5IFRhcnJlYXUgd3JvdGU6Cj4gCj4gPiBPbiBTYXQsIEp1bCAwNCwgMjAyMCBhdCAw
MTowMjo1MVBNIC0wNzAwLCBEYW4gV2lsbGlhbXMgd3JvdGU6Cj4gPj4gK05vbi1pbmNsdXNpdmUg
dGVybWlub2xvZ3kgaGFzIHRoYXQgc2FtZSBkaXN0cmFjdGluZyBlZmZlY3Qgd2hpY2ggaXMgCj4g
Pj4gd2h5Cj4gPj4gK2l0IGlzIGEgc3R5bGUgaXNzdWUgZm9yIExpbnV4LCBpdCBpbmp1cmVzIGRl
dmVsb3BlciBlZmZpY2llbmN5Lgo+ID4KPiA+IEknbSBwZXJzb25hbGx5IHRoaW5raW5nIHRoYXQg
Zm9yIGEgbm9uLW5hdGl2ZSBzcGVha2VyIGl0J3MgYWxyZWFkeQo+ID4gZGlmZmljdWx0IHRvIGZp
bmQgdGhlIGJlc3QgdGVybSB0byBkZXNjcmliZSBzb21ldGhpbmcsIGJ1dCBoYXZpbmcgdG8KPiA+
IGFwcGx5IGFuIGV4dHJhIGxldmVsIG9mIGZpbHRlcmluZyBvbiB0aGUgZm91bmQgd29yZHMgdG8g
ZmlndXJlIHdoZXRoZXIKPiA+IHRoZXkgYXJlIGFsbG93ZWQgYnkgdGhlIGxhbmd1YWdlIHBvbGlj
ZSBpcyBldmVuIG1vcmUgZGlmZmljdWx0Lgo+IAo+IFNpbmNlIG91ciBkaXNjdXNzaW9ucyBhcmUg
cHVibGljLCB3ZeKAmXZlIGFsd2F5cyBoYWQgdG8gZGVhbCB3aXRoIAo+IGNvbW1lbnRzIGZyb20g
cGVvcGxlIG91dHNpZGUgdGhlIGNvbW11bml0eSBvbiBhIHJhbmdlIG9mIHRvcGljcy4gIEJ1dCAK
PiBpbnNpZGUgdGhlIGtlcm5lbCwgaXTigJlzIGp1c3QgYSBncm91cCBvZiBkZXZlbG9wZXJzIHRy
eWluZyB0byBoZWxwIGVhY2ggCj4gb3RoZXIgcHJvZHVjZSB0aGUgYmVzdCBxdWFsaXR5IG9mIGNv
ZGUuICBXZeKAmXZlIGdvdCBhIGxvbmcgaGlzdG9yeSAKPiB0b2dldGhlciBhbmQgaW4gZ2VuZXJh
bCBJIHRoaW5rIHdl4oCZcmUgcHJldHR5IGdvb2QgYXQgYXNzdW1pbmcgZ29vZCAKPiBpbnRlbnQu
CgpJIGRvbid0IHRoaW5rIGFueWJvZHkgZG91YnRzIHlvdXIgaW50ZW50aW9ucy4gQnV0IHRoZXkg
c2F5LCB0aGUgcm9hZCB0bwpoZWxsIGlzIHBhdmVkIHdpdGggZ29vZCBpbnRlbnRpb25zLgoKSSBo
YWQgYSAicHJpdmlsZWdlIiB0byBsaXZlIGluIHRoZSBVU1NSIGFuZCBiYWNrIHRoZXJlIE5ld3Nw
ZWFrIHdhcyBub3QgYQpmaWN0aW9uIGJ1dCBhIHJlYWxpdHkuIAoKQW5kIGRlc3BpdGUgdGhlIGdv
b2QgaW50ZW50LCBJIGhhdmUgYSByZWFsbHkgc3Ryb25nIGZlZWxpbmcgdGhhdCB0aGlzCmNvdWxk
IGJlIGEgc3RlcCBpbiBhIHdyb25nIGRpcmVjdGlvbi4uLgoKPiA+ICpUaGlzKgo+ID4gaW5qdXJl
cyBkZXZlbG9wZXJzIGVmZmljaWVuY3kuIFdoYXQgY291bGQgaW1wcm92ZSBkZXZlbG9wZXJzIAo+
ID4gZWZmaWNpZW5jeQo+ID4gaXMgdG8gdGFrZSBjYXJlIG9mIHJlbW92aW5nICphbGwqIGlkaW9t
YXRpYyBvciBjdWx0dXJhbCB3b3JkcyB0aGVuLiAKPiA+IEZvcgo+ID4gZXhhbXBsZSBJJ3ZlIGJl
ZW4gcGFydGljaXBhdGluZyB0byBwcm9qZWN0cyB1c2luZyB0aGUgdGVybSAKPiA+ICJibHVlcHJp
bnQiLAo+ID4gSSBkaWRuJ3QgdW5kZXJzdGFuZCB3aGF0IHRoYXQgbWVhbnQuIEl0IHdhcyBvbmNl
IGV4cGxhaW5lZCB0byBtZSBhbmQKPiA+IGdpdmVuIHRoYXQgaXQgaGFkIG5vIGxvZ2ljYWwgcmVh
c29uIGZvciBiZWluZyBjYWxsZWQgdGhpcyB3YXksIEkgbm93Cj4gPiBmb3Jnb3QuIElmIHdlIGZv
bGxvdyB5b3VyIHJlYXNvbmluZywgU3VjaCB3b3JkcyBzaG91bGQgYmUgYmFubmVkIGZvcgo+ID4g
ZXhhY3RseSB0aGUgc2FtZSByZWFzb25zLiBTYW1lIGZvciBjb2xvcnMgdGhhdCBwcm9iYWJseSBk
b24ndCBtZWFuCj4gPiBhbnl0aGluZyB0byB0aG9zZSBib3JuIGJsaW5kLgo+ID4KPiA+IEZvciBl
eGFtcGxlIGlmIGluIG15IGxvY2FsIGN1bHR1cmUgd2UgZWF0IHRvbWF0b2VzIGF0IHN0YXJ0ZXJz
IGFuZAo+ID4gYXBwbGVzIGZvciBkZXNzZXJ0LCBpdCBjb3VsZCBiZSBjb252ZW5pZW50IGZvciBt
ZSB0byB1c2UgInRvbWF0byIgYW5kCj4gPiAiYXBwbGUiIGFzIGxpc3QgZWxlbWVudHMgdG8gbmFt
ZSB0aGUgcG9pbnRlcnMgbGVhZGluZyB0byB0aGUgYmVnaW5uaW5nCj4gPiBhbmQgdGhlIGVuZCBv
ZiB0aGUgbGlzdCwgYW5kIGl0IG1pZ2h0IHNvdW5kIG9idmlvdXMgdG8gbWFueSBwZW9wbGUsIAo+
ID4gYnV0Cj4gPiBub3QgYXQgYWxsIGZvciBtYW55IG90aGVycy4KPiA+Cj4gPiBNYXliZSBpbnN0
ZWFkIG9mIHByb3ZpZGluZyBhbiBleHBsaWNpdCBsaXN0IG9mIGEgZmV3IHdvcmRzIGl0IHNob3Vs
ZAo+ID4gc2ltcGx5IHNheSB0aGF0IHRlcm1zIHRoYXQgdGFrZSB0aGVpciByb290cyBpbiB0aGUg
bm9uLXRlY2huaWNhbCB3b3JsZAo+ID4gYW5kIHdob3NlIG1lYW5pbmcgY2FuIG9ubHkgYmUgdW5k
ZXJzdG9vZCBiYXNlZCBvbiBoaXN0b3J5IG9yIGxvY2FsCj4gPiBjdWx0dXJlIG91Z2h0IHRvIGJl
IGF2b2lkZWQsIGJlY2F1c2UgKnRoYXQqIGFjdHVhbGx5IGlzIHRoZSByZWFsCj4gPiByb290IGNh
dXNlIG9mIHRoZSBwcm9ibGVtIHlvdSdyZSB0cnlpbmcgdG8gYWRkcmVzcy4KPiAKPiBJ4oCZZCBk
ZWZpbml0ZWx5IGFncmVlIHRoYXQgaXTigJlzIGEgZ29vZCBnb2FsIHRvIGtlZXAgb3V0IG5vbi10
ZWNobmljYWwgCj4gdGVybXMuICBFdmVuIHRob3VnaCB3ZSBhbHJlYWR5IHRyeSwgZXZlcnkgc3Vi
c3lzdGVtIGhhcyBpdHMgb3duIHNldCBvZiAKPiBwYXR0ZXJucyB0aGF0IHJlZmxlY3QgdGhlIG1v
c3QgZnJlcXVlbnQgY29udHJpYnV0b3JzLgo+IAo+IC1jaHJpcwo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcg
bGlzdAo+IEtzdW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCj4gaHR0cHM6
Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8va3N1bW1pdC1kaXNj
dXNzCgotLSAKU2luY2VyZWx5IHlvdXJzLApNaWtlLgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1c3MgbWFpbGluZyBsaXN0CktzdW1t
aXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCmh0dHBzOi8vbGlzdHMubGludXhm
b3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1taXQtZGlzY3Vzcwo=
