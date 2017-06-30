Return-Path: <prvs=835413cd26=jbacik@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81DC3710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:24:58 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1481152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 18:24:57 +0000 (UTC)
From: Josef Bacik <jbacik@fb.com>
To: Steven Rostedt <rostedt@goodmis.org>, Alexei Starovoitov
	<alexei.starovoitov@gmail.com>
Date: Fri, 30 Jun 2017 18:24:12 +0000
Message-ID: <6AE378F0-42F7-45DE-9F3C-050A5019A1E8@fb.com>
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
In-Reply-To: <20170629230251.02f380cb@gandalf.local.home>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <E1EA811F1118EA4BA2240DE3B9C02219@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
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

T24gNi8yOS8xNywgMTE6MDIgUE0sICJTdGV2ZW4gUm9zdGVkdCIgPHJvc3RlZHRAZ29vZG1pcy5v
cmc+IHdyb3RlOg0KDQpPbiBUaHUsIDI5IEp1biAyMDE3IDE5OjU4OjU0IC0wNzAwDQpBbGV4ZWkg
U3Rhcm92b2l0b3YgPGFsZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOg0KDQoNCj4g
QWxzbyBJJ20gbm90IHBsYW5uaW5nIHRvIGZseSB0byBQcmFndWUganVzdCBmb3IgdHJhY2luZyBk
aXNjdXNzaW9uLg0KPiBUaGVyZSBpcyBuZXRkZXYyLjIgcmlnaHQgYWZ0ZXIgaW4gU2VvdWwuDQo+
IEFuZCB0cmFjaW5nIG1pY3JvY29uZiBhdCBwbHVtYmVycyBpbiBTZXB0ZW1iZXIgd2hpY2ggaXMg
aW1vIGJldHRlcg0KPiBzdWl0ZWQgdG8gZGlzY3VzcyB0cmFjaW5nIHJlbGF0ZWQgdG9waWNzLg0K
DQpXaGljaCByZW1pbmRzIG1lLiBUaGUgTFBDIFRyYWNpbmcgTWljcm9jb25mIFdJS0kgaGFzIGJl
ZW4gc3RhbGUsIGFuZCBub3QNCm1vdmluZyBhdCBhbGwuIElmIGl0IGlzIHRvIGJlIGFjY2VwdGVk
LCBpdCBuZWVkcyBzb21lIHRhbGsgcHJvcG9zYWxzLA0KYW5kIGZhc3QhDQoNCll1cCBJ4oCZbGwg
c3RhcnQgYnVnZ2luZyBwZW9wbGUgdG8gc3VibWl0IHRhbGsgcHJvcG9zYWxzLCBzdGFydGluZyB3
aXRoIHlvdSEgIEnigJlsbCBwdXQgdXAgbXkgcHJvcG9zYWwgaW4gdGhlIG5leHQgZGF5IG9yIHR3
bywgSSB0aGluayBCcmVuZGFuIGhhcyBzb21ldGhpbmcgaGXigJlzIGdvaW5nIHRvIHRhbGsgYWJv
dXQuICBUaGFua3MsDQoNCkpvc2VmDQoNCg==
