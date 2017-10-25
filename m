Return-Path: <prvs=464e5a0c2=Bart.VanAssche@wdc.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E4DDBE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:07:06 +0000 (UTC)
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B09374DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:07:02 +0000 (UTC)
From: Bart Van Assche <Bart.VanAssche@wdc.com>
To: "greg@kroah.com" <greg@kroah.com>
Date: Wed, 25 Oct 2017 10:06:59 +0000
Message-ID: <1508926018.4165.12.camel@wdc.com>
References: <1508924843.4165.6.camel@wdc.com>
	<20171025095403.GA19080@kroah.com>
In-Reply-To: <20171025095403.GA19080@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8609A9721BDDC409D0A4F07D7C153BE@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: "leonro@mellanox.com" <leonro@mellanox.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

T24gV2VkLCAyMDE3LTEwLTI1IGF0IDExOjU0ICswMjAwLCBHcmVnIEtIIHdyb3RlOg0KPiBPbiBX
ZWQsIE9jdCAyNSwgMjAxNyBhdCAwOTo0NzoyNUFNICswMDAwLCBCYXJ0IFZhbiBBc3NjaGUgd3Jv
dGU6DQo+ID4gSGVsbG8gVGVkLA0KPiA+IA0KPiA+IEFzIHlvdSBtb3N0IGxpa2VseSBrbm93IGVu
ZGlhbm5lc3MgYW5ub3RhdGlvbnMgbGlrZSBfX2JlMzIgY2FuIGJlIHZlcmlmaWVkDQo+ID4gYnkg
dGhlIHN0YXRpYyBzb3VyY2UgY29kZSBhbmFseXplciBjYWxsZWQgc3BhcnNlLiBUaGVzZSBhbm5v
dGF0aW9ucyBhcmUgYQ0KPiA+IGJpZyBoZWxwIHRvIHZlcmlmeSB3aGV0aGVyIGVuZGlhbm5lc3Mg
Y29udmVyc2lvbnMgaW4gZHJpdmVycyBhcmUgY29ycmVjdA0KPiA+IChlLmcuIGJlMzJfdG9fY3B1
KCkpLiBIb3dldmVyLCBtYW55IGRyaXZlciBhdXRob3JzIGVpdGhlciBhcmUgbm90IGZhbWlsaWFy
DQo+ID4gd2l0aCBzcGFyc2Ugb3IgZG8gbm90IHVzZSBpdCB0byB2ZXJpZnkgdGhlaXIgd29yay4g
SSB0aGluayB3ZSBuZWVkIGEgd2F5DQo+ID4gdG8gZW5jb3VyYWdlIGRyaXZlciBhdXRob3JzIHRv
IHBheSBhdHRlbnRpb24gdG8gZW5kaWFubmVzcyBhbm5vdGF0aW9ucywNCj4gPiBlLmcuIGJ5IGxl
dHRpbmcgdGhlIHplcm8tZGF5IGtlcm5lbCB0ZXN0IGluZnJhc3RydWN0dXJlIHZlcmlmeSBlbmRp
YW5uZXNzDQo+ID4gYW5ub3RhdGlvbnMuIFBsZWFzZSBjb25zaWRlciB0byBhZGQgdGhpcyB0b3Bp
YyB0byB0aGUga2VybmVsIHN1bW1pdCBhZ2VuZGEuIA0KPiANCj4gRHJpdmVyIHN1YnN5c3RlbSBt
YWludGFpbmVycyBzaG91bGQga25vdyB0aGlzLCBhbmQgc3BhcnNlIHJlcG9ydHMgc2hvdWxkDQo+
IGJlIHNpbXBsZSB0byBydW4gYW5kIG5vdGljZSB0aGVzZSBpc3N1ZXMuICBJZiB5b3Uga25vdyBv
ZiBhIHN1YnN5c3RlbQ0KPiB0aGF0IGlzIG5vdCBwYXlpbmcgYXR0ZW50aW9uIHRvIHRoaXMsIHBs
ZWFzZSBsZXQgdGhvc2UgbWFpbnRhaW5lcnMga25vdw0KPiBhbmQgc2VuZCBwYXRjaGVzIHRvIHJl
c29sdmUgdGhlIGlzc3VlcyA6KQ0KDQpIaSBHcmVnLA0KDQpBIHNpZ25pZmljYW50IGNoYWxsZW5n
ZSBpcyB0aGF0IGZvciBzZXZlcmFsIGRyaXZlcnMgKGUuZy4gZHJpdmVycy9zY3NpL3FsYTJ4eHgN
CmFuZCBkcml2ZXJzL2luZmluaWJhbmQvaHcvbmVzKSBmaXhpbmcgdGhlIGVuZGlhbm5lc3MgYW5u
b3RhdGlvbnMgaXMgc28gaGFyZA0KdGhhdCBvbmx5IHRoZSBkcml2ZXIgYXV0aG9ycyBjYW4gbWFr
ZSB0aGVzZSBkcml2ZXJzIGVuZGlhbm5lc3MgY2xlYW4uIFRocmVlDQpjaGFsbGVuZ2VzIHRoYXQg
aGF2ZSBiZWVuIGVuY291bnRlcmVkIHdoaWxlIHRyeWluZyB0byBtYWtlIGRyaXZlcnMgZW5kaWFu
bmVzcw0KY2xlYW4gYXJlOg0KLSBTb21lIGRyaXZlciBhdXRob3JzIHVzZSBhIHNpbmdsZSB2YXJp
YWJsZSB0byBzdG9yZSBib3RoIGNwdS1lbmRpYW4gYW5kIGJpZw0KICBlbmRpYW4gZGF0YS4NCi0g
RW5kaWFubmVzcyBidWdzIC0gdXNpbmcgYSBiaWcgZW5kaWFuIGludGVnZXIgd2hlcmUgYSBjcHUg
ZW5kaWFuIG51bWJlcg0KICBzaG91bGQgaGF2ZSBiZWVuIHVzZWQgb3IgdmljZSB2ZXJzYS4NCi0g
VGhlIGRlZmluaXRpdmUgcmVzb3VyY2UgZm9yIHRoZSBlbmRpYW5uZXNzIGZvcm1hdCBpcyB0aGUg
ZmlybXdhcmUNCiAgZG9jdW1lbnRhdGlvbi4gRm9yIG1hbnkga2VybmVsIGRyaXZlcnMgdGhlIGZp
cm13YXJlIGRvY3VtZW50YXRpb24gaXMgZWl0aGVyDQogIG5vdCBhdmFpbGFibGUgb3Igb25seSBh
dmFpbGFibGUgdW5kZXIgTkRBLg0KDQpCYXJ0Lg==
