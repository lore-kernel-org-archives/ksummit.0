Return-Path: <prvs=835413cd26=jbacik@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7587A74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:38:40 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3E719152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:38:40 +0000 (UTC)
From: Josef Bacik <jbacik@fb.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Fri, 30 Jun 2017 18:37:59 +0000
Message-ID: <658A3F80-5E48-4EC4-A591-E3783AD3DADC@fb.com>
References: <20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
	<20170629221245.489760b1@gandalf.local.home>
	<CA+55aFxFLvX62SyOC9qyVwEQXH8J224Fe03tvy624AUx0U2fRQ@mail.gmail.com>
	<20170630025852.xjoif3aai6rny5a2@ast-mbp>
	<20170629230251.02f380cb@gandalf.local.home>
	<6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
	<20170630142956.7e0cb2d6@gandalf.local.home>
	<20170630143030.305b68a0@gandalf.local.home>
In-Reply-To: <20170630143030.305b68a0@gandalf.local.home>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <77FF1E04EE85C74A8FAEAFE8BB05C81C@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>, bristot <bristot@redhat.com>,
	Julien Desfossez <jdesfossez@efficios.com>,
	Ingo Molnar <mingo@kernel.org>, daolivei <daolivei@redhat.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing
 ABI quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

DQpbIEkgZm9yZ290IHRvIGFkZCBUb20gdG8gdGhlIENjIGxpc3QuIFNlbmRpbmcgYWdhaW4uIF0N
Cg0KT24gRnJpLCAzMCBKdW4gMjAxNyAxNDoyOTo1NiAtMDQwMA0KU3RldmVuIFJvc3RlZHQgPHJv
c3RlZHRAZ29vZG1pcy5vcmc+IHdyb3RlOg0KDQo+IE9uIEZyaSwgMzAgSnVuIDIwMTcgMTg6MjQ6
MTIgKzAwMDANCj4gSm9zZWYgQmFjaWsgPGpiYWNpa0BmYi5jb20+IHdyb3RlOg0KPiANCj4gPiBZ
dXAgSeKAmWxsIHN0YXJ0IGJ1Z2dpbmcgcGVvcGxlIHRvIHN1Ym1pdCB0YWxrIHByb3Bvc2Fscywg
c3RhcnRpbmcgd2l0aCB5b3UhICBJ4oCZbGwgcHV0IHVwIG15IHByb3Bvc2FsIGluIHRoZSBuZXh0
IGRheSBvciB0d28sIEkgdGhpbmsgQnJlbmRhbiBoYXMgc29tZXRoaW5nIGhl4oCZcyBnb2luZyB0
byB0YWxrIGFib3V0LiAgVGhhbmtzLCAgDQo+IA0KPiBJIHNob3VsZG4ndCBoYXZlIHVzZWQgdGhl
IHRlcm0gInRhbGsiLCBhcyBpdCByZWFsbHkgaXMgYWxsIGFib3V0DQo+IGRpc2N1c3Npb25zLiBJ
biBmYWN0LCBpZiB5b3UgbmVlZCBtb3JlIHRoYW4gb25lIHNsaWRlLCB5b3UgaGF2ZSB0b28NCj4g
bWFueS4NCj4gDQo+IFRoYXQgc2FpZCwgSSBjb3VsZCBwcm9iYWJseSBjb21lIHVwIHdpdGggYSBm
ZXcgdGhpbmdzLCBzdGFydGluZyB3aXRoDQo+IHRoaXMgdHJhY2UgZXZlbnQgaXNzdWUuIEJ1dCBp
dCB3aWxsIGJlIHBvaW50bGVzcyBpZiBQZXRlciBaaWpsc3RyYSBhbmQNCj4gTWF0aGlldSBhcmUg
bm90IHRoZXJlLg0KPiANCj4gQnV0IGhhdmluZyBpZGVhcyBhYm91dCBkeW5hbWljIGZpZWxkcyBp
biB0cmFjZXBvaW50cyBpcyBhbHdheXMNCj4gaW50ZXJlc3RpbmcuIE5vdCB0byBtZW50aW9uIHRh
bGtpbmcgYWJvdXQgVG9tIFphbnVzc2kncyBsYXRlc3QNCj4gaGlzdG9ncmFtIHdvcmsuIEl0IG1h
eSBiZSBwcmV0dHkgbXVjaCBjb21wbGV0ZWQsIGJ1dCBJIHdvdWxkIGxpa2UgdG8NCj4gZGlzY3Vz
cyB3aGVyZSB3ZSBnbyBmcm9tIHRoZXJlLg0KPiANCj4gT25lIGxhc3QgdGhpbmcuIEkgZG9uJ3Qg
d2FudCB0byBoYXZlIHRvbyBtYW55IHJlc3BvbnNpYmlsaXRpZXMsIGFzIEknbQ0KPiBvbiB0aGUg
TFBDIHByb2dyYW0gY29tbWl0dGVlIGFuZCBJIG5lZWQgdG8gbWFrZSBzdXJlIEkgaGF2ZSB0aW1l
IHRvDQo+IGZ1bGZpbGwgYW55IGFjdGlvbiBpdGVtcyBJJ20gcmVzcG9uc2libGUgZm9yIGR1cmlu
ZyB0aGUgY29uZmVyZW5jZS4NCj4gDQoNClllYWggcGx1bWJlcnMgaXMgYSB3ZWlyZCB2ZW51ZSBm
b3IgdHJhY2luZywgSSBhbHdheXMgaG9wZSB0aGF0IHdlIGFyZSBnb2luZyB0byBoYXZlIHBlb3Bs
ZSBsaWtlIEJyZW5kYW4gb3Igb3RoZXIgc3lzYWRtaW4teSBwZW9wbGUgc2hvdyB1cCBhbmQgc2F5
IOKAnHRoaXMgaXMgd2hhdCBzdWNrcyBhYm91dCB0cmFjaW5nLCBwbGVhc2UgZml4IGl04oCdLCBh
bmQgdGhlbiB3ZSBjYW4gZ28gZml4IGl0LiAgSXQgZG9lc27igJl0IHJlYWxseSBzZWVtIHRvIGhh
cHBlbiB0aGF0IHdheSB0aG8sIGFuZCBmb3IgdGhpbmdzIGxpa2UgdHJhY2luZyBBQkkgdGhlcmUg
anVzdCBhcmVu4oCZdCB0aGUgcmlnaHQgcGVvcGxlIGluIHRoZSByb29tIHRvIGhhdmUgdGhhdCBr
aW5kIG9mIGRpc2N1c3Npb24uICBNeSBwcm9wb3NhbCB3YXMganVzdCBnb2luZyB0byBiZSBhIGxh
dW5kcnkgbGlzdCBvZiB0aGluZ3MgdGhhdCB3b3VsZCBtYWtlIG15IGxpZmUgZWFzaWVyLCBidXQg
aXQgZG9lc27igJl0IHJlYWxseSB3YXJyYW50IGEgZnVsbCBtaWNyby1jb25mZXJlbmNlIHRvIGxp
c3RlbiB0byBtZSBiaXRjaCBmb3IgYW4gaG91ci4gIElmIGl0IHR1cm5zIG91dCBub2JvZHkgZWxz
ZSBoYXMgbXVjaCB0byB0YWxrIGFib3V0IHRoZW4gd2UgY2FuIGp1c3QgZGVjbGFyZSB0cmFjaW5n
IGlzIGZlYXR1cmUgY29tcGxldGUgYW5kIHdlIGNhbiB0YWxrIGFib3V0IHNvbWV0aGluZyBlbHNl
IDspLiAgVGhhbmtzLA0KDQpKb3NlZg0KDQoNCg0K
