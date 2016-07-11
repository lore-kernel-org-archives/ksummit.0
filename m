Return-Path: <trondmy@primarydata.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87614258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:30:26 +0000 (UTC)
Received: from us-smtp-delivery-194.mimecast.com
	(us-smtp-delivery-194.mimecast.com [63.128.21.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A09341AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 04:30:25 +0000 (UTC)
From: Trond Myklebust <trondmy@primarydata.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Mon, 11 Jul 2016 04:30:20 +0000
Message-ID: <9CB3434B-6393-453A-9505-24082B2FBAF9@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<1468210973.3078.13.camel@HansenPartnership.com>
In-Reply-To: <1468210973.3078.13.camel@HansenPartnership.com>
Content-Language: en-US
Content-ID: <4E5B8C5026BE874E87F243A07F46B675@namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

DQo+IE9uIEp1bCAxMSwgMjAxNiwgYXQgMDA6MjIsIEphbWVzIEJvdHRvbWxleSA8SmFtZXMuQm90
dG9tbGV5QEhhbnNlblBhcnRuZXJzaGlwLmNvbT4gd3JvdGU6DQo+IA0KPiBPbiBNb24sIDIwMTYt
MDctMTEgYXQgMDQ6MDMgKzAwMDAsIFRyb25kIE15a2xlYnVzdCB3cm90ZToNCj4+IFNvLCB3ZSBt
aWdodCBhcyB3ZWxsIG1ha2UgdGhpcyBhIGZvcm1hbCBwcm9wb3NhbC4NCj4+IA0KPj4gSeKAmWQg
bGlrZSB0byBwcm9wb3NlIHRoYXQgd2UgaGF2ZSBhIGRpc2N1c3Npb24gYXJvdW5kIGhvdyB0byBt
YWtlIGl0IA0KPj4gZWFzaWVyIHRvIGltcGxlbWVudCBrZXJuZWwgdW5pdCB0ZXN0cy4gSeKAmXZl
IGNvLW9wdGVkIERhbiBhcyBoZSBoYXMgDQo+PiBleHByZXNzZWQgYm90aCBhbiBpbnRlcmVzdCBh
bmQgaGFuZHMtb24gZXhwZXJpZW5jZS4gOi0pDQo+IA0KPiBPSywgaWYgeW91IHdhbnQgdG8gYmUg
Zm9ybWFsLCBJJ2xsIHByb3Bvc2Ugd2UgZG8gYSBzZXBhcmF0ZSB0b3BpYyBvbg0KPiBzdGFibGUg
d29ya2Zsb3cuICBQcm9iYWJseSBiZWdpbm5pbmcgd2l0aCBvbmUgb2YgdGhlIG1haW50YWluZXJz
IHdobw0KPiBkb2VzIHRoZWlyIG93biBzdGFibGUgdHJlZSAoSSdtIG5vdCBvcmdhbmlzZWQgZW5v
dWdoIHRvIGhhdmUgY28tb3B0ZWQNCj4gc29tZW9uZSB5ZXQsIGJ1dCBJJ2xsIHRyeSkgdG8gZXhw
bGFpbiB3aHkgdGhleSBkbyB0aGlzIGluc3RlYWQgb2YganVzdA0KPiBhZGRpbmcgYSBzdGFibGUg
dGFnIGxpa2UgdGhlIHJlc3Qgb2YgdXMgYW5kIGhvdyBtdWNoIGV4dHJhIGVmZm9ydCBpdA0KPiBj
b3N0cyB0aGVtIGFuZCB3aGV0aGVyIG1vcmUgb2YgdXMgc2hvdWxkIGJlIGFkb3B0aW5nIGl0LiAg
VGhlbiBtb3ZpbmcNCj4gb24gdG8gZGlzY3VzcyBleHRyYSBzdGVwcyBmb3IgcHJldmVudGluZyBz
dGFibGUgcmVncmVzc2lvbnMsIGxpa2UNCj4gc2hvdWxkIHdlIGluc2lzdCB0aGF0IHBhdGNoZXMg
dGFnZ2VkIGZvciBzdGFibGUgYmUgdGVzdGVkIGJ5IHNvbWVvbmUNCj4gd2l0aCB0aGUgaGFyZHdh
cmUgb24gY3VycmVudCBoZWFkLiAgRmluYWxseSBJIHRoaW5rIHdlIHNob3VsZCBkZWJhdGUNCj4g
d2hldGhlciB3ZSBoYXZlIHRvbyBtYW55IHN0YWJsZSB0cmVlcyBhbmQgcGVyaGFwcyB3ZSBzaG91
bGQgc29ydCB0aGVtDQo+IGludG8gIm9mZmljaWFsIiAod2UgY2FyZSBtb3JlIGFib3V0IHRoaXMg
dHJlZSkgYW5kICJ1bm9mZmljaWFsIiBtZWFuaW5nDQo+IGl0J3MgcnVuIGZ1bGx5IGF0IHRoZSBy
aXNrIG9mIHRoZSBtYWludGFpbmVyLg0KPiANCg0KSnVzdCB0byBjbGFyaWZ5OiBJIGRpZG7igJl0
IG1lYW4g4oCcZm9ybWFsIiBpbiBhbnkgcGVqb3JhdGl2ZSBzZW5zZeKApiBBcyBJIHVuZGVyc3Rh
bmQgaXQsIHRoZSBrZXJuZWwgc3VtbWl0IFBDIHdhbnRzIHRvIHNlZSBjbGVhciBwcm9wb3NhbHMg
d2l0aCBhIOKAnENPUkUgVE9QSUPigJ0gZXRjIGFuZCBzbyB0aGF0IHdhcyBhbGwgSSBpbnRlbmRl
ZC4NCknigJltIHF1aXRlIGhhcHB5IHRvIHNlZSBhIGRpc2N1c3Npb24gb24gc3RhYmxlIHdvcmtm
bG93IHVuZGVyIHRoZSBwcmVtaXNlcyB5b3UgZGVzY3JpYmUuDQoNCkNoZWVycw0KICBUcm9uZA==
