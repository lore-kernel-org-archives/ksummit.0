Return-Path: <paolo.valente@linaro.org>
Content-Type: text/plain; charset=windows-1252
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Paolo Valente <paolo.valente@linaro.org>
In-Reply-To: <8adc094c-bf02-ecc3-67ac-7ffac3ef2491@sandisk.com>
Date: Wed, 21 Sep 2016 16:37:53 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <8953DCE7-F18B-4A31-BC05-6483204E2863@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<8adc094c-bf02-ecc3-67ac-7ffac3ef2491@sandisk.com>
To: Bart Van Assche <bart.vanassche@sandisk.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jens Axboe <axboe@fb.com>, hare@suse.de,
	Tejun Heo <tj@kernel.org>, osandov@osandov.com, hch@lst.de
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
	high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> Il giorno 21 set 2016, alle ore 16:30, Bart Van Assche =
<bart.vanassche@sandisk.com> ha scritto:
>=20
> On 09/16/16 00:55, Paolo Valente wrote:
>> Linux systems suffers from long-standing high-latency problems, at
>> system and application level, related to I/O.
>=20
> Hello Paolo,
>=20

Hi

> Are you aware of Jens' throttled background buffered writeback work? =
If not, can you repeat your measurements against a kernel on which these =
patches have been applied?

Already done (see below).

> See also http://www.spinics.net/lists/linux-fsdevel/msg101391.html.
>=20

A brief report of the outcome of my measurements is in this email of =
mine on the same thread:
http://www.spinics.net/lists/linux-fsdevel/msg101430.html

In short, application start-up time happened to be about the same with =
and without writeback throttling (actually slightly higher with =
throttling, for, e.g., gnome-terminal).

Thanks,
Paolo

> Thanks,
>=20
> Bart.
>=20
