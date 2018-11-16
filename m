Return-Path: <y-goto@fujitsu.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0D0B49D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 03:08:16 +0000 (UTC)
Received: from esa20.fujitsucc.c3s2.iphmx.com (esa20.fujitsucc.c3s2.iphmx.com
	[216.71.158.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A224782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 03:08:15 +0000 (UTC)
From: "y-goto@fujitsu.com" <y-goto@fujitsu.com>
To: 'Dan Williams' <dan.j.williams@intel.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Date: Fri, 16 Nov 2018 02:58:16 +0000
Message-ID: <TY2PR01MB32595232F5179F94D5ED203590DD0@TY2PR01MB3259.jpnprd01.prod.outlook.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
Content-Language: ja-JP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: Dave Jiang <dave.jiang@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>, Ross Zwisler <zwisler@kernel.org>
Subject: Re: [Ksummit-discuss] [RFC PATCH 3/3] libnvdimm,
	MAINTAINERS: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

SGksIERhbi1zYW4sDQoNClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4gSSBoYXZlIG9uZSBjb21t
ZW50Lg0KDQo+IC0tLQ0KPiAgRG9jdW1lbnRhdGlvbi9udmRpbW0vc3Vic3lzdGVtLXByb2ZpbGUu
cnN0IHwgICA4NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICBNQUlOVEFJTkVSUyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICA0ICsNCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgOTAgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
bnZkaW1tL3N1YnN5c3RlbS1wcm9maWxlLnJzdA0KPiANCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vbnZkaW1tL3N1YnN5c3RlbS1wcm9maWxlLnJzdCBiL0RvY3VtZW50YXRpb24vbnZkaW1t
L3N1YnN5c3RlbS1wcm9maWxlLnJzdA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAw
MDAwMDAwMDAwMDAuLmQzNDI4YmU3NTI4ZQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vbnZkaW1tL3N1YnN5c3RlbS1wcm9maWxlLnJzdA0KPiBAQCAtMCwwICsxLDg2IEBA
DQo+ICtMSUJOVkRJTU0gU3Vic3lzdGVtIFByb2ZpbGUNCj4gKz09PT09PT09PT09PT09PT09PT09
PT09PT09PQ0KPiArDQo+ICtPdmVydmlldw0KPiArLS0tLS0tLS0NCj4gK1NvLCB5b3UgaGF2ZSBy
ZWNlbnRseSBiZWNvbWUgYSBtYWludGFpbmVyIG9mIHRoZSBMSUJOVkRJTU0gc3Vic3lzdGVtLA0K
PiArY29uZG9sZW5jZXMsIGl0IGlzIGEgdGhhbmtsZXNzIGpvYiwgaGVyZSBpcyB0aGUgbGF5IG9m
IHRoZSBsYW5kLiBUaGUgZ2l0DQoNCkhlcmUsIEkgdGhpbmsgdGhhdCBtb3JlIHBvc2l0aXZlIHNl
bnRlbmNlIGlzIGRlc2lyYWJsZSB0byBlbmNvdXJhZ2UgbmV3IGNvbWVyLg0KDQpDZXJ0YWlubHks
IEkgY2FuIGltYWdpbmUgdGhhdCBtYWludGFpbmVyIGlzIGhhcmQgYW5kIHRvdWdoIHdvcmssDQpi
dXQgSSBiZWxpZXZlIGl0IGlzIGdyZWF0IHdvcmsuDQpFdmVuIGlmIHRoaXMgaXMgaXJvbnkgb3Ig
am9rZSwgdGhlbiBpdCBtYXkgYmUgY2F1c2Ugb2YgbWlzcy11bmRlcnN0YW5kaW5nDQooZXNwZWNp
YWxseSwgbm9uLW5hdGl2ZSBFbmdsaXNoIHNwZWFrZXIgbGlrZSBtZS4pDQoNCkluIGFkZGl0aW9u
LCBuZXcgY29taW5nIGRldmVsb3BlciBpcyBzb21ldGltZXMgbmVydm91cyANCnRvIHBvc3QgbmV3
IG1haWwvcGF0Y2guIElmIHRoaXMgdGV4dCB3aWxsIGJlIGNoYW5nZWQgZm9yIG5ldyBjb21lciwg
DQp0aGVuIEkgdGhpbmsgdGhpcyB0ZXh0IHdpbGwgYmUgZ29vZCB0byBlbmNvdXJhZ2UgdGhlbS4N
ClNvLCBJIHRoaW5rIG1vcmUgcG9zaXRpdmUgZXhwcmVzc2lvbiBpcyBkZXNpcmFibGUuDQoNClRo
YW5rcywNCg0K
