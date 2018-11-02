Return-Path: <xemul@virtuozzo.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BB649BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Nov 2018 09:09:58 +0000 (UTC)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40100.outbound.protection.outlook.com [40.107.4.100])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE9414FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Nov 2018 09:09:56 +0000 (UTC)
From: Pavel Emelianov <xemul@virtuozzo.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Fri, 2 Nov 2018 09:09:53 +0000
Message-ID: <7cb5961b-6237-a259-9ca5-0cb95fbff9fe@virtuozzo.com>
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B1DA9EA9A760240987F3D5D0A4AD3A1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: Dmitry Safonov <dima@arista.com>, Peter Zijlstra <peterz@infradead.org>,
	Jeff Dike <jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>,
	John Stultz <john.stultz@linaro.org>, Andy Lutomirski <luto@kernel.org>,
	Cyrill Gorcunov <gorcunov@openvz.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Adrian Reber <adrian@lisas.de>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Multiple time domains
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

T24gMTEvMDEvMjAxOCAwNDoyMSBQTSwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOg0KPiBTb3JyeSBm
b3IgdGhlIGxhdGUgcHJvcG9zYWwsIGJ1dCB0aGlzIHBvcHBlZCB1cCByZWNlbnRseS4NCj4gDQo+
IFRoZSByZWNlbnQgZGlzY3Vzc2lvbiBvZiB0aGUgcHJvcG9zZWQgdGltZSBuYW1lIHNwYWNlcyBy
ZXN1bHRlZCBpbiBhIGxhcmdlcg0KPiByYW5nZSBvZiBxdWVzdGlvbnMgaG93IHRvIGhhbmRsZSB0
aGF0IGNvcnJlY3RseS4gQXNpZGUgb2YgdGhhdCB3ZSBoYXZlDQo+IG90aGVyIHJlcXVlc3RzIG9m
IHN1cHBvcnRpbmcgbXVsdGlwbGUgdGltZSBkb21haW5zIGZvciB2YXJpb3VzIHJlYXNvbnMsDQo+
IGUuZy4gVFNOIGZvbGtzIGluIGF1dG9tb3RpdmUgYW5kIGF1dG9tYXRpb24gdXNpbmcgZ3JhbmQg
Y2xvY2sgbWFzdGVycyB3aXRoDQo+IGEgY29tcGxldGVseSBzY3Jld2VkIHRpbWUgYmFzZS4NCj4g
DQo+IEFzIG1vc3Qgb2YgdGhlIHJlbGV2YW50IGRldmVsb3BlcnMgc2VlbSB0byBiZSBhdCBMUEMs
IEkgcHJvcG9zZSBhIHRlY2huaWNhbA0KPiBzZXNzaW9uIGRlZGljYXRlZCB0byBkaXNjdXNzIHRo
ZSBoYW5kbGluZyBvZiBtdWx0aXBsZSB0aW1lIGRvbWFpbnMuDQoNCkkgc3RpbGwgcGxhbiB0byBh
dHRlbmQgTFBDLCBzbyBJJ2xsIGJlIHRoZXJlLg0KDQotLSBQYXZlbA0K
