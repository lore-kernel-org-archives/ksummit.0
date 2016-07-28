Return-Path: <Tim.Bird@am.sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC1352C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:33:34 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0098.outbound.protection.outlook.com
	[104.47.37.98])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 134E31EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:33:34 +0000 (UTC)
From: "Bird, Timothy" <Tim.Bird@am.sony.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Thu, 28 Jul 2016 21:33:29 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF053BB5A7@USCULXMSG02.am.sony.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<7hk2gr7wjq.fsf@baylibre.com> <4917794.pdgKrtIJtY@avalon>
In-Reply-To: <4917794.pdgKrtIJtY@avalon>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbToga3N1bW1pdC1kaXNjdXNz
LWJvdW5jZXNAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZyBbbWFpbHRvOmtzdW1taXQtDQo+IGRp
c2N1c3MtYm91bmNlc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnXSBPbiBCZWhhbGYgT2YgTGF1
cmVudCBQaW5jaGFydA0KPiBTZW50OiBUaHVyc2RheSwgSnVseSAyOCwgMjAxNiAyOjA5IFBNDQo+
IFRvOiBrc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZw0KPiBDYzogSmFt
ZXMgQm90dG9tbGV5IDxKYW1lcy5Cb3R0b21sZXlAaGFuc2VucGFydG5lcnNoaXAuY29tPjsgVHJv
bmQNCj4gTXlrbGVidXN0IDx0cm9uZG15QHByaW1hcnlkYXRhLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtLc3VtbWl0LWRpc2N1c3NdIFtDT1JFIFRPUElDXSBrZXJuZWwgdW5pdCB0ZXN0aW5nDQo+IA0K
PiBPbiBNb25kYXkgMTEgSnVsIDIwMTYgMTM6MjQ6MjUgS2V2aW4gSGlsbWFuIHdyb3RlOg0KPiA+
IFRyb25kIE15a2xlYnVzdCA8dHJvbmRteUBwcmltYXJ5ZGF0YS5jb20+IHdyaXRlczoNCj4gPiA+
IFNvLCB3ZSBtaWdodCBhcyB3ZWxsIG1ha2UgdGhpcyBhIGZvcm1hbCBwcm9wb3NhbC4NCj4gPiA+
DQo+ID4gPiBJ4oCZZCBsaWtlIHRvIHByb3Bvc2UgdGhhdCB3ZSBoYXZlIGEgZGlzY3Vzc2lvbiBh
cm91bmQgaG93IHRvIG1ha2UgaXQNCj4gPiA+IGVhc2llciB0byBpbXBsZW1lbnQga2VybmVsIHVu
aXQgdGVzdHMuIEnigJl2ZSBjby1vcHRlZCBEYW4gYXMgaGUgaGFzDQo+ID4gPiBleHByZXNzZWQg
Ym90aCBhbiBpbnRlcmVzdCBhbmQgaGFuZHMtb24gZXhwZXJpZW5jZS4gOi0pDQo+ID4NCj4gPiBD
b3VudCBtZSBpbi4NCj4gPg0KPiA+IEknbSB3b3JraW5nIG9uIHRoZSBrZXJuZWxjaS5vcmcgcHJv
amVjdCwgd2hlcmUgd2UncmUgdGVzdGluZw0KPiA+IG1haW5saW5lL25leHQvc3RhYmxlLXJjL3N0
YWJsZSBldGMuIG9uIHJlYWwgaGFyZHdhcmUgKH4yMDAgdW5pcXVlIGJvYXJkcw0KPiA+IGFjcm9z
cyB+MzAgdW5pcXVlIFNvQyBmYW1pbGllczogYXJtLCBhcm02NCwgeDg2LikNCj4gPg0KPiA+IFJp
Z2h0IG5vdywgd2UncmUgbWFpbmx5IGRvaW5nIGJhc2ljIGJvb3QgdGVzdHMsIGJ1dCBhcmUgc3Rh
cnRpbmcgdG8gcnVuDQo+ID4ga3NlbGZ0ZXN0cyBvbiBhbGwgdGhlc2UgcGxhdGZvcm1zIGFzIHdl
bGwuDQo+IA0KPiBXb3VsZCB5b3UgYmUgaW50ZXJlc3RlZCBpbiBydW5uaW5nIG90aGVyIHRlc3Qg
c3VpdGVzIGFzIHdlbGwgKGZvciBpbnN0YW5jZQ0KPiBodHRwOi8vZ2l0LmlkZWFzb25ib2FyZC5j
b20vcmVuZXNhcy92c3AtdGVzdHMuZ2l0KSA/IElmIHNvIHdlIG5lZWQgdG8gZGVjaWRlDQo+IG9u
IGFuIGludGVyZmFjZSBmb3IgdGVzdCBzdWl0ZXMgdG8gbWFrZSBpdCBlYXN5IGZvciB5b3UgdG8g
aW50ZWdyYXRlIHRoZW0gaW4NCj4geW91ciB0ZXN0IGZhcm0uDQoNCkknbSBpbnRlcmVzdGVkIGlu
IGludGVncmF0aW5nIG1vcmUgdGVzdCBzdWl0ZXMgYXMgcGFydCBvZiB0aGUgRnVlZ28gWzFdIHBy
b2plY3QuDQpUaGlzIHByb2plY3QgcHJvdmlkZXMgYSB0ZXN0IGZyYW1ld29yayBmb3IgdGhlIExU
U0kgcHJvamVjdCBhbmQgdGhlIEFHTCBwcm9qZWN0DQppbiB0aGUgTGludXggRm91bmRhdGlvbiwg
YnV0IHdlJ3JlIGFsd2F5cyBsb29raW5nIGZvciBtb3JlIHRlc3RzLiAgV2UgYXJlIHN0aWxsLA0K
YWRtaXR0ZWRseSwgc3RpbGwgaW4gb3VyIGVhcmx5IGRheXMsIGJ1dCBJJ2QgYmUgaW50ZXJlc3Rl
ZCBpbiBkaXNjdXNzaW5nIHRoZSByZXF1aXJlbWVudHMNCmZvciB0aGVzZSB0ZXN0cy4NCg0KWzFd
IGh0dHA6Ly9iaXJkLm9yZy9mdWVnby9Gcm9udFBhZ2UuDQo=
