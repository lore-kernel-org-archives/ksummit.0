Return-Path: <paolo.valente@linaro.org>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Paolo Valente <paolo.valente@linaro.org>
In-Reply-To: <1474054593.2353.76.camel@HansenPartnership.com>
Date: Fri, 16 Sep 2016 22:13:44 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <7979CF12-3A19-43F0-90AE-C4264B67FC77@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<1474038939.2353.13.camel@HansenPartnership.com>
	<C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
	<1474054593.2353.76.camel@HansenPartnership.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>, osandov@osandov.com,
	Christoph Hellwig <hch@lst.de>
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


> Il giorno 16 set 2016, alle ore 21:36, James Bottomley =
<James.Bottomley@HansenPartnership.com> ha scritto:
>=20
> On Fri, 2016-09-16 at 20:48 +0200, Paolo Valente wrote:
>>> Il giorno 16 set 2016, alle ore 17:15, James Bottomley <
>>> James.Bottomley@HansenPartnership.com> ha scritto:
>>>=20
>>> On Fri, 2016-09-16 at 10:24 +0200, Greg KH wrote:
>>>> On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
>>>>> Linux systems suffers from long-standing high-latency problems,=20
>>>>> at system and application level, related to I/O.  For example,
>>>>> they usually suffer from poor responsiveness--or even=20
>>>>> starvation, depending on the workload--while, e.g., one or more=20
>>>>> files are being read/written/copied.  On a similar note,=20
>>>>> background workloads may cause audio/video playback/streaming=20
>>>>> to stutter, even with long gaps. A lot of test results on this=20
>>>>> problem can be found here [1] (I'm citing only this resource=20
>>>>> just because I'm familiar with it, but evidence can be found in=20
>>>>> countless technical reports, scientific papers, forum
>>>>> discussions, and so on).
>>>>=20
>>>> <snip>
>>>>=20
>>>> Isn't this a better topic for the Vault conference, or the=20
>>>> storage mini conference?
>>>=20
>>> LSF/MM would be the place to have the technical discussion, yes.=20
>>> It will be in Cambridge (MA,USA not the real one) in the Feb/March
>>> time frame in 2017.  Far more of the storage experts (who likely=20
>>> want to weigh in) will be present.
>>>=20
>>=20
>> Perfect venue.  Just it would be a pity IMO to waste the opportunity
>> of my being at KS with other people working on the components=20
>> involved in high-latency issues, and to delay by more months a=20
>> discussion on possible solutions.
>=20
> OK, so the problem with a formal discussion of something like this at
> KS is that of the 80 or so people in the room, likely only 10 have any
> interest whatsoever, leading to intense boredom for the remaining 70.

No no, that would be scary to me, given the level of the audience!  I
thought it would have been possible to arrange some sort of
sub-discussions with limited groups (although maybe the fact the Linux
still suffers from high latencies might somehow worry all people that
care about the kernel).  I'm sorry, but this will be my first time at =
KS.

> =20
> And for those 10, there were likely another 10 who didn't get invited
> who wanted the chance to express an opinion.  Realistically, this is
> why we no-longer do technical discussions at KS: audience too broad =
and
> not enough specific subject matter experts.
>=20
> However, nothing says you can't have a discussion in the hallway if
> you're already going.
>=20

Which may be enough to raise more awareness.

>>> My understanding of the patch set is that you've only sent it as an
>>> RFC
>>=20
>> Actually, in last submission the RFC tag was gone.
>>=20
>>> and the main criticism was that it only applied to our legacy
>>> interface, not the new mq one.
>>=20
>> Yes.  What puzzles me a little bit is that, over these years,
>> virtually no ack or objection concerned how relevant/irrelevant the
>> addressed latency problems are, or how effective/ineffective BFQ is=20=

>> in solving them.
>=20
> Where have you been posting them for years?  I stay pretty close to
> block issues, but the first time I actually noticed was when you =
posted
> to linux-block on 1 Feb this year.
>=20

I forgot all BFQ submissions too :)
(please have a look at the last link in the following list)

After a little search, here are the very first ones:
https://lkml.org/lkml/2008/4/1/234
https://lkml.org/lkml/2008/11/11/148

Then the first one with the new version of BFQ:
https://lkml.org/lkml/2014/5/27/314

After a few other rounds in the last two years, the last one
(which you already saw according to your summary):
https://lkml.org/lkml/2016/8/8/207

And, maybe even more relevant, a very short feedback highlighting that
the problem seems to be still alive, well and serious:
https://lkml.org/lkml/2016/9/9/154

>>> You sent out an RFD for ideas around mq in August, but the main=20
>>> criticism was that your ideas would introduce a contention point.
>>=20
>> Yes, that criticism concerned one of my questions: I asked whether io
>> contexts or something like that could be used for I/O scheduling in
>> blk-mq.  Since I have just started thinking about possible solutions
>> to solve effectively latency issues in blk-mq, I'm trying to
>> understand on what ground they could be based.  Naively, I didn't
>> realize that io contexts, in their current incarnation, are just
>> unfeasible in a parallel framework.
>=20
> Well, I understand, but you're trying to get the attention of people
> who believe nothing now is important except blk-mq ...  I'm afraid it
> means you do need to understand and adapt to the new toy.
>=20

I did notice it ...  And we are trying to find a good way to retrofit
strong low-latency guarantees in blk-mq too.

Anyway, a concrete problem is that, if I'm not completely mistaken,
there is a huge number of users and sysadmins that could already enjoy
much better Linux systems, while waiting for the transition to blk-mq
to be completed.

>>> Omar Sandoval is also working on something similar
>>> in mq, are you actually talking to him?
>>>=20
>>=20
>> One of the purposes of my RFD was exactly to talk with somebody like
>> Omar.  He did reply providing very useful information.  As of now, my
>> interaction with Omar consists just in the exchange of emails in that
>> thread.  That exchange is currently stuck at my last email, sent=20
>> about three weeks ago, and containing some considerations and=20
>> questions about the information Omar provided me in his email.
>=20
> My hazy recollection of Omar from the last LSF/MM is that he's quite a
> recent FB developer and he's got quite a lot to do ... he may just =
need
> reminding.
>=20

Then I will follow your advise.

Thank you very much,
Paolo

> James
