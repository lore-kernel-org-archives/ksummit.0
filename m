Return-Path: <paolo.valente@linaro.org>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Paolo Valente <paolo.valente@linaro.org>
In-Reply-To: <1474038939.2353.13.camel@HansenPartnership.com>
Date: Fri, 16 Sep 2016 20:48:53 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<1474038939.2353.13.camel@HansenPartnership.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>, osandov@osandov.com, hch@lst.de
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


> Il giorno 16 set 2016, alle ore 17:15, James Bottomley =
<James.Bottomley@HansenPartnership.com> ha scritto:
>=20
> On Fri, 2016-09-16 at 10:24 +0200, Greg KH wrote:
>> On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
>>> Linux systems suffers from long-standing high-latency problems, at
>>> system and application level, related to I/O.  For example, they
>>> usually suffer from poor responsiveness--or even starvation,=20
>>> depending on the workload--while, e.g., one or more files are being
>>> read/written/copied.  On a similar note, background workloads may
>>> cause audio/video playback/streaming to stutter, even with long=20
>>> gaps. A lot of test results on this problem can be found here [1]=20
>>> (I'm citing only this resource just because I'm familiar with it,=20
>>> but evidence can be found in countless technical reports,=20
>>> scientific papers, forum discussions, and so on).
>>=20
>> <snip>
>>=20
>> Isn't this a better topic for the Vault conference, or the storage=20
>> mini conference?
>=20
> LSF/MM would be the place to have the technical discussion, yes.  It
> will be in Cambridge (MA,USA not the real one) in the Feb/March time
> frame in 2017.  Far more of the storage experts (who likely want to
> weigh in) will be present.
>=20

Perfect venue.  Just it would be a pity IMO to waste the opportunity
of my being at KS with other people working on the components involved
in high-latency issues, and to delay by more months a discussion on
possible solutions.

> My understanding of the patch set is that you've only sent it as an =
RFC

Actually, in last submission the RFC tag was gone.

> and the main criticism was that it only applied to our legacy
> interface, not the new mq one.

Yes.  What puzzles me a little bit is that, over these years,
virtually no ack or objection concerned how relevant/irrelevant the
addressed latency problems are, or how effective/ineffective BFQ is in
solving them.

>  You sent out an RFD for ideas around mq
> in August, but the main criticism was that your ideas would introduce =
a
> contention point.

Yes, that criticism concerned one of my questions: I asked whether io
contexts or something like that could be used for I/O scheduling in
blk-mq.  Since I have just started thinking about possible solutions
to solve effectively latency issues in blk-mq, I'm trying to
understand on what ground they could be based.  Naively, I didn't
realize that io contexts, in their current incarnation, are just
unfeasible in a parallel framework.

>  Omar Sandoval is also working on something similar
> in mq, are you actually talking to him?
>=20

One of the purposes of my RFD was exactly to talk with somebody like
Omar.  He did reply providing very useful information.  As of now, my
interaction with Omar consists just in the exchange of emails in that
thread.  That exchange is currently stuck at my last email, sent about
three weeks ago, and containing some considerations and questions
about the information Omar provided me in his email.

Thanks,
Paolo

> James
>=20
>=20
