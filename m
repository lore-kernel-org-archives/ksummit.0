Return-Path: <prvs=464e5a0c2=Bart.VanAssche@wdc.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B04ABBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:47:28 +0000 (UTC)
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC99E4CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 09:47:27 +0000 (UTC)
From: Bart Van Assche <Bart.VanAssche@wdc.com>
To: "tytso@mit.edu" <tytso@mit.edu>
Date: Wed, 25 Oct 2017 09:47:25 +0000
Message-ID: <1508924843.4165.6.camel@wdc.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5C9ECAE742E92E48A6B40292524BB5CA@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: "leonro@mellanox.com" <leonro@mellanox.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors to
 annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

SGVsbG8gVGVkLA0KDQpBcyB5b3UgbW9zdCBsaWtlbHkga25vdyBlbmRpYW5uZXNzIGFubm90YXRp
b25zIGxpa2UgX19iZTMyIGNhbiBiZSB2ZXJpZmllZA0KYnkgdGhlIHN0YXRpYyBzb3VyY2UgY29k
ZSBhbmFseXplciBjYWxsZWQgc3BhcnNlLiBUaGVzZSBhbm5vdGF0aW9ucyBhcmUgYQ0KYmlnIGhl
bHAgdG8gdmVyaWZ5IHdoZXRoZXIgZW5kaWFubmVzcyBjb252ZXJzaW9ucyBpbiBkcml2ZXJzIGFy
ZSBjb3JyZWN0DQooZS5nLiBiZTMyX3RvX2NwdSgpKS4gSG93ZXZlciwgbWFueSBkcml2ZXIgYXV0
aG9ycyBlaXRoZXIgYXJlIG5vdCBmYW1pbGlhcg0Kd2l0aCBzcGFyc2Ugb3IgZG8gbm90IHVzZSBp
dCB0byB2ZXJpZnkgdGhlaXIgd29yay4gSSB0aGluayB3ZSBuZWVkIGEgd2F5DQp0byBlbmNvdXJh
Z2UgZHJpdmVyIGF1dGhvcnMgdG8gcGF5IGF0dGVudGlvbiB0byBlbmRpYW5uZXNzIGFubm90YXRp
b25zLA0KZS5nLiBieSBsZXR0aW5nIHRoZSB6ZXJvLWRheSBrZXJuZWwgdGVzdCBpbmZyYXN0cnVj
dHVyZSB2ZXJpZnkgZW5kaWFubmVzcw0KYW5ub3RhdGlvbnMuIFBsZWFzZSBjb25zaWRlciB0byBh
ZGQgdGhpcyB0b3BpYyB0byB0aGUga2VybmVsIHN1bW1pdCBhZ2VuZGEuIA0KDQpUaGFua3MsDQoN
CkJhcnQu
