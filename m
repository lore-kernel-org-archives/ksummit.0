Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1474054593.2353.76.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Paolo Valente <paolo.valente@linaro.org>
Date: Fri, 16 Sep 2016 12:36:33 -0700
In-Reply-To: <C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<1474038939.2353.13.camel@HansenPartnership.com>
	<C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2016-09-16 at 20:48 +0200, Paolo Valente wrote:
> > Il giorno 16 set 2016, alle ore 17:15, James Bottomley <
> > James.Bottomley@HansenPartnership.com> ha scritto:
> > 
> > On Fri, 2016-09-16 at 10:24 +0200, Greg KH wrote:
> > > On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
> > > > Linux systems suffers from long-standing high-latency problems, 
> > > > at system and application level, related to I/O.  For example,
> > > > they usually suffer from poor responsiveness--or even 
> > > > starvation, depending on the workload--while, e.g., one or more 
> > > > files are being read/written/copied.  On a similar note, 
> > > > background workloads may cause audio/video playback/streaming 
> > > > to stutter, even with long gaps. A lot of test results on this 
> > > > problem can be found here [1] (I'm citing only this resource 
> > > > just because I'm familiar with it, but evidence can be found in 
> > > > countless technical reports, scientific papers, forum
> > > > discussions, and so on).
> > > 
> > > <snip>
> > > 
> > > Isn't this a better topic for the Vault conference, or the 
> > > storage mini conference?
> > 
> > LSF/MM would be the place to have the technical discussion, yes. 
> >  It will be in Cambridge (MA,USA not the real one) in the Feb/March
> > time frame in 2017.  Far more of the storage experts (who likely 
> > want to weigh in) will be present.
> > 
> 
> Perfect venue.  Just it would be a pity IMO to waste the opportunity
> of my being at KS with other people working on the components 
> involved in high-latency issues, and to delay by more months a 
> discussion on possible solutions.

OK, so the problem with a formal discussion of something like this at
KS is that of the 80 or so people in the room, likely only 10 have any
interest whatsoever, leading to intense boredom for the remaining 70. 
 And for those 10, there were likely another 10 who didn't get invited
who wanted the chance to express an opinion.  Realistically, this is
why we no-longer do technical discussions at KS: audience too broad and
not enough specific subject matter experts.

However, nothing says you can't have a discussion in the hallway if
you're already going.

> > My understanding of the patch set is that you've only sent it as an
> > RFC
> 
> Actually, in last submission the RFC tag was gone.
> 
> > and the main criticism was that it only applied to our legacy
> > interface, not the new mq one.
> 
> Yes.  What puzzles me a little bit is that, over these years,
> virtually no ack or objection concerned how relevant/irrelevant the
> addressed latency problems are, or how effective/ineffective BFQ is 
> in solving them.

Where have you been posting them for years?  I stay pretty close to
block issues, but the first time I actually noticed was when you posted
to linux-block on 1 Feb this year.

> >  You sent out an RFD for ideas around mq in August, but the main 
> > criticism was that your ideas would introduce a contention point.
> 
> Yes, that criticism concerned one of my questions: I asked whether io
> contexts or something like that could be used for I/O scheduling in
> blk-mq.  Since I have just started thinking about possible solutions
> to solve effectively latency issues in blk-mq, I'm trying to
> understand on what ground they could be based.  Naively, I didn't
> realize that io contexts, in their current incarnation, are just
> unfeasible in a parallel framework.

Well, I understand, but you're trying to get the attention of people
who believe nothing now is important except blk-mq ...  I'm afraid it
means you do need to understand and adapt to the new toy.

> >  Omar Sandoval is also working on something similar
> > in mq, are you actually talking to him?
> > 
> 
> One of the purposes of my RFD was exactly to talk with somebody like
> Omar.  He did reply providing very useful information.  As of now, my
> interaction with Omar consists just in the exchange of emails in that
> thread.  That exchange is currently stuck at my last email, sent 
> about three weeks ago, and containing some considerations and 
> questions about the information Omar provided me in his email.

My hazy recollection of Omar from the last LSF/MM is that he's quite a
recent FB developer and he's got quite a lot to do ... he may just need
reminding.

James
